package com.wanerchuan.service.impl;

import com.wanerchuan.dao.generation.WrcDestinationInfoMapper;
import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcDestinationService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Created by zzh on 2017/8/29.
 */
public class WrcDestinationServiceImpl implements WrcDestinationService {

    @Autowired
    WrcDestinationInfoMapper wrcDestinationInfoMapper;

    public List<WrcDestinationInfo> getDestinationList(Map<String, Object> map) {
        return null;
    }

    public WrcDestinationInfo getDestinaInfo(String id) {
        return this.wrcDestinationInfoMapper.selectByPrimaryKey(id);
    }
}
