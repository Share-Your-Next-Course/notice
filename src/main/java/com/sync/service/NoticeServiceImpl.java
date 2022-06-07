package com.sync.service;


import com.sync.domain.NoticeAttachFileVO;
import com.sync.domain.NoticeVO;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.NoticeDTO;
import com.sync.dto.UploadResultDTO;
import com.sync.mapper.NoticeFileMapper;
import com.sync.mapper.NoticeMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class NoticeServiceImpl implements NoticeService {

    private final NoticeMapper noticeMapper;
    private final ModelMapper modelMapper;
    private final NoticeFileMapper noticeFileMapper;

    @Override
    public ListResponseDTO<NoticeDTO> getList(ListDTO listDTO) {

        List<NoticeVO> noticelist = noticeMapper.selectList(listDTO);

        List<NoticeDTO> dtoList =
                noticelist.stream()
                        .map(notice -> modelMapper.map(notice, NoticeDTO.class))
                        .collect(Collectors.toList());

        return ListResponseDTO.<NoticeDTO>builder()
                .dtoList(dtoList)
                .total(noticeMapper.getTotal(listDTO))
                .build();
    }

    @Override
    public NoticeDTO getOne(Integer nt_id) {
        NoticeVO noticeVO = noticeMapper.selectOne(nt_id);
        NoticeDTO noticeDTO = modelMapper.map(noticeVO, NoticeDTO.class);
        return noticeDTO;


    }

    @Override
    public void update(NoticeDTO noticeDTO) {

        //기존 파일들을 모두 삭제해야 한다
        noticeFileMapper.delete(noticeDTO.getNt_id());

        noticeMapper.update(NoticeVO.builder()
                .nt_id(noticeDTO.getNt_id())
                .title(noticeDTO.getTitle())
                .content(noticeDTO.getContent())
                .build());

        for(UploadResultDTO uploadDTO : noticeDTO.getUploads()){
            NoticeAttachFileVO noticeAttachFileVO = modelMapper.map(uploadDTO, NoticeAttachFileVO.class);
            noticeAttachFileVO.setNt_id(noticeDTO.getNt_id());
            noticeFileMapper.insertNotice(noticeAttachFileVO);
        }

    }

    @Override
    public void register(NoticeDTO noticeDTO) {

        NoticeVO noticeVO = modelMapper.map(noticeDTO, NoticeVO.class);
        List<NoticeAttachFileVO> files =
                noticeDTO.getUploads().stream().map(uploadResultDTO -> modelMapper.map(uploadResultDTO, NoticeAttachFileVO.class))
                        .collect(Collectors.toList());
        log.info("============-------------=============");
        log.info(noticeVO);
        log.info(files);
        noticeMapper.insert(noticeVO);
        files.forEach(file-> noticeFileMapper.insert(file));
        log.info("============-------------=============");

    }

    @Override
    public List<UploadResultDTO> getFiles(Integer nt_id) {
        List<NoticeAttachFileVO> noticeAttachFileVOS = noticeMapper.selectFiles(nt_id);

        return noticeAttachFileVOS.stream().map(noticeAttachFileVO -> modelMapper.map(noticeAttachFileVO, UploadResultDTO.class))
                .collect(Collectors.toList());
    }

    @Override
    public void remove(Integer nt_id) {
        noticeMapper.delete(nt_id);
    }

}
