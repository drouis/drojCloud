package com.droj.uc.controller.resources;

import com.droj.common.model.bo.CommonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO 火商户云系统资源管理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
@RestController
@RequestMapping("/re")
@Api(tags = {"火商户云系统资源管理", "ums:resouse:group"})
public class ResouseDetailHandler {

    /**
     * 修改资源信息
     *
     * @return
     */
    @ApiOperation("修改资源信息")
    @PostMapping(value = "/editResouser")
    @ResponseBody
    public CommonResult editResouser() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 批量删除资源信息
     *
     * @return
     */
    @ApiOperation("批量删除资源信息")
    @PostMapping(value = "/batchDelResouser")
    @ResponseBody
    public CommonResult batchDelResouser() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 修改资源启用状态
     *
     * @return
     */
    @ApiOperation("修改资源隐藏状态")
    @PostMapping(value = "/editHidden")
    @ResponseBody
    public CommonResult editResouserHidden() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }
}
