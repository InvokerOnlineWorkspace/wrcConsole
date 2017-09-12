package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcAdminDao;
import com.wanerchuan.domain.generation.WrcAdmin;
import com.wanerchuan.service.WrcAdminService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by zzh on 2017/9/12.
 */
public class WrcAdminServiceImpl implements WrcAdminService {

    @Autowired
    WrcAdminDao wrcAdminDao;


    public WrcAdmin findUserByLoginName(String username) {
        return this.wrcAdminDao.findUserByLoginName(username);
    }
}
