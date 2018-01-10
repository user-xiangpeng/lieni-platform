package com.service.manager.service;

import java.util.List;
import java.util.Map;


import com.service.manager.entity.User;

public abstract interface WeightService {
	public abstract List<User> getWeightList(Map<String, Object> paramMap);
	
	public abstract int updateWeight(Map<String, Object> paramMap);
}
