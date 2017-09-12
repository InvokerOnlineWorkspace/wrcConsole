package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcPic;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcPicMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcPic record);

    int insertSelective(WrcPic record);

    WrcPic selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcPic record);

    int updateByPrimaryKey(WrcPic record);
}