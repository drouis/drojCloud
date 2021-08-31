package com.droj.common.util;

import cn.hutool.core.util.ObjectUtil;

public class PhoneUitl {
    public static String hiddenPhone(String _oldPhone) {
        if (ObjectUtil.isNotEmpty(_oldPhone) && _oldPhone.length() > 5) {
            String _repl_str = _oldPhone.substring(_oldPhone.length() / 2 - 2, _oldPhone.length() / 2 + 2);
            return _oldPhone.replaceAll(_repl_str, makeRepStr(_repl_str.length(), "*"));
        }
        return "";
    }

    private static String makeRepStr(int count, String repl_stag) {
        String _r = "";
        int i = 0;
        while (i < count) {
            _r = _r + repl_stag;
            i++;
        }
        return _r;
    }

    public static void main(String[] args) {
        System.out.println(hiddenPhone("18611977534"));
    }
}
