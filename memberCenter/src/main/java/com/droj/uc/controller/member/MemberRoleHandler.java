package com.droj.uc.controller.member;

import com.droj.common.model.bo.CommonResult;
import com.droj.uc.config.pop.DrojPop;
import com.droj.uc.service.IMemberRoleService;
import com.droj.uc.service.IMemberService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
@Api(tags = {"火商户云系统用户角色管理", "ums:group:memRole"})
public class MemberRoleHandler {

    @Autowired
    IMemberRoleService memberRoleService;
    @Autowired
    IMemberService mService;
    DrojPop pop = new DrojPop();

    /**
     * 用户角色查询
     *
     * @return
     */
    @ApiOperation("用户角色查询")
    @GetMapping(value = "/fetchMemberRoleConn")
    @ResponseBody
    public CommonResult fetchMemberRoleConn(@RequestParam(value = "sid") String uSid) {
        return CommonResult.success(memberRoleService.fetchMemberRoleConn(uSid),
                DrojPop.getStrIndexWelcome());
    }

    /**
     * 用户角色编辑
     *
     * @return
     */
    @ApiOperation("用户角色编辑")
    @PostMapping(value = "/edit/MemberRoleConn")
    @ResponseBody
    public CommonResult editMemberRoleConn(@RequestBody MemberRoleParam param) {
        return CommonResult.success(memberRoleService.editMemberRoleConn(param.getUId(), param.getRoleIds()), DrojPop.getStrIndexWelcome());
    }

    @Getter
    @Setter
    @ApiModel("用户角色参数")
    public static class MemberRoleParam {
        @ApiModelProperty("用户ID")
        Integer uId;
        @ApiModelProperty("绑定的角色列表")
        List<Integer> roleIds;
    }
}
