package com.wanerchuan.dao.generation;

import com.wanerchuan.domain.generation.WrcAdmin;
import com.wanerchuan.domain.generation.WrcAdminExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WrcAdminMapper {
    long countByExample(WrcAdminExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WrcAdmin record);

    int insertSelective(WrcAdmin record);

    List<WrcAdmin> selectByExample(WrcAdminExample example);

    WrcAdmin selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WrcAdmin record, @Param("example") WrcAdminExample example);

    int updateByExample(@Param("record") WrcAdmin record, @Param("example") WrcAdminExample example);

    int updateByPrimaryKeySelective(WrcAdmin record);

    int updateByPrimaryKey(WrcAdmin record);
}