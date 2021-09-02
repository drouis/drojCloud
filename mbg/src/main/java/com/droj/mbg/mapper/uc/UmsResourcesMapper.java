package com.droj.mbg.mapper.uc;

import com.droj.mbg.model.uc.UmsResources;
import com.droj.mbg.model.uc.UmsResourcesExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UmsResourcesMapper {
    long countByExample(UmsResourcesExample example);

    int deleteByExample(UmsResourcesExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsResources record);

    int insertSelective(UmsResources record);

    List<UmsResources> selectByExample(UmsResourcesExample example);

    UmsResources selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsResources record, @Param("example") UmsResourcesExample example);

    int updateByExample(@Param("record") UmsResources record, @Param("example") UmsResourcesExample example);

    int updateByPrimaryKeySelective(UmsResources record);

    int updateByPrimaryKey(UmsResources record);
}