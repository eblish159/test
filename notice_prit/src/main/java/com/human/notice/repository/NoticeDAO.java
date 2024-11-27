package com.human.notice.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;

import java.util.List;


@Mapper
public class NoticeDAO {

    /**
     * 코드 그룹 관리 조회
     *
     * @return
     * @throws DataAccessException
     */
    public List selectAllCodeGrouplist() throws DataAccessException {
        return null;
    }

}

