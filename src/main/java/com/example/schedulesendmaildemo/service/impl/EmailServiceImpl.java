package com.example.schedulesendmaildemo.service.impl;

import com.example.schedulesendmaildemo.entity.EmailRecord;
import com.example.schedulesendmaildemo.entity.User;

import com.example.schedulesendmaildemo.exception.ErrorEnum;
import com.example.schedulesendmaildemo.mapper.EmailRecordMapper;
import com.example.schedulesendmaildemo.reponse.ProductReponse;
import freemarker.template.Configuration;
import freemarker.template.TemplateException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmailServiceImpl {

    @Resource
    private EmailRecordMapper emailRecordMapper;

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    final Configuration configuration;
    final JavaMailSender javaMailSender;

    public EmailServiceImpl(Configuration configuration, JavaMailSender javaMailSender) {
        this.configuration = configuration;
        this.javaMailSender = javaMailSender;
    }

    public void senEmail(User user, List<ProductReponse> proReponses) {
        String emailContent ="";
        Date dateSend = new Date();
        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
            helper.setSubject("GROOO SHOP MALL NOTIFICATION");
            helper.setTo(user.getEmail());

            emailContent = getEmailContent(proReponses,dateSend);
            helper.setText(emailContent, true);
            javaMailSender.send(mimeMessage);
            record(user.getEmail(), emailContent, ErrorEnum.SUCCESS.toString(),dateSend);
        }catch (Exception e){
            record(user.getEmail(), emailContent, ErrorEnum.FAILED.toString(),dateSend);
        }

    }

//    public void sendEmail(User user) throws MessagingException, IOException, TemplateException {
//        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
//        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
//        helper.setSubject("GROOO SHOP MALL NOTIFICATION!");
//        helper.setTo(user.getEmail());
//        String emailContent = getEmailContent(user);
//        helper.setText(emailContent, true);
//        javaMailSender.send(mimeMessage);
//    }
    String getEmailContent(List<ProductReponse> proReponseList, Date date) throws IOException, TemplateException {
        StringWriter stringWriter = new StringWriter();
        Map<String, Object> model = new HashMap<>();
        model.put("proReponseList", proReponseList);
        model.put("time", dateFormat.format(date));
        configuration.getTemplate("email.ftlh").process(model, stringWriter);
        return stringWriter.getBuffer().toString();
    }

    public void record(String sendTo,String content,String status, Date date){
        EmailRecord emailRecord = new EmailRecord();
        emailRecord.setContent(content);
        emailRecord.setSendTo(sendTo);
        emailRecord.setSendDate(date);
        emailRecord.setStatus(status);
        emailRecordMapper.insert(emailRecord);
    }

}
