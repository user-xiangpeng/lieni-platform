package com.service.manager.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONObject;
import com.service.manager.entity.User;
import com.service.manager.service.WeightService;
import com.service.manager.util.DecriptUtil;

@Controller
@RequestMapping("/login")
public class LoginController extends BaseController{

	@Autowired
	private WeightService weightService;
	@RequestMapping(value = "/query")
	public String queryList(@RequestParam Map<String, Object> params, Model model) {
		List<User> weightList = weightService.getWeightList(params);
		model.addAttribute("weightList",weightList);
		return "user/userList1";
	}
	
	@RequestMapping(value="updateUser")
	public String updateUser(@RequestParam Map<String,Object> params, HttpServletResponse response){
		Map<String, Object> result = new HashMap<String, Object>();
		try{
            //浼犲叆鍙傛暟
			int rsSize = weightService.updateWeight(params);
            System.out.println("rsSize"+rsSize);
            if(rsSize == -1) {
                result.put("succ", false);
                result.put("msg", "鍚嶅瓧宸插瓨鍦紝璇烽噸鏂拌緭鍏�");
            } else {
                result.put("data", rsSize);
                result.put("succ", true);
            }
        } catch (Exception e) {
            result.put("succ", false);
            result.put("msg", "dictionary鏇存柊澶辫触!");
        }
        ajaxJson(JSONObject.toJSON(result).toString(), response);
        return null;
	}
	
	/** 
     * 验证用户名和密码 
     * @param String username,String password
     * @return 
     */  
    @RequestMapping(value="/checkLogin")  
    public String checkLogin(@RequestParam Map<String, Object> params, Model model) {  
    	String username = (String) params.get("eMail");
    	String password = (String) params.get("passWord");
    	Map<String, Object> result = new HashMap<String, Object>();
    	try{
    		UsernamePasswordToken token = new UsernamePasswordToken(username, DecriptUtil.MD5(password));  
            Subject currentUser = SecurityUtils.getSubject(); 
            	//使用shiro来验证  
                token.setRememberMe(true);  
                currentUser.login(token);//验证角色和权限  
                result.put("success", true);
//                return "/user/userList1";
                return "redirect:/user/userList1.jsp";
            
    	}catch(Exception ex){
//    		throw new BusinessException(LuoErrorCode.LOGIN_VERIFY_FAILURE);
    		System.err.println(ex);
    	}
    	result.put("success", false);
        return "index";
    }  
	
    
}
