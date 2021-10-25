package com.example.schedulesendmaildemo.reponse;

import com.example.schedulesendmaildemo.entity.Category;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class ProductReponse {
    private Long id;
    private String code;
    private String name;
    private Integer quantity;
    private Category category;
}
