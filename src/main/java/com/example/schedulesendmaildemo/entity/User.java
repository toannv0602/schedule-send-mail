package com.example.schedulesendmaildemo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class User {

    private Long id;

    private String username;

    private String fullName;

    private String email;

}
