package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcAlbum;
import org.springframework.stereotype.Repository;

@Repository
public interface WrcAlbumMapper {
    int deleteByPrimaryKey(String id);

    int insert(WrcAlbum record);

    int insertSelective(WrcAlbum record);

    WrcAlbum selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WrcAlbum record);

    int updateByPrimaryKey(WrcAlbum record);
}