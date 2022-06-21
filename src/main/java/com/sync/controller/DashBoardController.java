package com.sync.controller;

import com.sync.dto.*;
import com.sync.mapper.DashBoardMapper;
import com.sync.service.CourseService;
import com.sync.service.CrewService;
import com.sync.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dash")
@Log4j2
@RequiredArgsConstructor
public class DashBoardController {

    private final CrewService crewService;
    private final MemberService memberService;
    private final CourseService courseService;
    private final DashBoardMapper dashBoardMapper;


    @GetMapping(value = "/cartA" , produces = MediaType.APPLICATION_JSON_VALUE)
    public TotalDTO getCrewTotal(ListDTO listDTO){

        //크루 총 개수 + 신규
        ListResponseDTO<CrewDTO> crewList = crewService.getList(listDTO);
        int crewTotal = crewList.getTotal();
        int crewTotalNow = dashBoardMapper.crewTotalNow();

        //코스 총 개수 + 신규
        ListResponseDTO<CourseDTO> courseList = courseService.getList(listDTO);
        int courseTotal = courseList.getTotal();
        int courseTotalNow = dashBoardMapper.courseTotalNow();

        //회원 총 개수 + 신규
        ListResponseDTO<MemberDTO> memberList = memberService.getList(listDTO);
        int memberTotal = memberList.getTotal();
        int memberTotalNow = dashBoardMapper.memberTotalNow();

        return new TotalDTO(crewTotal, crewTotalNow, courseTotal, courseTotalNow, memberTotal, memberTotalNow);
    }
}
