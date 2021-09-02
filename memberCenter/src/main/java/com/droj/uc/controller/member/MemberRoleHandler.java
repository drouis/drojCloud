package com.droj.uc.controller.member;

import com.droj.common.model.bo.CommonResult;
import com.droj.uc.config.pop.DrojPop;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO 火商户云系统用户角色管理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技术有限公司
 */
@RestController
@RequestMapping("/m")
@Api(tags = {"火商户云系统用户角色管理", "ums:memgroup:role"})
public class MemberRoleHandler {

    /**
     * 火商户云系统用户角色查询
     *
     * @return
     */
    @ApiOperation("火商户云系统用户角色查询")
    @GetMapping(value = "/fetchMemberRoleConn")
    @ResponseBody
    public CommonResult fetchMemberRoleConn() {
        return CommonResult.success(null, pop.getStrIndexWelcome());
    }

    /**
     * 火商户云系统用户角色查询
     *
     * @return
     */
    @ApiOperation("火商户云系统用户角色查询")
    @GetMapping(value = "/edit/MemberRoleConn")
    @ResponseBody
    public CommonResult editMemberRoleConn() {
        return CommonResult.success(null, pop.getStrIndexWelcome());
    }

    DrojPop pop;
}
