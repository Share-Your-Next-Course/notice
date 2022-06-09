package com.sync.service;


import com.sync.domain.ReportReply;
import com.sync.dto.ListDTO;
import com.sync.dto.ReportReplyDTO;
import com.sync.mapper.ReportMapper;
import com.sync.mapper.ReportReplyMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
@Service
@RequiredArgsConstructor
@Log4j2
public class ReportReplyServiceImpl implements ReportReplyService{

    private final ReportReplyMapper reportReplyMapper;
    private final ModelMapper modelMapper;
    private final ReportMapper reportMapper;


    @Override
    public List<ReportReplyDTO> getListOfquestion(Integer q_id , ListDTO listDTO) {

       List<ReportReply> replyList = reportReplyMapper.selectListOfBoard(q_id,listDTO);

        List<ReportReplyDTO> dtoList= replyList.stream()
                .map(reportReply -> modelMapper.map(reportReply,ReportReplyDTO.class))
                .collect(Collectors.toList());

        return dtoList;
    }

    @Override
    public int register(ReportReplyDTO reportReplyDTO) {

        ReportReply reportReply = modelMapper.map(reportReplyDTO , ReportReply.class);

        reportReplyMapper.adinsert(reportReply);

        reportMapper.updateReplyCount(reportReplyDTO.getQ_id(),1);

        return reportReplyMapper.selectTotalOfBoard(reportReplyDTO.getQ_id());
    }

    @Override
    public void remove(Integer qr_id) {
        reportReplyMapper.updateAsRemoved(qr_id);
    }

    @Override
    public int update(ReportReplyDTO reportReplyDTO) {

        ReportReply reportReply = modelMapper.map(reportReplyDTO , ReportReply.class);

        reportReplyMapper.update(reportReply);

        return reportReplyMapper.selectTotalOfBoard(reportReplyDTO.getQ_id());
    }

}
