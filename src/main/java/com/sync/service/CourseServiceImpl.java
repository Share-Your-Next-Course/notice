package com.sync.service;

import com.sync.domain.CourseVO;
import com.sync.dto.CourseDTO;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.mapper.CourseMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class CourseServiceImpl implements CourseService {

    private final CourseMapper courseMapper;
    private final ModelMapper modelMapper;

    @Override
    public ListResponseDTO<CourseDTO> getList(ListDTO listDTO) {

        List<CourseVO> courseVOList = courseMapper.selectList(listDTO);

        List<CourseDTO> dtoList =
                courseVOList.stream().map(courseVO -> modelMapper.map(courseVO, CourseDTO.class))
                        .collect(Collectors.toList());


        return ListResponseDTO.<CourseDTO>builder()
                .dtoList(dtoList)
                .total(courseMapper.getTotal(listDTO))
                .build();
    }




    @Override
    public void register(CourseDTO courseDTO) {

    }

    @Override
    public CourseDTO getOne(Integer cr_id) {
        return null;
    }

    @Override
    public void update(CourseDTO courseDTO) {

    }

    @Override
    public void remove(Integer cr_id) {

    }

    @Override
    public List<Map<String, Object>> courseMonth() {

        List<Map<String, Object>> courseMonth = courseMapper.courseMonth();

        return courseMonth;
    }

    @Override
    public List<Map<String, Object>> courseAddr() {

        List<Map<String, Object>> courseAddr = courseMapper.courseAddr();

        return courseAddr;
    }
}
