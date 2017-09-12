package com.wanerchuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by zzh on 2017/8/28.
 * 信息管理-航海计划
 */
@Controller
@RequestMapping("/sailPlan")
public class WrcSailPlanAPI {

    /**
     * 航海计划列表
     * */
    @RequestMapping("/List")
    public ModelAndView toSailPlanList(HttpServletRequest request){
        return null;
    }
    /**
     * 航海计划信息
     * */
    @RequestMapping("/info")
    public ModelAndView toSailPlanInfo(HttpServletRequest request){
        return null;
    }
    /**
     * 新增/修改
     * */
    @RequestMapping("/modify")
    @ResponseBody
    public Map<String,Object> modifyPlanInfo(HttpServletRequest request){
        return null;
    }
}
