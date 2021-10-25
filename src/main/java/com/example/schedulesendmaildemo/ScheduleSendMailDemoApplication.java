package com.example.schedulesendmaildemo;

import com.example.schedulesendmaildemo.shedule.ScheduledTasks;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
public class ScheduleSendMailDemoApplication {


    public static void main(String[] args) {
        SpringApplication.run(ScheduleSendMailDemoApplication.class, args);
    }

}
