package com.example.schedulesendmaildemo.mapper;

import com.example.schedulesendmaildemo.entity.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductMapper {

    Product getById(Long id);

    List<Product> findAll();

    List<Long> getIdsByQuantity();
}
