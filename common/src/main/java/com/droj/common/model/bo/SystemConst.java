package com.droj.common.model.bo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class SystemConst {
    private final int MAX_DATA = 128;
    private final int EXPECTED_BUFFER_DATA = 1024;
    private final int IS_DELETE_FLG = 1;
    private final int IS_UNDELETE_FLG = 0;
    private final int IS_ADMINISTRATOR = 1;
}