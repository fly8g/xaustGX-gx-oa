package com.xaust.gx.oa.common.dao;

import com.xaust.gx.oa.common.entity.User;
import java.util.List;

public interface UserDao {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    User selectByPrimaryKey(Integer userId);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    List<User> selectByUsername(String username);
}