package com.droj.mbg.mapper.uc;

import com.droj.mbg.model.uc.UmsMemberInfo;
import com.droj.mbg.model.uc.UmsMemberInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UmsMemberInfoMapper {
    long countByExample(UmsMemberInfoExample example);

    int deleteByExample(UmsMemberInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberInfo record);

    int insertSelective(UmsMemberInfo record);

    List<UmsMemberInfo> selectByExample(UmsMemberInfoExample example);

    UmsMemberInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsMemberInfo record, @Param("example") UmsMemberInfoExample example);

    int updateByExample(@Param("record") UmsMemberInfo record, @Param("example") UmsMemberInfoExample example);

    int updateByPrimaryKeySelective(UmsMemberInfo record);

    int updateByPrimaryKey(UmsMemberInfo record);
}