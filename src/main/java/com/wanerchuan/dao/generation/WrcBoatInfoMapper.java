package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcBoatInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcBoatInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcBoatInfo record);

    int insertSelective(WrcBoatInfo record);

    WrcBoatInfo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcBoatInfo record);

    int updateByPrimaryKey(WrcBoatInfo record);
}