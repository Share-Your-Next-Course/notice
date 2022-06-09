package com.sync.mapper;



import com.sync.domain.Report;
import com.sync.domain.ReportAttachFile;
import com.sync.dto.ListDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReportMapper extends QuestionGenericMapper <Report,Integer>{

    void adminsert (Report Report);

    void minsert (Report Report);

    List<Report> admquestionList (ListDTO listDTO);

    List<Report> mquestionList (ListDTO listDTO);

    void delete(Integer q_id);

    Report selectOne(Integer q_id);

    void update(Report question);

    void updateReplyCount(@Param("q_id") Integer q_id, @Param("amount") int amount);

    //더보기 안에 들어갈 파일들
    List<ReportAttachFile> selectFiles(Integer q_id);
}
