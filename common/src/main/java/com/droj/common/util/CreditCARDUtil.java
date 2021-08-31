package com.droj.common.util;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.List;
import java.util.Stack;
import java.util.Vector;

public final class CreditCARDUtil implements Serializable, Comparable<CreditCARDUtil>, Cloneable {
    public final static long serialVersionUID = -8100510331328784120L;
    private long mostSigBits;
    private long leastSigBits;
    private transient volatile long timestamp = -1L;
    private transient int hashCode = -1;
    private static volatile SecureRandom numberGenerator = null;
    private static final char[] bits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w'};
    private String _32 = null;

    private CreditCARDUtil(byte[] data) {
        long msb = 0L;
        long lsb = 0L;

        assert data.length == 16;

        int i;
        for (i = 0; i < 8; ++i)
        {
            msb = msb << 8 | (long) (data[i] & 255);
        }

        for (i = 8; i < 16; ++i)
        {
            lsb = lsb << 8 | (long) (data[i] & 255);
        }

        this.mostSigBits = msb;
        this.leastSigBits = lsb;
    }

    public CreditCARDUtil(long mostSigBits, long leastSigBits) {
        this.mostSigBits = mostSigBits;
        this.leastSigBits = leastSigBits;
    }

    public static CreditCARDUtil create() {
        return randomUUID();
    }

    public static CreditCARDUtil randomUUID() {
        SecureRandom ng = numberGenerator;
        if (ng == null)
        {
            numberGenerator = ng = new SecureRandom();
        }

        byte[] randomBytes = new byte[16];
        ng.nextBytes( randomBytes );
        randomBytes[6] = (byte) (randomBytes[6] & 15);
        randomBytes[6] = (byte) (randomBytes[6] | 64);
        randomBytes[8] = (byte) (randomBytes[8] & 63);
        randomBytes[8] = (byte) (randomBytes[8] | 128);
        return new CreditCARDUtil( randomBytes );
    }

    public static CreditCARDUtil nameUUIDFromBytes(byte[] name) {
        MessageDigest md;
        try
        {
            md = MessageDigest.getInstance( "MD5" );
        }
        catch (NoSuchAlgorithmException var3)
        {
            throw new InternalError( "MD5 not supported" );
        }

        byte[] md5Bytes = md.digest( name );
        md5Bytes[6] = (byte) (md5Bytes[6] & 15);
        md5Bytes[6] = (byte) (md5Bytes[6] | 48);
        md5Bytes[8] = (byte) (md5Bytes[8] & 63);
        md5Bytes[8] = (byte) (md5Bytes[8] | 128);
        return new CreditCARDUtil( md5Bytes );
    }

    public static CreditCARDUtil fromString(String name) {
        String[] components = name.split( "-" );
        if (components.length != 5)
        {
            throw new IllegalArgumentException( "Invalid UUIDUtil string: " + name );
        }
        else
        {
            for (int mostSigBits = 0; mostSigBits < 5; ++mostSigBits)
            {
                components[mostSigBits] = "0x" + components[mostSigBits];
            }

            long var6 = Long.decode( components[0] ).longValue();
            var6 <<= 16;
            var6 |= Long.decode( components[1] ).longValue();
            var6 <<= 16;
            var6 |= Long.decode( components[2] ).longValue();
            long leastSigBits = Long.decode( components[3] ).longValue();
            leastSigBits <<= 48;
            leastSigBits |= Long.decode( components[4] ).longValue();
            return new CreditCARDUtil( var6, leastSigBits );
        }
    }

    public long getLeastSignificantBits() {
        return this.leastSigBits;
    }

    public long getMostSignificantBits() {
        return this.mostSigBits;
    }

    public int version() {
        return (int) (this.mostSigBits >> 12) & 15;
    }

    public int variant() {
        return this.leastSigBits >>> 63 == 0L ? 0 : (this.leastSigBits >>> 62 == 2L ? 2 : (int) (this.leastSigBits >>> 61));
    }

