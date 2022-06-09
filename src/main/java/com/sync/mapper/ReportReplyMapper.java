package com.sync.mapper;

import com.sync.domain.QuestionReply;
import com.sync.domain.ReportReply;
import com.sync.dto.ListDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReportReplyMapper extends QuestionGenericMapper<ReportReply, Integer> {

    List<ReportReply> selectListOfBoard(@Param("q_id") Integer q_id, @Param("listDTO") ListDTO listDTO);

    //특정한 게시물에 댓글이 몇개있는지 확인해보려한다
    int selectTotalOfBoard(Integer q_id);

    void adinsert(ReportReply reportReply);

    void minsert(ReportReply reportReply);

    //삭제 업데이트
    void updateAsRemoved(Integer qr_id);

    void update(ReportReply reportReply);

}
