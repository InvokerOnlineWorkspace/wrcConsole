package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcAdminDao;
import com.wanerchuan.domain.generation.WrcAdmin;
import com.wanerchuan.service.WrcAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zzh on 2017/9/12.
 */
@Service
public class WrcAdminServiceImpl implements WrcAdminService {

    @Autowired
    WrcAdminDao wrcAdminDao;

    public WrcAdmin findUserByLoginName(String username) {
        return this.wrcAdminDao.findUserByLoginName(username);
    }
}
