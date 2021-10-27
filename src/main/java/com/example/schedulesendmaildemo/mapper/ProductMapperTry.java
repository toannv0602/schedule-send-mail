package com.example.schedulesendmaildemo.mapper;

import com.example.schedulesendmaildemo.reponse.ProductReponse;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ProductMapperTry {

    ProductReponse getById(@Param("id") Long id);

    List findAll();
}
