package com.wanerchuan.controller;

import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcDestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by zzh on 2017/8/28.
 * 信息管理-目的地
 */
@Controller
public class WrcDestinationAPI {

    @Autowired
    private WrcDestinationService wrcDestinationService;

    /**
     * 目的地列表
     * */
    @RequestMapping("destinationList")
    public ModelAndView toDestinationList(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        Map<String,Object> paramMap = new HashMap<String, Object>();
        List<WrcDestinationInfo> destinationList = wrcDestinationService.getDestinationList(paramMap);

        mav.setViewName("destinationList");
        return mav;
    }
    /**
     * 目的地详情 新增/修改/删除
     * */
    @RequestMapping("destinationInfo")
    public ModelAndView toDestinationInfo(HttpServletRequest request){
        String id = request.getParameter("id");
        ModelAndView mav = new ModelAndView();
        WrcDestinationInfo destinationInfo = wrcDestinationService.getDestinaInfo(id);
        mav.setViewName("destinationInfo");
        return mav;
    }


}
