package com.example.schedulesendmaildemo.service;

import com.example.schedulesendmaildemo.entity.Product;
import com.example.schedulesendmaildemo.reponse.ProductReponse;

import java.util.List;

public interface ProductService {

    ProductReponse getById(Long id);

    List<ProductReponse> findAll();

    List<ProductReponse> getByQuantity();

    ProductReponse getByIdTest(Long id);

    List<ProductReponse> finAllTest();
}
