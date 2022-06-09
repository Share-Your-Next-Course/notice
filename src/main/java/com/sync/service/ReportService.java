package com.sync.service;

import com.sync.dto.*;

import java.util.List;

public interface ReportService {

    void register(ReportDTO reportDTO);

    ListResponseDTO<ReportDTO> getList(ListDTO listDTO);

    ReportDTO getOne(Integer q_id);

    void update(ReportDTO reportDTO);

    void remove(Integer q_id);

    List<UploadResultDTO> getFiles (Integer q_id);
}
