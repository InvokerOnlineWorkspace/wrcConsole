package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcDestinationInfoDao;
import com.wanerchuan.dao.generation.WrcDestinationInfoMapper;
import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcDestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by zzh on 2017/8/29.
 */
@Service
public class WrcDestinationServiceImpl implements WrcDestinationService {

    @Autowired
    WrcDestinationInfoMapper wrcDestinationInfoMapper;
    @Autowired
    WrcDestinationInfoDao wrcDestinationInfoDao;

    public List<WrcDestinationInfo> getDestinationList(Map<String, Object> map) {
        return null;
    }

    public List<WrcDestinationInfo> getAllDestList() {
        return this.wrcDestinationInfoDao.getAllDestList();
    }

    public WrcDestinationInfo getDestinaInfo(String id) {
        return this.wrcDestinationInfoMapper.selectByPrimaryKey(id);
    }

    public int saveDestInfo(WrcDestinationInfo destInfo) {
        return this.wrcDestinationInfoMapper.insertSelective(destInfo);
    }

    public int editDestInfoById(WrcDestinationInfo destInfo) {
        return this.wrcDestinationInfoMapper.updateByPrimaryKey(destInfo);
    }

    public int delDestInfoById(String id) {
        return this.wrcDestinationInfoMapper.deleteByPrimaryKey(id);
    }
}
