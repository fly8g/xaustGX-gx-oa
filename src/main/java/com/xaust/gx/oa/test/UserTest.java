package com.xaust.gx.oa.test;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xaust.gx.oa.common.dao.UserDao;
import com.xaust.gx.oa.common.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring.xml")
public class UserTest {

	@Autowired
	private UserDao userMapper;
	
//	@Test
//	public void testAdd(){
//		User user = new User(-1, "23", "jiuqiyuliang");
//		userMapper.save(user);
//		
//	}
	
	@Test
	public void testFindAll(){
		List<User> findAllList = userMapper.selectAll();
		System.out.println(findAllList.size());
		System.out.println(findAllList);
	}
//	
//	@Test
//	public void testFindById(){
//		User user = userMapper.findById(2);
//		System.out.println(user.getId());
//		System.out.println(user.getUserName());
//	}
//
//
//	@Test
//	public void testUpdate(){
//		
//		User user = new User(2, "23", "yuliang");
//		userMapper.update(user);
//	}
//	
//	@Test
//	public void testDelete(){
//		userMapper.delete(1);
//	}
}
