package com.service.manager.repository.mybatis;

import java.util.List;
import java.util.Map;
import com.service.manager.entity.User;

public interface UserDao {
	  public List<User> getAuthorityList(Map<String, Object> paramMap);
	  
	  public List<User> getAuthorityList_int(int id);
	  
	  public int updateWeight(Map<String, Object> paramMap);
}
