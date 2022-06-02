package com.sync.service;

import com.sync.domain.CourseVO;
import com.sync.dto.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface CourseService {

    void register(CourseDTO courseDTO);

    ListResponseDTO<CourseDTO> getList(ListDTO listDTO);

    CourseDTO getOne(Integer cr_id);

    void update(CourseDTO courseDTO);

    void remove(Integer cr_id);

//    List<MemberUploadResultDTO> getFiles(Integer cr_id);

}
