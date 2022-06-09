package com.sync.service;

import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.NoticeDTO;
import com.sync.dto.UploadResultDTO;

import java.util.List;

public interface NoticeService {

    ListResponseDTO<NoticeDTO> getList(ListDTO listDTO);

    NoticeDTO getOne(Integer nt_id);

    void update(NoticeDTO noticeDTO);

    void remove(Integer nt_id);

    void register(NoticeDTO noticeDTO);

    List<UploadResultDTO> getFiles(Integer nt_id);


}