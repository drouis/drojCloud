package com.droj.mbg.mapper.uc;

import com.droj.mbg.model.uc.UmsRoleResourcesRelation;
import com.droj.mbg.model.uc.UmsRoleResourcesRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UmsRoleResourcesRelationMapper {
    long countByExample(UmsRoleResourcesRelationExample example);

    int deleteByExample(UmsRoleResourcesRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsRoleResourcesRelation record);

    int insertSelective(UmsRoleResourcesRelation record);

    List<UmsRoleResourcesRelation> selectByExample(UmsRoleResourcesRelationExample example);

    UmsRoleResourcesRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsRoleResourcesRelation record, @Param("example") UmsRoleResourcesRelationExample example);

    int updateByExample(@Param("record") UmsRoleResourcesRelation record, @Param("example") UmsRoleResourcesRelationExample example);

    int updateByPrimaryKeySelective(UmsRoleResourcesRelation record);

    int updateByPrimaryKey(UmsRoleResourcesRelation record);
}