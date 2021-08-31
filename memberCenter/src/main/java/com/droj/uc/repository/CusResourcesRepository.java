package com.droj.uc.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Mapper
public interface CusResourcesRepository {

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    int batchDelResouse(@Param("ids") List<Long> ids, @Param("hidden") Integer hidden);


    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    int editResouseHiddenStatus(@Param("ids") List<Long> ids, @Param("hidden") Integer hidden);

}
