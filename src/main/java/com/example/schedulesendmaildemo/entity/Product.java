package com.example.schedulesendmaildemo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class Product {
    private Long id;
    private String code;
    private String name;
    private Integer quantity;
    private Long category_id;
}
