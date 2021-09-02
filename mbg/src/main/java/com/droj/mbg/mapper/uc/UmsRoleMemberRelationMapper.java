package com.droj.mbg.mapper.uc;

import com.droj.mbg.model.uc.UmsRoleMemberRelation;
import com.droj.mbg.model.uc.UmsRoleMemberRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UmsRoleMemberRelationMapper {
    long countByExample(UmsRoleMemberRelationExample example);

    int deleteByExample(UmsRoleMemberRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsRoleMemberRelation record);

    int insertSelective(UmsRoleMemberRelation record);

    List<UmsRoleMemberRelation> selectByExample(UmsRoleMemberRelationExample example);

    UmsRoleMemberRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsRoleMemberRelation record, @Param("example") UmsRoleMemberRelationExample example);

    int updateByExample(@Param("record") UmsRoleMemberRelation record, @Param("example") UmsRoleMemberRelationExample example);

    int updateByPrimaryKeySelective(UmsRoleMemberRelation record);

    int updateByPrimaryKey(UmsRoleMemberRelation record);
}