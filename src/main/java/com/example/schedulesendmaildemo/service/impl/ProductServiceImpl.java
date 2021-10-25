package com.example.schedulesendmaildemo.service.impl;

import com.example.schedulesendmaildemo.entity.Category;
import com.example.schedulesendmaildemo.entity.Product;
import com.example.schedulesendmaildemo.mapper.CategoryMapper;
import com.example.schedulesendmaildemo.mapper.ProductMapper;
import com.example.schedulesendmaildemo.reponse.ProductReponse;
import com.example.schedulesendmaildemo.service.ProductService;
import com.example.schedulesendmaildemo.shedule.ScheduledTasks;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {



    @Resource
    private ProductMapper productMapper;

    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public ProductReponse getById(Long id) {
        Product product = productMapper.getById(id);
        Category category = categoryMapper.getById(product.getCategory_id());
        ProductReponse reponse = new ProductReponse();
        reponse.setId(product.getId());
        reponse.setCode(product.getCode());
        reponse.setName(product.getName());
        reponse.setQuantity(product.getQuantity());
        reponse.setCategory(category);
        return reponse;
    }

    @Override
    public List<ProductReponse> findAll() {
        List<Product> products = productMapper.findAll();
        List<ProductReponse> productReponses = new ArrayList<>();
        for (Product product : products){
            ProductReponse reponse = new ProductReponse();
            Category category = categoryMapper.getById(product.getCategory_id());
            reponse.setId(product.getId());
            reponse.setCode(product.getCode());
            reponse.setName(product.getName());
            reponse.setQuantity(product.getQuantity());
            reponse.setCategory(category);
            productReponses.add(reponse);
        }
        return productReponses;
    }

//    @Override
//    public List<ProductReponse> getByQuantity() {
//        List<Long> ids = productMapper.getIdsByQuantity();
//        List<ProductReponse> productReponses = new ArrayList<>();
//        for (Long id : ids){
//           ProductReponse proReponse = getById(id);
//           productReponses.add(proReponse);
//        }
//
//        return productReponses;
//    }


    @Override
    public List<ProductReponse> getByQuantity() {
        List<Long> ids = productMapper.getIdsByQuantity();
        List<ProductReponse> productReponses = new ArrayList<>();
        for (Long id : ids){
           ProductReponse proReponse = getById(id);
           productReponses.add(proReponse);
        }
        return productReponses;
    }
}
