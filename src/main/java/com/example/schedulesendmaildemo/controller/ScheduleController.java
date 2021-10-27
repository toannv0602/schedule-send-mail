package com.example.schedulesendmaildemo.controller;

import com.example.schedulesendmaildemo.shedule.ScheduledTasks;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.ScheduledAnnotationBeanPostProcessor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.MessagingException;
import java.io.IOException;

@RestController
@RequestMapping("/schedule")
public class ScheduleController {

    @Autowired
    private ScheduledTasks scheduledTasks;


    @GetMapping(value = "/stopScheduler")
    public String stopSchedule() throws MessagingException, TemplateException, IOException {
        ScheduledTasks.active = false;
//        scheduledTasks.quantityNotificationByEmail();
        return "OK";
    }

    @GetMapping(value = "/startScheduler")
    public String startSchedule() throws MessagingException, TemplateException, IOException {
        ScheduledTasks.active = true;
//        scheduledTasks.quantityNotificationByEmail();
        return "OK";
    }

}