    public long timestamp() {
        if (this.version() != 1)
        {
            throw new UnsupportedOperationException( "Not a time-based UUIDUtil" );
        }
        else
        {
            long result = this.timestamp;
            if (result < 0L)
            {
                result = (this.mostSigBits & 4095L) << 48;
                result |= (this.mostSigBits >> 16 & 65535L) << 32;
                result |= this.mostSigBits >>> 32;
                this.timestamp = result;
            }

            return result;
        }
    }

    public int clockSequence() {
        if (this.version() != 1)
        {
            throw new UnsupportedOperationException( "Not a time-based UUIDUtil" );
        }
        else
        {
            return (int) ((this.leastSigBits & 4611404543450677248L) >>> 48);
        }
    }

    public long node() {
        if (this.version() != 1)
        {
            throw new UnsupportedOperationException( "Not a time-based UUIDUtil" );
        }
        else
        {
            return this.leastSigBits & 281474976710655L;
        }
    }

    public String toString() {
        return this.to32String();
    }

    private String to32String() {
        if (this._32 == null)
        {
            this._32 = convert32( this.mostSigBits >> 24 );
            this._32 = this._32 + convert32( this.leastSigBits >> 24 );
        }

        return this._32;
    }

    private static String convert32(long num) {
        char[] chars = new char[8];

        for (int i = 0; i < 8; ++i)
        {
            chars[i] = bits[(int) (num & 31L)];
            num >>= 5;
        }

        return new String( chars );
    }

    private static String digits(long val, int digits) {
        long hi = 1L << digits * 4;
        return Long.toHexString( hi | val & hi - 1L ).substring( 1 );
    }

