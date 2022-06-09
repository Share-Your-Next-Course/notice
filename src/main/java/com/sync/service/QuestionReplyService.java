package com.sync.service;

import com.sync.dto.ListDTO;
import com.sync.dto.QuestionReplyDTO;

import java.util.List;

public interface QuestionReplyService {

    List<QuestionReplyDTO> getListOfquestion (Integer q_id , ListDTO listDTO);

    int register(QuestionReplyDTO questionReplyDTO);

    //삭제
    void remove(Integer qr_id);

    //수정
    int update(QuestionReplyDTO questionReplyDTO);
}
