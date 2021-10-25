package com.example.schedulesendmaildemo.shedule;

import com.example.schedulesendmaildemo.entity.User;
import com.example.schedulesendmaildemo.reponse.ProductReponse;
import com.example.schedulesendmaildemo.service.ProductService;
import com.example.schedulesendmaildemo.service.UserService;
import com.example.schedulesendmaildemo.service.impl.EmailServiceImpl;
import freemarker.template.TemplateException;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;

import javax.mail.MessagingException;

@EnableScheduling
@Component
public class ScheduledTasks {

    @Autowired
    private ProductService productService;

    @Autowired
    private UserService userService;

    @Autowired
    private EmailServiceImpl emailService;

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    private static final Logger log =LoggerFactory.getLogger(ScheduledTasks.class);

    public static Boolean active = true;
//    @Scheduled(fixedRate = 600000)// ms
//    public void reportCurrentTime() {
//        if(active) log.info("The time is now {}", dateFormat.format(new Date()));
//    }

    @Scheduled(fixedRate = 60000)// ms
    public void quantityNotificationByEmail () throws MessagingException, TemplateException, IOException {
        if(active){
            List<ProductReponse> proList = productService.getByQuantity();
            User user = userService.getByUsername("toannv");
            emailService.senEmail(user,proList);
            System.out.println("sent!");
        }else{
            System.out.println("Stop schedule!");
        }
    }

}
