package com.wanerchuan.service.impl;

import com.wanerchuan.commons.constants.WrcConstants;
import com.wanerchuan.dao.defined.WrcBoatInfoDao;
import com.wanerchuan.dao.generation.WrcBoatInfoMapper;
import com.wanerchuan.domain.generation.WrcBoatInfo;
import com.wanerchuan.service.WrcBoatInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.List;

/**
 * Created by zzh on 2017/9/4.
 */
@Service
public class WrcBoatInfoServiceImpl implements WrcBoatInfoService {

    @Autowired
    WrcBoatInfoMapper wrcBoatInfoMapper;
    @Autowired
    WrcBoatInfoDao wrcBoatInfoDao;

    public List<WrcBoatInfo> queryALLBoatInfoList() {return this.wrcBoatInfoDao.queryALLBoatInfoList();}

    public int queryBoatCountNum() {
        return wrcBoatInfoDao.queryBoatCountNum();
    }

    public WrcBoatInfo queryBoatInfoById(String boatId) {
        return this.wrcBoatInfoMapper.selectByPrimaryKey(boatId);
    }

    public int updateBoatInfoById(WrcBoatInfo wrcBoatInfo) {
        return this.wrcBoatInfoMapper.updateByPrimaryKeySelective(wrcBoatInfo);
    }

    public int saveBoatInfo(WrcBoatInfo wrcBoatInfo) {
        long time =  Calendar.getInstance().getTimeInMillis();
        wrcBoatInfo.setId(WrcConstants.WRC_BOAT+time);
        return this.wrcBoatInfoMapper.insert(wrcBoatInfo);
    }


}
