package com.example.schedulesendmaildemo.mapper;

import com.example.schedulesendmaildemo.entity.Category;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CategoryMapper {

    Category getById(Long id);


}
