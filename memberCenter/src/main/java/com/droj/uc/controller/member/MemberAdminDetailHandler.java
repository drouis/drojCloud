package com.droj.uc.controller.member;

import com.droj.common.model.bo.CommonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO 火商户云系统用户管理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
@RestController
@RequestMapping("/m/ad/edit")
@Api(tags = {"火商户云系统用户管理", "ums:mem:group"})
public class MemberAdminDetailHandler {

    /**
     * 管理员修改用户信息
     *
     * @return
     */
    @ApiOperation("管理员修改用户信息")
    @PostMapping(value = "/editMember")
    @ResponseBody
    public CommonResult adEditMember() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 管理员批量删除用户信息
     *
     * @return
     */
    @ApiOperation("管理员批量删除用户信息")
    @PostMapping(value = "/batchDelMember")
    @ResponseBody
    public CommonResult adBatchDelMember() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 管理员修改用户启用状态
     *
     * @return
     */
    @ApiOperation("管理员修改用户启用状态")
    @PostMapping(value = "/editActive")
    @ResponseBody
    public CommonResult adEditMemberActive() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 登录用户修改密码
     *
     * @return
     */
    @ApiOperation("管理员初始化用户密码")
    @PostMapping(value = "/initPwd")
    @ResponseBody
    public CommonResult initPwd() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }
}
