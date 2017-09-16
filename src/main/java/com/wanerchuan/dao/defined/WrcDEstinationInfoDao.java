package com.wanerchuan.dao.defined;

import com.wanerchuan.domain.generation.WrcDestinationInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzh on 2017/9/15.
 */
@Repository
public interface WrcDestinationInfoDao {

    List<WrcDestinationInfo> getAllDestList();
}
