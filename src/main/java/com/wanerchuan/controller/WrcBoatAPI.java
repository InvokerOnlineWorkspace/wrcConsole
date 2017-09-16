package com.wanerchuan.controller;

import com.wanerchuan.commons.constants.WrcConstants;
import com.wanerchuan.domain.generation.WrcBoatInfo;
import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcBoatInfoService;
import com.wanerchuan.service.WrcDestinationService;
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

    private int num = 0;
    @Autowired
    WrcBoatInfoService wrcBoatInfoService;
    @Autowired
    WrcDestinationService wrcDestinationService;

    /**
     * 帆船列表
     * */
    @RequestMapping("/List")
    public ModelAndView toBoatList(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        List<WrcBoatInfo> boatInfoList = wrcBoatInfoService.queryALLBoatInfoList();
        mav.setViewName("boatList");
        mav.addObject("boatInfoList",boatInfoList);
        return mav;
    }
    /**
     * 帆船信息
     * */
    @RequestMapping("/info")
    public ModelAndView toBoatInfo(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String id = request.getParameter("id");
        String method = request.getParameter("method");
        WrcBoatInfo wrcBoatInfo = wrcBoatInfoService.queryBoatInfoById(id);
        List<WrcDestinationInfo> destInfoList =wrcDestinationService.getAllDestList();

        if(WrcConstants.METHOD_VIEW.equals(method)){
            mav.addObject("boatInfo",wrcBoatInfo);

        }else if(WrcConstants.METHOD_ADD.equals(method)){

        }else if(WrcConstants.METHOD_EDIT.equals(method)){
            //获取目的地列表
            mav.addObject("boatInfo",wrcBoatInfo);

        }

        mav.addObject("method",method);
        mav.setViewName("boatInfo");
        mav.addObject("destList",destInfoList);
        return mav;
    }

    /**
     * 新增
     * */
    @RequestMapping("/add")
    public Map<String,Object> saveBoatInfo(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        WrcBoatInfo wrcBoatInfo = new WrcBoatInfo();
        try {
            wrcBoatInfo.setBoatName(request.getParameter("boatName"));
            wrcBoatInfo.setBoatType(request.getParameter("boatType"));
            wrcBoatInfo.setBoatBrand(request.getParameter("boatBrand"));
            wrcBoatInfo.setBoatDetail(request.getParameter("boatDetail"));
            wrcBoatInfo.setBoatSeat(Integer.parseInt(request.getParameter("boatSeat")));
            num = wrcBoatInfoService.saveBoatInfo(wrcBoatInfo);
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("reCode",0);
            resultMap.put("msg","serviceError");
            return resultMap;
        }
        if(num==1){
            resultMap.put("reCode",1);
            resultMap.put("msg","success");
        }else{
            resultMap.put("reCode",2);
            resultMap.put("returnCode","error");
        }
        return resultMap;
    }
    /**
     * 修改
     * */
    @RequestMapping("/modify")
    public Map<String,Object> modifyBoatInfo(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        WrcBoatInfo wrcBoatInfo = new WrcBoatInfo();
        try {
            String id = request.getParameter("id");
            wrcBoatInfo = wrcBoatInfoService.queryBoatInfoById(id);
            if(StringUtils.isNoneEmpty(id) && wrcBoatInfo!=null){
                wrcBoatInfo.setBoatName(request.getParameter("boatName"));
                wrcBoatInfo.setBoatType(request.getParameter("boatType"));
                wrcBoatInfo.setBoatBrand(request.getParameter("boatBrand"));
                wrcBoatInfo.setBoatDetail(request.getParameter("boatDetail"));
                wrcBoatInfo.setBoatSeat(Integer.parseInt(request.getParameter("boatSeat")));
                num = wrcBoatInfoService.updateBoatInfoById(wrcBoatInfo);
            }else{
                //查询异常
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
    @ResponseBody
    public Map<String,Object> toDelBoatInfo(HttpServletRequest request){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        String id = request.getParameter("id");
        try {
            num = wrcBoatInfoService.delBoatInfoById(id);
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("reCode",0);
            resultMap.put("returnCode","error");
        }

        if(num==1){
            resultMap.put("reCode",1);
            resultMap.put("returnCode","success");
        }else{
            resultMap.put("reCode",2);
            resultMap.put("returnCode","error");
        }
        return resultMap;
    }
    /**
     * 校验命名重复
     * */
}
