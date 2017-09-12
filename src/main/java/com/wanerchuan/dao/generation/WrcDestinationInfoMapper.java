package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcDestinationInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcDestinationInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcDestinationInfo record);

    int insertSelective(WrcDestinationInfo record);

    WrcDestinationInfo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcDestinationInfo record);

    int updateByPrimaryKey(WrcDestinationInfo record);
}