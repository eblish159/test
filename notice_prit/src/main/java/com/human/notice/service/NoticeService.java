package com.human.notice.service;

import com.human.notice.repository.NoticeDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface NoticeService {

    public List listCodeGroup() throws Exception;
}
