package com.sync.controller;

import com.sync.dto.*;
import com.sync.mapper.DashBoardMapper;
import com.sync.service.CourseService;
import com.sync.service.CrewService;
import com.sync.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
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


    @GetMapping("/hello") //과거의 servlet처럼 URLMapping을 안주고, get,post 방식 다 어노테이션으로 처리한다.
    public void hello(){ //파라미터의 제약도, 리턴타입에 대한 제약도 없기 때문에 public으로 메소드 선언
        log.info("Hello.........");
    }

    @GetMapping("/login")
    public void login(){

    }
    @GetMapping("/home")
    public void mainPage(ListDTO listDTO, Model model){

        //크루 총 개수 + 신규
        ListResponseDTO<CrewDTO> crewList = crewService.getList(listDTO);
        int crewTotal = crewList.getTotal();
        int crewTotalNow = dashBoardMapper.crewTotalNow();
        model.addAttribute("crewTotal", new TotalDTO(crewTotal,crewTotalNow));

        //코스 총 개수 + 신규
        ListResponseDTO<CourseDTO> courseList = courseService.getList(listDTO);
        int courseTotal = courseList.getTotal();
        int courseTotalNow = dashBoardMapper.courseTotalNow();
        model.addAttribute("courseTotal",new TotalDTO(courseTotal,courseTotalNow));

        //회원 총 개수 + 신규
        ListResponseDTO<MemberDTO> memberList = memberService.getList(listDTO);
        int memberTotal = memberList.getTotal();
        int memberTotalNow = dashBoardMapper.memberTotalNow();
        model.addAttribute("memberTotal",new TotalDTO(memberTotal,memberTotalNow));

        //그래프(월별)
        //월별 맴버 증가도

        //월별 코스 등록
        List<Map<String, Object>> courseMonth = courseService.courseMonth();

        List<String> dateMonthC = courseMonth.stream().map(c -> "\""+c.get("dateMonth") + "월\"").collect(Collectors.toList());
        List<Object> cTotal = courseMonth.stream().map(c -> c.get("cTotal")).collect(Collectors.toList());






    }
}
