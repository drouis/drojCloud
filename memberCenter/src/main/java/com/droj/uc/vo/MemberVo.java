package com.droj.uc.vo;

import com.droj.mbg.model.uc.UmsMember;
import io.swagger.annotations.ApiModel;
import lombok.Data;

@Data
@ApiModel(value = "系统用户对象")
public class MemberVo extends UmsMember {
    String strCreateTime;
    String strStatus;
    String strIsAdministration;
}
