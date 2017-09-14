package com.wanerchuan.controller;

import com.wanerchuan.commons.utils.MD5Utils;
import com.wanerchuan.domain.generation.WrcAdmin;
import com.wanerchuan.service.WrcAdminService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zzh on 2017/9/14.
 */
@Controller
@RequestMapping("/")
public class LoginAPI extends BaseController {

    @Autowired
    WrcAdminService wrcAdminService;

    protected Logger logger	= LoggerFactory.getLogger(this.getClass());
    @RequestMapping(value="/login", method=RequestMethod.GET)
    public ModelAndView login(ModelMap model, HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login");
        return mav;
    }

    @RequestMapping(value="/toLogin", method=RequestMethod.POST)
    public String toLogin(ModelMap model, HttpServletRequest request,@RequestParam String loginName, @RequestParam String pwd){

        String currUser = null;
        String userName = loginName;
        String passWord = pwd;
        if(StringUtils.isNotEmpty(userName) && StringUtils.isNotEmpty(passWord)){
            WrcAdmin wrcAdmin = wrcAdminService.findUserByLoginName(userName);
            if(wrcAdmin!=null){
                String thisAdminPwd = wrcAdmin.getPwd();
                String thisAdminSalt = wrcAdmin.getSalt();
                String thisAdminCheckStr = MD5Utils.GetMD5Code(passWord+thisAdminSalt);

                if(thisAdminCheckStr.equals(thisAdminPwd)){//登陆成功
                    currUser = userName;
                }else{ // 登陆失败

                    request.setAttribute("error_msg", "用户名或密码错误！");
                    return "redirect:/login";
                }
            }else{// 用户不存在
                currUser = userName;
                request.setAttribute("error_msg", "用户名不存在！");
                request.getSession().setAttribute("currentUser", currUser);
                return "redirect:/index";
            }
        }else{//输入信息
            return "redirect:/login";
        }
        if(StringUtils.isNotEmpty(currUser) && request.getSession() != null){
            request.getSession().setAttribute("currentUser", currUser);
        }
        return "redirect:/";
    }

    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(ModelMap model, HttpServletRequest request){
        // 先清除session中的用户信息
        request.getSession().removeAttribute("currentUser");
        return "redirect:/login";
    }

    // 登陆成功，跳转到“首页”
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public ModelAndView toMainPage(ModelMap model, HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return mav;
    }
}
