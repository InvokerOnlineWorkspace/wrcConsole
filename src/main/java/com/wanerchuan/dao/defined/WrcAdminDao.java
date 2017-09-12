package com.wanerchuan.dao.defined;

import com.wanerchuan.domain.generation.WrcAdmin;
import org.springframework.stereotype.Repository;

/**
 * Created by zzh on 2017/9/13.
 */
@Repository
public interface WrcAdminDao {

    WrcAdmin findUserByLoginName(String LoginName);
}
