package com.example.schedulesendmaildemo.controller;

import com.example.schedulesendmaildemo.entity.User;
import com.example.schedulesendmaildemo.mapper.ProductMapperTry;
import com.example.schedulesendmaildemo.reponse.ProductReponse;
import com.example.schedulesendmaildemo.service.ProductService;
import com.example.schedulesendmaildemo.service.impl.EmailServiceImpl;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.io.IOException;
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

//        @GetMapping("/test")
//        public void insert(){
//                emailService.record();
//        }

//        @GetMapping("/testMail")
//        public String sendMail() throws MessagingException, TemplateException, IOException {
//                List<ProductReponse> proList = productService.getByQuantity();
//                emailService.senEmail(new User(1L,"toannv", "Ngo Van Toan", "toanvan2000t@gmail.com"), proList);
//                return "OK";
//        }

////    @RequestMapping("/welcome")
////    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
////        model.addAttribute("name", name);
////        return "welcome";
////    }
//
//    @GetMapping("/home")
//    public String index(@RequestParam(name = "name", required = false) String name, Model model) {
//        if (name == null) {
//            name = "Anonymous";
//        }
//        String welcomeMessage = "Hi " + name + "! Welcome to SpringBoot FreeMarker";
//        model.addAttribute("message", welcomeMessage);
//        return "index";
//    }
//    @GetMapping("/getProducts")
//    public String getProducts(Model model) {
//        List<Product> products = new ArrayList<>();
//        products.add(new Product(1, "Iphone XS", 10));
//        products.add(new Product(2, "SamSung S9", 12));
//        products.add(new Product(3, "Nokia", 23));
//        model.addAttribute("products", products);
//        return "productList";
//    }
//
//    @PostMapping("/register")
//    public String register(@RequestBody User user) throws Exception{
//        emailService.sendEmail(user);
//        return "Email sent....!";
//    }

}
