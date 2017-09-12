package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcAirrouteFlowDetail;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcAirrouteFlowDetailMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcAirrouteFlowDetail record);

    int insertSelective(WrcAirrouteFlowDetail record);

    WrcAirrouteFlowDetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcAirrouteFlowDetail record);

    int updateByPrimaryKey(WrcAirrouteFlowDetail record);
}