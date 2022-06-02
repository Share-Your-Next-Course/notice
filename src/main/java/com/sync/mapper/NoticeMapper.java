package com.sync.mapper;

import com.sync.domain.AttachFile;
import com.sync.domain.NoticeVO;
import com.sync.dto.ListDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NoticeMapper extends GenericMapper<NoticeVO, Integer>{

    List<AttachFile> selectFiles(Integer nt_no);

    void insert(NoticeVO noticeVO);

    void delete(Integer nt_id);

    NoticeVO selectOne(Integer nt_id);

    void update(NoticeVO noticeVO);
}
