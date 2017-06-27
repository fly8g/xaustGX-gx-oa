package com.xaust.gx.oa.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.xaust.gx.oa.common.dao.UserDao;

public class SpringTest {

	 public static void main(String[] args) {
		 ApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
		 UserDao userDao = (UserDao)ctx.getBean("userDao");
		 System.out.println(userDao.selectAll());
	 }
}
