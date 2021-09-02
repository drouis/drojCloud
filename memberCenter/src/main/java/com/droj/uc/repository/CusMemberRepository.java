package com.droj.uc.repository;

import com.droj.mbg.model.uc.UmsMember;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Mapper
public interface CusMemberRepository {

    List<UmsMember> fetchMembersByKeywords(@Param("keyword") String keyword);

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    int batchDelMember(@Param("ids") List<Long> ids, @Param("activeStatus") Integer activeStatus);


    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    int editMemberActiveStatus(@Param("ids") List<Long> ids, @Param("activeStatus") Integer activeStatus);

}
