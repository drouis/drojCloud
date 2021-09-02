package com.droj.uc.controller.role;

import com.droj.common.model.bo.CommonResult;
import com.droj.uc.config.pop.DrojPop;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO 火商户云系统角色管理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
@RestController
@RequestMapping("/r")
@Api(tags = {"火商户云系统角色管理", "ums:group:role"})
public class RoleDetailHandler {

    /**
     * 修改角色信息
     *
     * @return
     */
    @ApiOperation("修改角色信息")
    @PostMapping(value = "/editRoler")
    @ResponseBody
    public CommonResult editRoler() {
        return CommonResult.success(null, DrojPop.getStrIndexWelcome());
    }

    /**
     * 批量删除角色信息
     *
     * @return
     */
    @ApiOperation("批量删除角色信息")
    @PostMapping(value = "/batchDelRoler")
    @ResponseBody
    public CommonResult batchDelRoler() {
        return CommonResult.success(null, DrojPop.getStrIndexWelcome());
    }

    /**
     * 修改角色启用状态
     *
     * @return
     */
    @ApiOperation("修改角色启用状态")
    @PostMapping(value = "/editActive")
    @ResponseBody
    public CommonResult editRolerActive() {
        return CommonResult.success(null, DrojPop.getStrIndexWelcome());
    }

    DrojPop pop = new DrojPop();
}
