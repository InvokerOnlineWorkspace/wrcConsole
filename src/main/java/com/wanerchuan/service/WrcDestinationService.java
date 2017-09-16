package com.wanerchuan.service;

import com.wanerchuan.domain.generation.WrcDestinationInfo;

import java.util.List;
import java.util.Map;

/**
 * Created by zzh on 2017/8/29.
 */
public interface WrcDestinationService {

    /**
     * 获取目的地列表
     * */
    List<WrcDestinationInfo> getDestinationList(Map<String,Object> map);

    /**
     * 获取全部目的地信息
     * */
    List<WrcDestinationInfo> getAllDestList();

    /**
     * 获取目的地信息
     * */
    WrcDestinationInfo getDestinaInfo(String id);

    int saveDestInfo(WrcDestinationInfo destInfo);

    int editDestInfoById(WrcDestinationInfo destInfo);

    int delDestInfoById(String id);
}
