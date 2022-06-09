package com.sync.service;

import com.sync.dto.ListDTO;
import com.sync.dto.QuestionDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.UploadResultDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface QuestionService {

    void register(QuestionDTO questionDTO);

    ListResponseDTO<QuestionDTO> getList(ListDTO listDTO);

    QuestionDTO getOne(Integer q_id);

    void update(QuestionDTO questionDTO);

    void remove(Integer q_id);

    List<UploadResultDTO> getFiles (Integer q_id);

}