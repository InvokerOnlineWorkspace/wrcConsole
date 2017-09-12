package com.wanerchuan.commons.shiro;

import com.wanerchuan.domain.generation.WrcAdmin;
import com.wanerchuan.service.WrcAdminService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by zzh on 2017/9/12.
 */
public class ShiroDBRealm extends AuthorizingRealm {

    @Autowired
    private WrcAdminService wrcAdminService;

    public ShiroDRealm() {
        super();
    }


    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }


    /**
     *验证登陆
     * */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        System.out.println(token.getUsername());
        WrcAdmin wrcAdmin = wrcAdminService.findUserByLoginName(token.getUsername());

        return null;
    }
}
