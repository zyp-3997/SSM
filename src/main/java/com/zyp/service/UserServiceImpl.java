package com.zyp.service;

import com.zyp.dao.UserMapper;
import com.zyp.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-05-05 20:19
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    @Qualifier("userMapper")
    private UserMapper userMapper;
    //属性注解的方式可以不用set方法
  /*  public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }*/

    public void add(User user) {
       userMapper.add(user);
    }

    public void update(User user) {
       userMapper.update(user);
    }

    public void delete(int id) {
       userMapper.delete(id);
    }

    public User findById(int id) {
        return userMapper.findById(id);
    }

    public List<User> findAll() {
        return userMapper.findAll();
    }
}
