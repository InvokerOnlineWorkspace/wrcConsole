package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcAirrouteFeatureDetail;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcAirrouteFeatureDetailMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcAirrouteFeatureDetail record);

    int insertSelective(WrcAirrouteFeatureDetail record);

    WrcAirrouteFeatureDetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcAirrouteFeatureDetail record);

    int updateByPrimaryKey(WrcAirrouteFeatureDetail record);
}