package com.wanerchuan.controller;

import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcDestinationService;
import org.apache.commons.lang3.StringUtils;
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
@RequestMapping("/dest")
public class WrcDestinationAPI {

    @Autowired
    private WrcDestinationService wrcDestinationService;

    private int num = 0;
    /**
     * 目的地列表
     * */
    @RequestMapping("/List")
    public ModelAndView toDestinationList(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        Map<String,Object> paramMap = new HashMap<String, Object>();
        List<WrcDestinationInfo> destinationList = wrcDestinationService.getDestinationList(paramMap);
        mav.setViewName("destinationList");
        mav.addObject("destinationList",destinationList);
        return mav;
    }
    /**
     * 目的地详情 新增/修改/删除
     * */
    @RequestMapping("/Info")
    public ModelAndView toDestinationInfo(HttpServletRequest request){
        String id = request.getParameter("id");
        ModelAndView mav = new ModelAndView();
        WrcDestinationInfo destinationInfo = wrcDestinationService.getDestinaInfo(id);
        mav.setViewName("destinationInfo");
        mav.addObject("destInfo",destinationInfo);
        return mav;
    }

    /**
     * 新增
     * */
    @RequestMapping("/add")
    public Map<String,Object> toSaveDestInfo(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        WrcDestinationInfo destInfo = new WrcDestinationInfo();
        try{
            num = wrcDestinationService.saveDestInfo(destInfo);
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("reCode",0);
            resultMap.put("msg","serviceError");
        }
        if(num==1){
            resultMap.put("reCode",1);
            resultMap.put("returnCode","success");
        }else{
            resultMap.put("reCode",2);
            resultMap.put("returnCode","error");
        }
        return  resultMap;
    }
    /**
     * 修改
     * */
    @RequestMapping("/edit")
    public Map<String,Object> toEditDestInf(HttpServletRequest request){

        Map<String,Object> resultMap = new HashMap<String, Object>();
        String id = request.getParameter("id");
        try{
            WrcDestinationInfo destInfo = wrcDestinationService.getDestinaInfo(id);
            if(StringUtils.isNotEmpty(id)||destInfo!=null){
                num = wrcDestinationService.editDestInfoById(destInfo);
            }else{
                throw new Exception();
            }
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("reCode",0);
            resultMap.put("msg","serviceError");
        }
        if(num==1){
            resultMap.put("reCode",1);
            resultMap.put("returnCode","success");
        }else{
            resultMap.put("reCode",2);
            resultMap.put("returnCode","error");
        }
        return  resultMap;
    }
    /**
     * 删除
     * */
    @RequestMapping("/del")
    public Map<String,Object> toDelDestInf(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        String id = request.getParameter("id");
        try{
            WrcDestinationInfo destInfo = wrcDestinationService.getDestinaInfo(id);
            if(StringUtils.isNotEmpty(id)||destInfo!=null){
                num = wrcDestinationService.delDestInfoById(id);
            }else {
                throw new Exception();
            }
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("reCode",0);
            resultMap.put("msg","serviceError");
        }
        if(num==1){
            resultMap.put("reCode",1);
            resultMap.put("returnCode","success");
        }else{
            resultMap.put("reCode",2);
            resultMap.put("returnCode","error");
        }
        return  resultMap;
    }
}
