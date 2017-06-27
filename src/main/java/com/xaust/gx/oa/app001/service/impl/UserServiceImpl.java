package com.xaust.gx.oa.app001.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xaust.gx.oa.app001.service.UserService;
import com.xaust.gx.oa.common.dao.UserDao;
import com.xaust.gx.oa.common.entity.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;
	
	public User getUserInfo(String username) {

		List<User> userList = userDao.selectByUsername(username);

		User user = null;
		if (userList != null && !userList.isEmpty()) {
			user = userList.get(0);
		}
		return user;
	}
}
