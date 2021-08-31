package com.droj.uc.controller.member;

import com.droj.common.model.bo.CommonPage;
import com.droj.common.model.bo.CommonResult;
import com.droj.uc.service.IMemberService;
import com.droj.uc.vo.MemberVo;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
@RequestMapping("/m")
@Api(tags = {"火商户云系统用户管理", "ums:mem:group"})
public class MemberHandler {

    /**
     * 用户信息模块首页
     *
     * @return
     */
    @ApiOperation("用户信息模块首页")
    @GetMapping(value = "/index")
    @ResponseBody
    public CommonResult index() {
        return CommonResult.success(null, "Welcome to 火商云 INDEX");
    }

    /**
     * 用户信息基础查询
     *
     * @param keyword
     * @param pageSize
     * @param pageNum
     * @return
     */
    @ApiOperation("用户信息基础查询")
    @GetMapping(value = "/fetch")
    @ResponseBody
    public CommonResult<CommonPage> fetch(
            @RequestParam(value = "keyword", required = false) String keyword,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum
    ) {
        PageInfo page = service.fetch(pageNum, pageSize, keyword, 1);
        return CommonResult.success(CommonPage.restPage(page), "Welcome to 火商云 INDEX");
    }

    /**
     * 指定用户信息查询
     *
     * @param id
     * @return
     */
    @ApiOperation("指定用户信息查询")
    @GetMapping(value = "/info/{id}")
    @ResponseBody
    public CommonResult info(@PathVariable Long id) {
        return CommonResult.success(service.info(id), "Welcome to 火商云 INDEX");
    }

    @Autowired
    IMemberService service;
}
