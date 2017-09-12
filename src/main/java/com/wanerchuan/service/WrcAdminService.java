package com.wanerchuan.service;

import com.wanerchuan.domain.generation.WrcAdmin;

/**
 * Created by zzh on 2017/9/12.
 */
public interface WrcAdminService {

    WrcAdmin findUserByLoginName(String username);
}
