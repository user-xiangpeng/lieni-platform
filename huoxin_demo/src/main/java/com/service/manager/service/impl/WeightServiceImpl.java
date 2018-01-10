package com.service.manager.service.impl;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.service.manager.entity.User;
import com.service.manager.repository.mybatis.UserDao;
import com.service.manager.service.WeightService;

@Service
@Transactional
public class WeightServiceImpl implements WeightService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public List<User> getWeightList(Map paramMap) {
		// TODO Auto-generated method stub
//		paramMap.put("id", "1");
//		String id = paramMap.get("id").toString();
//		int In_id = Integer.parseInt(id);
		List<User> userList = userDao.getAuthorityList(paramMap);
//		List<User> userList1 = userDao.getAuthorityList_int(In_id);
//		System.out.println("list"+list);
		return userList;
	}

	@Override
	public int updateWeight(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		int weight = userDao.updateWeight(paramMap);
		return weight;
	}
	  
}
