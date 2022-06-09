package com.sync.service;

import com.sync.dto.ListDTO;
import com.sync.dto.ReportReplyDTO;

import java.util.List;

public interface ReportReplyService {

    List<ReportReplyDTO> getListOfquestion (Integer q_id , ListDTO listDTO);

    int register(ReportReplyDTO ReportReplyDTO);

    //삭제
    void remove(Integer qr_id);

    //수정
    int update(ReportReplyDTO ReportReplyDTO);
}
