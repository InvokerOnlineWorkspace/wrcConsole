package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcAirrouteInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcAirrouteInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcAirrouteInfo record);

    int insertSelective(WrcAirrouteInfo record);

    WrcAirrouteInfo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcAirrouteInfo record);

    int updateByPrimaryKey(WrcAirrouteInfo record);
}