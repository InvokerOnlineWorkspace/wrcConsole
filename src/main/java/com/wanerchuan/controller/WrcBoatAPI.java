package com.wanerchuan.controller;

import com.wanerchuan.domain.generation.WrcBoatInfo;
import com.wanerchuan.service.WrcBoatInfoService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zzh on 2017/8/28.
 * 信息管理-帆船信息
 */
@Controller
@RequestMapping("/boat")
public class WrcBoatAPI {

    private Logger logger = LoggerFactory.getLogger(WrcBoatAPI.class);

    WrcBoatInfo wrcBoatInfo = null;
    int num = 0;
    @Autowired
    WrcBoatInfoService wrcBoatInfoService;

    /**
     * 帆船列表
     * */
    @RequestMapping("/List")
    public ModelAndView toBoatList(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        int totalNum=wrcBoatInfoService.queryBoatCountNum();//总记录数
        List<WrcBoatInfo> boatInfoList = wrcBoatInfoService.queryALLBoatInfoList();
        mav.setViewName("boatList");
        mav.addObject("totalNum",totalNum);
        mav.addObject("boatInfoList",boatInfoList);
        return mav;
    }
    /**
     * 帆船信息
     * */
    @RequestMapping("/Info")
    public ModelAndView toBoatInfo(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("boatInfo");
        return mav;
    }

    /**
     * 新增/修改
     * */
    @RequestMapping("/modify")
    @ResponseBody
    public Map<String,Object> modifyBoatInfo(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        String id = request.getParameter("id");
        try {

            wrcBoatInfo = wrcBoatInfoService.queryBoatInfoById(id);
            if(StringUtils.isNoneEmpty(id) && wrcBoatInfo!=null){
                num = wrcBoatInfoService.updateBoatInfoById(wrcBoatInfo);
            }else{
                num = wrcBoatInfoService.saveBoatInfo(wrcBoatInfo);
            }
        }catch (Exception e){
            logger.debug(e.getMessage());
            return null;
        }
        if(num==1){
            resultMap.put("returnCode","success");
        }else{
            resultMap.put("returnCode","error");
        }
        return  resultMap;
    }

    /**
     * 校验命名重复
     * */
}
