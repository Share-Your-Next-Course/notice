package com.sync.mapper;

import com.sync.domain.NoticeAttachFileVO;

public interface NoticeFileMapper {
    void insert(NoticeAttachFileVO noticeAttachFileVO);
    void insertNotice(NoticeAttachFileVO noticeAttachFileVO);
    void delete(Integer nt_id);


}
