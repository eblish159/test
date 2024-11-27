package com.human.notice.service;


import com.human.notice.repository.NoticeDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("noticeService")
@Transactional(propagation = Propagation.REQUIRED)
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeDAO noticeDAO;

    @Override
    public List listCodeGroup() throws Exception{
        List codeGroupList = null;
        codeGroupList = noticeDAO.selectAllCodeGrouplist();
        return codeGroupList;
    }
}
