package com.wanerchuan.service;

import com.wanerchuan.domain.generation.WrcBoatInfo;

import java.util.List;

/**
 * Created by zzh on 2017/9/4.
 */
public interface WrcBoatInfoService {

    /**
     * 获取所有船列表
     * */
    List<WrcBoatInfo> queryALLBoatInfoList();


    /**
     * 获取船记录数
     * */
    int queryBoatCountNum();

    /**
     * 根据id获取船信息
     * */
    WrcBoatInfo queryBoatInfoById(String boatId);

    int updateBoatInfoById(WrcBoatInfo wrcBoatInfo);

    int saveBoatInfo(WrcBoatInfo wrcBoatInfo);

    int delBoatInfoById(String id);

}
