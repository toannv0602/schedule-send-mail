package com.example.schedulesendmaildemo.service.impl;

import com.example.schedulesendmaildemo.entity.User;
import com.example.schedulesendmaildemo.mapper.UserMapper;
import com.example.schedulesendmaildemo.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        List<User> users = userMapper.findAll();
        return users;
    }

    @Override
    public User getByUsername(String username) {
        User user = userMapper.getByUsername(username);
        return user;
    }
}
