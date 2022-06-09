package com.sync.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import com.sync.domain.QuestionAttachFile;
import com.sync.domain.Question;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.QuestionDTO;
import com.sync.dto.UploadResultDTO;
import com.sync.mapper.QuestionFileMapper;
import com.sync.mapper.QuestionMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class QuestionServiceImpl implements QuestionService{

    private final QuestionMapper questionMapper;
    private final ModelMapper modelMapper;
    private final QuestionFileMapper fileMapper;


    @Override
    public void register(QuestionDTO questionDTO) {

        Question question = modelMapper.map(questionDTO , Question.class);

        //uploadResultDTO 를 AttachFile.class 타입으로 바꾼다음 collect 해준다
        List<QuestionAttachFile> files =
                questionDTO.getUploads().stream().map(uploadResultDTO -> modelMapper.map(uploadResultDTO, QuestionAttachFile.class)
                ).collect(Collectors.toList());

        log.info("======================================");
        log.info("======================================");
        log.info(question);
        log.info(files);

        questionMapper.adminsert(question);

        files.forEach(file -> fileMapper.insert(file));

        log.info("======================================");
        log.info("======================================");
    }

    @Override
    public ListResponseDTO<QuestionDTO> getList(ListDTO listDTO) {
        List<Question> questionList = questionMapper.admquestionList(listDTO);

        List<QuestionDTO> dtoList=
                questionList.stream()
                        .map(question -> modelMapper.map(question,QuestionDTO.class))
                        .collect(Collectors.toList());

        return ListResponseDTO.<QuestionDTO>builder()
                .dtoList(dtoList)
                .total(questionMapper.getTotal(listDTO))
                .build();

    }

    @Override
    public QuestionDTO getOne(Integer q_id) {

        Question question = questionMapper.selectOne(q_id);

        QuestionDTO questionDTO = modelMapper.map(question, QuestionDTO.class);

        return questionDTO;
    }

    @Override
    public void update(QuestionDTO questionDTO) {

        //기존 파일들 모두 삭제
        fileMapper.delete(questionDTO.getQ_id());

        questionMapper.update(Question.builder()
                .q_id(questionDTO.getQ_id())
                .title(questionDTO.getTitle())
                .content(questionDTO.getContent())
                .mainImage(questionDTO.getMainImage())
                .build());


        for (UploadResultDTO uploadDTO : questionDTO.getUploads()) {

            QuestionAttachFile attachFile = modelMapper.map(uploadDTO , QuestionAttachFile.class);

            attachFile.setQ_id(questionDTO.getQ_id());

            fileMapper.insertBoard(attachFile);
        }
    }

    @Override
    public void remove(Integer q_id) {

        questionMapper.delete(q_id);
    }


    @Override
    public List<UploadResultDTO> getFiles(Integer q_id) {
        //여기까지 들어오는 데이터는 vo
        List<QuestionAttachFile> attachFiles = questionMapper.selectFiles(q_id);

        //vo를 DTO로 변환 그 이유는 service에서 vo로 작업을 못하고 DTO로 하기때문에 변환해준다
        return attachFiles.stream().map(questionAttachFile -> modelMapper.map(questionAttachFile, UploadResultDTO.class))
                .collect(Collectors.toList());
    }
}
