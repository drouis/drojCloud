package com.droj.uc.controller.role;

import com.droj.common.model.bo.CommonPage;
import com.droj.common.model.bo.CommonResult;
import com.droj.uc.config.pop.DrojPop;
import com.droj.uc.service.IRolerService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
public class RoleHandler {

    @Autowired
    IRolerService service;
    DrojPop pop = new DrojPop();

    /**
     * 用户信息模块首页
     *
     * @return
     */
    @ApiOperation("角色信息模块首页")
    @GetMapping(value = "/index")
    @ResponseBody
    public CommonResult index() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 角色信息基础查询
     *
     * @param keyword
     * @param pageSize
     * @param pageNum
     * @return
     */
    @ApiOperation("角色信息列表查询")
    @GetMapping(value = "/fetch")
    @ResponseBody
    public CommonResult<CommonPage> fetch(
            @RequestParam(value = "keyword", required = false) String keyword,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum
    ) {
        PageInfo page = service.fetch(pageNum, pageSize, keyword, 1);
        return CommonResult.success(CommonPage.restPage(page), DrojPop.getStrIndexWelcome());
    }

    /**
     * 指定角色信息查询
     *
     * @param id
     * @return
     */
    @ApiOperation("指定角色信息查询")
    @GetMapping(value = "/info/{id}")
    @ResponseBody
    public CommonResult info(@PathVariable Long id) {
        return CommonResult.success(service.info(id), DrojPop.getStrIndexWelcome());
    }
}
