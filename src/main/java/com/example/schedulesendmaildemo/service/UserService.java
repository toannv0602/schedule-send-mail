package com.example.schedulesendmaildemo.service;

import com.example.schedulesendmaildemo.entity.User;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User getByUsername(String username);
}
