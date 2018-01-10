package com.service.manager.shiro.realm;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.service.manager.entity.User;
import com.service.manager.service.WeightService;
import com.service.manager.util.DecriptUtil;


public class MyShiroRealm extends AuthorizingRealm {
	
	//这里因为没有调用后台，直接默认只有一个用户("luoguohui"，"123456")
//	private static final String USER_NAME = "huoxin";  
//	private static final String PASSWORD = "123456";  
	
	@Autowired
	private WeightService weightService;
	
	/* 
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) { 
        Set<String> roleNames = new HashSet<String>();  
        Set<String> permissions = new HashSet<String>();  
        roleNames.add("administrator");//添加角色
        permissions.add("newPage.jhtml");  //添加权限
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roleNames);  
        info.setStringPermissions(permissions);  
        info.setRoles(roleNames);
        return info;  
	}
	
	
	/* 
	 * 登录验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken){
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		Map<String, Object> params = new HashMap<String, Object>();
		List<User> weightList = weightService.getWeightList(params);
		for (int i = 0; i < weightList.size(); i++) {
			String userName = weightList.get(i).getUserName();
			int passWord = weightList.get(i).getPassWord();
			if(token.getUsername().equals(userName)){
				return new SimpleAuthenticationInfo(userName, DecriptUtil.MD5(""+passWord+""), getName());  
			}
		}
		return null;
	}

}
