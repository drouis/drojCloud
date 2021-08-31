package com.droj.uc.service;

import com.droj.uc.vo.ResouseParam;
import com.droj.uc.vo.ResouseVo;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * TODO 火商户云系统资源管理业务处理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
public interface IResourcesService {

    /**
     * 查询系统内可使用资源
     *
     * @param pageNum
     * @param pageSize
     * @param keyword
     * @param hiddenStatus
     * @return
     */
    PageInfo fetch(Integer pageNum, Integer pageSize, String keyword, Integer hiddenStatus);

    /**
     * 获取指定资源数据
     *
     * @param id
     * @return
     */
    ResouseVo info(Long id);

    /**
     * 保存系统资源数据
     *
     * @param id
     * @param param
     * @return
     */
    int saveResouse(Long id, ResouseParam param);

    /**
     * 批量删除资源数据
     * TODO 伪删除处理
     *
     * @param ids
     * @return
     */
    int batchDelResouse(List<Long> ids);

    /**
     * 批量设定系统资源显示状态
     *
     * @param ids
     * @param hiddens
     * @return
     */
    int editResouseHiddenStatus(List<Long> ids, Integer hiddens);
}
