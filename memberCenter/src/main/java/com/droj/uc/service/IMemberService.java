package com.droj.uc.service;

import com.droj.uc.vo.MemberParam;
import com.droj.uc.vo.MemberVo;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * TODO 火商户云系统用户管理业务处理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
public interface IMemberService {
    /**
     * 查询系统内可使用用户
     *
     * @param pageNum
     * @param pageSize
     * @param keyword
     * @return
     */
    PageInfo fetch(Integer pageNum, Integer pageSize, String keyword, Integer activeStatus);

    /**
     * 获取指定用户数据
     *
     * @param id
     * @return
     */
    MemberVo info(Long id);
    /**
     * 获取指定用户数据
     * 业务ID获取用户数据
     *
     * @param uSid
     * @return
     */
    MemberVo infoBySid(String uSid);

    /**
     * 保存系统用户数据
     *
     * @param id
     * @param param
     * @return
     */
    int saveMember(Long id, MemberParam param);

    /**
     * 批量删除用户数据
     * TODO 伪删除处理
     *
     * @param ids
     * @return
     */
    int batchDelMember(List<Long> ids);

    /**
     * 批量设定用户启用状态
     *
     * @param ids
     * @param actives
     * @return
     */
    int editMemberActiveStatus(List<Long> ids, Integer actives);

    /***
     * 登录用户/系统管理员修改用户的登录密码
     * @param keyword （登陆用户的SID/用户列表的用户ID）
     * @param pwd
     * @return
     */
    int editMemberPwdBySidOrUserName(String keyword, Long uid, String pwd);
}