    public int hashCode() {
        if (this.hashCode == -1)
        {
            this.hashCode = (int) (this.mostSigBits >> 32 ^ this.mostSigBits ^ this.leastSigBits >> 32 ^ this.leastSigBits);
        }

        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CreditCARDUtil))
        {
            return false;
        }
        else
        {
            CreditCARDUtil id = (CreditCARDUtil) obj;
            return this.mostSigBits == id.mostSigBits && this.leastSigBits == id.leastSigBits;
        }
    }

    public int compareTo(CreditCARDUtil val) {
        return this.mostSigBits < val.mostSigBits ? -1 : (this.mostSigBits > val.mostSigBits ? 1 : (this.leastSigBits < val.leastSigBits ? -1 : (this.leastSigBits > val.leastSigBits ? 1 : 0)));
    }

    public byte[] toByteArray() {
        byte[] array = new byte[16];
        toBytes( this.mostSigBits, array, 0 );
        toBytes( this.leastSigBits, array, 8 );
        return array;
    }

    private static void toBytes(long x, byte[] array, int startPos) {
        int bytePos = 8;

        while (true)
        {
            --bytePos;
            if (bytePos < 0)
            {
                return;
            }

            array[startPos + bytePos] = (byte) ((int) (x & 255L));
            x >>>= 8;
        }
    }

    public void write(DataOutput out) throws IOException {
        out.writeLong( this.mostSigBits );
        out.writeLong( this.leastSigBits );
    }

    public static CreditCARDUtil read(DataInput in) throws IOException {
        long mostSigBits = in.readLong();
        long leastSigBits = in.readLong();
        return new CreditCARDUtil( mostSigBits, leastSigBits );
    }

    public Object clone() {
        try
        {
            CreditCARDUtil e = (CreditCARDUtil) super.clone();
            e.mostSigBits = this.mostSigBits;
            e.leastSigBits = this.leastSigBits;
            return e;
        }
        catch (CloneNotSupportedException var2)
        {
            throw new InternalError();
        }
    }

    public static final String[] VISA_PREFIX_LIST = new String[]{"4539",
            "4556", "4916", "4532", "4929", "40240071", "4485", "4716", "4"};

    public static final String[] MASTERCARD_PREFIX_LIST = new String[]{"51",
            "52", "53", "54", "55"};

    public static final String[] AMEX_PREFIX_LIST = new String[]{"34", "37"};

    public static final String[] DISCOVER_PREFIX_LIST = new String[]{"6011"};

    public static final String[] DINERS_PREFIX_LIST = new String[]{"300",
            "301", "302", "303", "36", "38"};

    public static final String[] ENROUTE_PREFIX_LIST = new String[]{"2014",
            "2149"};

    public static final String[] JCB_PREFIX_LIST = new String[]{"35"};

    public static final String[] VOYAGER_PREFIX_LIST = new String[]{"8699"};

    static String strrev(String str) {
        if (str == null)
        {
            return "";
        }
        String revstr = "";
        for (int i = str.length() - 1; i >= 0; i--)
        {
            revstr += str.charAt( i );
        }

        return revstr;
    }

    /*
     * 'prefix' is the start of the CC number as a string, any number of digits.
     * 'length' is the length of the CC number to generate. Typically 13 or 16
     */
    static String completed_number(String prefix, int length) {
        String ccnumber = prefix;
        // generate digits
        while (ccnumber.length() < (length - 1))
        {
            ccnumber += new Double( Math.floor( Math.random() * 10 ) ).intValue();
        }
        // reverse number and convert to int
        String reversedCCnumberString = strrev( ccnumber );
        List reversedCCnumberList = new Vector();
        for (int i = 0; i < reversedCCnumberString.length(); i++)
        {
            reversedCCnumberList.add( new Integer( String
                    .valueOf( reversedCCnumberString.charAt( i ) ) ) );
        }
        // calculate sum
        int sum = 0;
        int pos = 0;
        Integer[] reversedCCnumber = (Integer[]) reversedCCnumberList.toArray( new Integer[reversedCCnumberList.size()] );
        while (pos < length - 1)
        {

            int odd = reversedCCnumber[pos] * 2;
            if (odd > 9)
            {
                odd -= 9;
            }

            sum += odd;

            if (pos != (length - 2))
            {
                sum += reversedCCnumber[pos + 1];
            }
            pos += 2;
        }

        // calculate check digit

        int checkdigit = new Double(
                ((Math.floor( sum / 10 ) + 1) * 10 - sum) % 10 ).intValue();
        ccnumber += checkdigit;

        return ccnumber;

    }

    public static String[] credit_card_number(String[] prefixList, int length,
                                              int howMany) {
        Stack result = new Stack();
        for (int i = 0; i < howMany; i++)
        {
            int randomArrayIndex = (int) Math.floor( Math.random()
                    * prefixList.length );
            String ccnumber = prefixList[randomArrayIndex];
            result.push( completed_number( ccnumber, length ) );
        }

        return (String[]) result.toArray( new String[result.size()] );
    }

    public static String[] generateMasterCardNumbers(int howMany) {
        return credit_card_number( MASTERCARD_PREFIX_LIST, 16, howMany );
    }

    public static String generateMasterCardNumber() {
        return credit_card_number( MASTERCARD_PREFIX_LIST, 16, 1 )[0];
    }

    public static boolean isValidCreditCardNumber(String creditCardNumber) {
        boolean isValid = false;
        try
        {
            String reversedNumber = new StringBuffer( creditCardNumber )
                    .reverse().toString();
            int mod10Count = 0;
            for (int i = 0; i < reversedNumber.length(); i++)
            {
                int augend = Integer.parseInt( String.valueOf( reversedNumber
                        .charAt( i ) ) );
                if (((i + 1) % 2) == 0)
                {
                    String productString = String.valueOf( augend * 2 );
                    augend = 0;
                    for (int j = 0; j < productString.length(); j++)
                    {
                        augend += Integer.parseInt( String.valueOf( productString
                                .charAt( j ) ) );
                    }
                }
                mod10Count += augend;
            }
            if ((mod10Count % 10) == 0)
            {
                isValid = true;
            }
        }
        catch (NumberFormatException e)
        {
        }
        return isValid;
    }

    public static String randomBankNum() {
        int howMany = 0;
        String arg = "1";//写几就是出来几个不同的卡号
        try
        {
            howMany = Integer.parseInt( arg );
        }
        catch (Exception e)
        {
            System.err.println( "Usage error. You need to supply a numeric argument (ex: 500000)" );
        }
        String[] creditcardnumbers = generateMasterCardNumbers( howMany );
        String bandcard_NO = "";
        for (int i = 0; i < creditcardnumbers.length; i++)
        {
            bandcard_NO = creditcardnumbers[i];
        }

        return bandcard_NO;
    }
}
