package com.wanerchuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zzh on 2017/9/10.
 */
@Controller
public class WrcIndexAPI {

    @RequestMapping("/index")
    public ModelAndView toIndexPage(HttpServletRequest request){

        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return mav;
    }
}
