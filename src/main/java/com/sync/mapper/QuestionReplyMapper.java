package com.sync.mapper;

import org.apache.ibatis.annotations.Param;
import com.sync.domain.QuestionReply;
import com.sync.dto.ListDTO;

import java.util.List;

public interface QuestionReplyMapper extends QuestionGenericMapper<QuestionReply,Integer> {

    List<QuestionReply> selectListOfBoard(@Param("q_id") Integer q_id, @Param("listDTO")ListDTO listDTO);

    //특정한 게시물에 댓글이 몇개있는지 확인해보려한다
    int selectTotalOfBoard(Integer q_id);

    void adinsert(QuestionReply questionReply);

    void minsert(QuestionReply questionReply);

    //삭제 업데이트
    void updateAsRemoved(Integer qr_id);

    void update(QuestionReply questionReply);
}
