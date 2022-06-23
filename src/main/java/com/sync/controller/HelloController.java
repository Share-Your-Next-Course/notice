package com.sync.controller;

import com.sync.dto.*;
import com.sync.mapper.DashBoardMapper;
import com.sync.service.CourseService;
import com.sync.service.CrewService;
import com.sync.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@Log4j2
@RequiredArgsConstructor
public class HelloController {

    private final CrewService crewService;
    private final MemberService memberService;
    private final CourseService courseService;
    private final DashBoardMapper dashBoardMapper;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/hello") //과거의 servlet처럼 URLMapping을 안주고, get,post 방식 다 어노테이션으로 처리한다.
    public void hello(){ //파라미터의 제약도, 리턴타입에 대한 제약도 없기 때문에 public으로 메소드 선언
        log.info("Hello.........");
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/login")
    public void login(){

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/home")
    public void mainPage(ListDTO listDTO, Model model){

//        //크루 총 개수 + 신규
//        ListResponseDTO<CrewDTO> crewList = crewService.getList(listDTO);
//        int crewTotal = crewList.getTotal();
//        int crewTotalNow = dashBoardMapper.crewTotalNow();
//        model.addAttribute("crewTotal", new TotalDTO(crewTotal,crewTotalNow));
//
//        //코스 총 개수 + 신규
//        ListResponseDTO<CourseDTO> courseList = courseService.getList(listDTO);
//        int courseTotal = courseList.getTotal();
//        int courseTotalNow = dashBoardMapper.courseTotalNow();
//        model.addAttribute("courseTotal",new TotalDTO(courseTotal,courseTotalNow));
//
//        //회원 총 개수 + 신규
//        ListResponseDTO<MemberDTO> memberList = memberService.getList(listDTO);
//        int memberTotal = memberList.getTotal();
//        int memberTotalNow = dashBoardMapper.memberTotalNow();
//        model.addAttribute("memberTotal",new TotalDTO(memberTotal,memberTotalNow));

        //그래프(월별)
        //월별 코스 증가도
        List<Map<String, Object>> courseCount = dashBoardMapper.courseCount();
        List<String> dateMonthC = courseCount.stream().map(c -> "\"" + c.get("dateMonth") + "\"").collect(Collectors.toList());
        List<Object> cntC = courseCount.stream().map(c -> c.get("cnt")).collect(Collectors.toList());
        model.addAttribute("course",new TotalDTO(dateMonthC,cntC));

        //월별 크루 등록
        List<Map<String, Object>> crewCount = dashBoardMapper.crewCount();
        List<String> dateMonthCr = crewCount.stream().map(cr -> "\"" + cr.get("dateMonth") + "\"").collect(Collectors.toList());
        List<Object> cntCr = crewCount.stream().map(cr -> cr.get("cnt")).collect(Collectors.toList());
        model.addAttribute("crew",new TotalDTO(dateMonthCr,cntCr));

        //월별 회원 증가
        List<Map<String, Object>> memberCount = dashBoardMapper.memberCount();
        List<String> dateMonthM = memberCount.stream().map(m -> "\"" + m.get("dateMonth") + "\"").collect(Collectors.toList());
        List<Object> cntM = memberCount.stream().map(m -> m.get("cnt")).collect(Collectors.toList());
        model.addAttribute("member",new TotalDTO(dateMonthM,cntM));

        //지역별 코스등록
        List<Map<String, Object>> courseAddr = courseService.courseAddr();
        List<String> addr = courseAddr.stream().map(c -> "\"" + c.get("addr") + "\"").collect(Collectors.toList());
        List<Object> count = courseAddr.stream().map(c -> c.get("count")).collect(Collectors.toList());
        model.addAttribute("courseAddr",new TotalDTO(addr,count));

        //코스 실시간 업데이트
        ListResponseDTO<CourseDTO> responseDTO = courseService.getList(listDTO);
        model.addAttribute("dtoList",responseDTO.getDtoList());

        //크루 랭킹
        ListResponseDTO<CrewDTO> list = crewService.getList(listDTO);
        model.addAttribute("crewList", list.getDtoList());
    }




}
