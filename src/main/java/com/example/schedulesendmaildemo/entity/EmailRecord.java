package com.example.schedulesendmaildemo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class EmailRecord {

    private Long id;

    private String sendTo;

    private String content;

    private Date sendDate;

    private String status;
}
