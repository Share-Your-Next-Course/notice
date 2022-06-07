package com.sync.mapper;

import com.sync.domain.NoticeAttachFileVO;
import com.sync.domain.NoticeVO;

import java.util.List;

public interface NoticeMapper extends GenericMapper<NoticeVO, Integer>{

    List<NoticeAttachFileVO> selectFiles(Integer nt_no);

    void insert(NoticeVO noticeVO);

    void delete(Integer nt_id);

    NoticeVO selectOne(Integer nt_id);

    void update(NoticeVO noticeVO);
}
