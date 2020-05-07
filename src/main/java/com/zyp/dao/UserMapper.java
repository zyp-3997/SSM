package com.zyp.dao;

import com.zyp.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-05-05 19:49
 */
@Repository
public interface UserMapper {
    //增加
    void add(User user);
    //修改
    void update(User user);
    //删除
    void delete(int id);
    //根据id查询
    User findById(@Param("userId") int id);
    //查询所有
    List<User> findAll();
}
