package com.sync.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import com.sync.domain.QuestionReply;
import com.sync.dto.ListDTO;
import com.sync.dto.QuestionReplyDTO;
import com.sync.mapper.QuestionMapper;
import com.sync.mapper.QuestionReplyMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class QuestionReplyServiceImpl implements QuestionReplyService{

    private final QuestionReplyMapper questionReplyMapper;
    private final ModelMapper modelMapper;
    private final QuestionMapper questionMapper;


    @Override
    public List<QuestionReplyDTO> getListOfquestion(Integer q_id , ListDTO listDTO) {
        List<QuestionReply> replyList = questionReplyMapper.selectListOfBoard(q_id,listDTO);

        List<QuestionReplyDTO> dtoList= replyList.stream()
                .map(questionReply -> modelMapper.map(questionReply,QuestionReplyDTO.class))
                .collect(Collectors.toList());

        return dtoList;
    }

    @Override
    public int register(QuestionReplyDTO questionReplyDTO) {

        QuestionReply questionReply = modelMapper.map(questionReplyDTO , QuestionReply.class);

        questionReplyMapper.adinsert(questionReply);

        questionMapper.updateReplyCount(questionReplyDTO.getQ_id(),1);

        return questionReplyMapper.selectTotalOfBoard(questionReplyDTO.getQ_id());
    }

    @Override
    public void remove(Integer qr_id) {
        questionReplyMapper.updateAsRemoved(qr_id);
    }

    @Override
    public int update(QuestionReplyDTO questionReplyDTO) {

        QuestionReply questionReply = modelMapper.map(questionReplyDTO , QuestionReply.class);

        questionReplyMapper.update(questionReply);

        return questionReplyMapper.selectTotalOfBoard(questionReplyDTO.getQ_id());
    }

}
