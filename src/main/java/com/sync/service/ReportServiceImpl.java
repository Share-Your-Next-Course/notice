package com.sync.service;

import com.sync.domain.Question;
import com.sync.domain.QuestionAttachFile;
import com.sync.domain.Report;
import com.sync.domain.ReportAttachFile;
import com.sync.dto.*;
import com.sync.mapper.QuestionFileMapper;
import com.sync.mapper.QuestionMapper;
import com.sync.mapper.ReportFileMapper;
import com.sync.mapper.ReportMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class ReportServiceImpl implements ReportService{

    private final ReportMapper reportMapper;
    private final ModelMapper modelMapper;
    private final ReportFileMapper reportFileMapper;


    @Override
    public void register(ReportDTO reportDTO) {

        Report report = modelMapper.map(reportDTO , Report.class);

        //uploadResultDTO 를 AttachFile.class 타입으로 바꾼다음 collect 해준다
        List<ReportAttachFile> files =
                reportDTO.getUploads().stream().map(uploadResultDTO -> modelMapper.map(uploadResultDTO, ReportAttachFile.class)
                ).collect(Collectors.toList());

        log.info("======================================");
        log.info("======================================");
        log.info(report);
        log.info(files);

        reportMapper.adminsert(report);

        files.forEach(file -> reportFileMapper.insert(file));

        log.info("======================================");
        log.info("======================================");
    }

    @Override
    public ListResponseDTO<ReportDTO> getList(ListDTO listDTO) {
        List<Report> reportList = reportMapper.admquestionList(listDTO);

        List<ReportDTO> dtoList=
                reportList.stream()
                        .map(report -> modelMapper.map(report,ReportDTO.class))
                        .collect(Collectors.toList());

        return ListResponseDTO.<ReportDTO>builder()
                .dtoList(dtoList)
                .total(reportMapper.getTotal(listDTO))
                .build();

    }

    @Override
    public ReportDTO getOne(Integer q_id) {

        Report report = reportMapper.selectOne(q_id);

        ReportDTO reportDTO = modelMapper.map(report, ReportDTO.class);

        return reportDTO;
    }

    @Override
    public void update(ReportDTO reportDTO) {

        //기존 파일들 모두 삭제
        reportFileMapper.delete(reportDTO.getQ_id());

        reportMapper.update(Report.builder()
                .q_id(reportDTO.getQ_id())
                .title(reportDTO.getTitle())
                .content(reportDTO.getContent())
                .mainImage(reportDTO.getMainImage())
                .build());


        for (UploadResultDTO uploadDTO : reportDTO.getUploads()) {

            ReportAttachFile attachFile = modelMapper.map(uploadDTO , ReportAttachFile.class);

            attachFile.setQ_id(reportDTO.getQ_id());

            reportFileMapper.insertBoard(attachFile);
        }
    }

    @Override
    public void remove(Integer q_id) {

        reportMapper.delete(q_id);
    }


    @Override
    public List<UploadResultDTO> getFiles(Integer q_id) {
        //여기까지 들어오는 데이터는 vo
        List<ReportAttachFile> attachFiles = reportMapper.selectFiles(q_id);

        //vo를 DTO로 변환 그 이유는 service에서 vo로 작업을 못하고 DTO로 하기때문에 변환해준다
        return attachFiles.stream().map(reportAttachFile -> modelMapper.map(reportAttachFile, UploadResultDTO.class))
                .collect(Collectors.toList());
    }
}
