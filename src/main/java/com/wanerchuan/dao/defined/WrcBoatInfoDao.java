package com.wanerchuan.dao.defined;

import com.wanerchuan.domain.generation.WrcBoatInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzh on 2017/9/4.
 */
@Repository
public interface WrcBoatInfoDao {

    List<WrcBoatInfo> queryALLBoatInfoList();

    int queryBoatCountNum();

}
