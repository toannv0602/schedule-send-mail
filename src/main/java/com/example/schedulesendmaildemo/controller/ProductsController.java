package com.example.schedulesendmaildemo.controller;

import com.example.schedulesendmaildemo.reponse.ProductReponse;
import com.example.schedulesendmaildemo.service.ProductService;
import com.example.schedulesendmaildemo.service.impl.EmailServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductsController {

        @Autowired
        private ProductService productService;
        @Autowired
        private EmailServiceImpl emailService;


        @GetMapping("/{id}")
        public ProductReponse getById( @PathVariable(name = "id") Long id){
            return productService.getById(id);
        }

        @GetMapping("/all")
        public List<ProductReponse> findAll(){return productService.findAll();}

        @GetMapping("/get-by-quantity")
        public List<ProductReponse> getByQuantity(){
                return productService.getByQuantity();
        }

        @GetMapping("/test/{id}")
        public ProductReponse getByIdTest(@PathVariable(name = "id") Long id){
               return productService.getByIdTest(id);
        }

        @GetMapping("/test/findall")
        public List<ProductReponse> getByIdTest(){
                return productService.finAllTest();
        }


}
