package com.sync.service;

import com.sync.dto.CourseDTO;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
public interface CourseService {

    void register(CourseDTO courseDTO);

    ListResponseDTO<CourseDTO> getList(ListDTO listDTO);

    CourseDTO getOne(Integer cr_id);

    void update(CourseDTO courseDTO);

    void remove(Integer cr_id);

//    List<MemberUploadResultDTO> getFiles(Integer cr_id);

    //월별 코스증가율
    List<Map<String, Object>> courseMonth();
    //지역별 코스등록
    List<Map<String, Object>> courseAddr();

}
