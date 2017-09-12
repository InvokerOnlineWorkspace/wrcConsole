package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcAirrouteFeeDetail;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcAirrouteFeeDetailMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcAirrouteFeeDetail record);

    int insertSelective(WrcAirrouteFeeDetail record);

    WrcAirrouteFeeDetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcAirrouteFeeDetail record);

    int updateByPrimaryKey(WrcAirrouteFeeDetail record);
}