package com.wanerchuan.commons.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by zzh on 2017/9/14.
 * 登陆filter
 */
public class LoginCheckFilter implements Filter {

    private Logger logger = LoggerFactory.getLogger(LoginCheckFilter.class);

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        String req_url = httpRequest.getRequestURL().toString();
        // 静态资源则放过！
        if(req_url.endsWith(".css") || req_url.endsWith(".js")||req_url.indexOf("/font-awesome/")>-1
                || req_url.indexOf("/images/")>-1  || req_url.indexOf("/lib/")>-1||req_url.indexOf("img")>-1){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        HttpSession session = httpRequest.getSession();
        if(session==null || session.getAttribute("currentUser")==null){
            if(!req_url.endsWith("/toLogin") && !req_url.endsWith("/login")){
                httpResponse.sendRedirect("login");
                return;
            }
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {

    }
}
