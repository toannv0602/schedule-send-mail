package com.example.schedulesendmaildemo.mapper;

import com.example.schedulesendmaildemo.entity.EmailRecord;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmailRecordMapper {

    void insert(EmailRecord emailRecord);


}
