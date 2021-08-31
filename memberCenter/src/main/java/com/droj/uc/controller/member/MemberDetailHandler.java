package com.droj.uc.controller.member;

import com.droj.common.model.bo.CommonResult;
import com.droj.common.util.MD5Util;
import com.droj.uc.service.IMemberService;
import com.droj.uc.vo.MemberParam;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

/**
 * TODO 火商户云系统用户管理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技术有限公司
 */
@Slf4j
@RestController
@RequestMapping("/m/edit")
@Api(tags = {"火商户云系统用户管理", "ums:mem:group"})
public class MemberDetailHandler {

    /**
     * 登录用户修改信息
     *
     * @return
     */
    @ApiOperation("登录用户修改信息")
    @PostMapping(value = "/editMember")
    @ResponseBody
    public CommonResult editMember(@RequestBody MemberParam param) {
        try {
            service.saveMember(param.getId(), param);
        } catch (Exception e) {
            log.error(e.getCause().getMessage());
        }
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }
//

    /**
     * 登录用户修改密码
     *
     * @return
     */
    @ApiOperation("登录用户修改密码")
    @PostMapping(value = "/editPwd")
    @ResponseBody
    public CommonResult editPwd(@RequestBody EditPwdParam param) {
        if (StringUtils.isEmpty(param.getNPwd()))
            return CommonResult.warn("请输入新密码");
        if (StringUtils.isEmpty(param.getPwd()))
            return CommonResult.warn("请输入新密码");
        if (MD5Util.MD5(param.getPwd()).equals(MD5Util.MD5(param.getNPwd())))
            return CommonResult.warn("两次输入的密码不一致,请重新输入");
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    @Data
    class EditPwdParam {
        String pwd;
        String nPwd;
    }

    @Autowired
    IMemberService service;
}
