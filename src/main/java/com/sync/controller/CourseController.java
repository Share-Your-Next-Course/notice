package com.sync.controller;


import com.sync.dto.CourseDTO;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.PageMaker;
import com.sync.service.CourseService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@Log4j2
@RequestMapping("/course")
@RequiredArgsConstructor
public class CourseController {

    private final CourseService courseService;

    //list로 redirect하는 메소드
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/") //매핑
    public String basic(){ // course로 들어오면 list로 redirct하는 메소드

        return "redirect:/course/list"; //redirect: 으로 시작하면 무조건 redirect이다.
    }


    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/list")
    public void list(ListDTO listDTO, Model model){
        log.info("==================================");
        log.info("---------course list");

        log.info(listDTO);
        log.info("==================================");


        ListResponseDTO<CourseDTO> responseDTO = courseService.getList(listDTO);

        model.addAttribute("dtoList",responseDTO.getDtoList());

        int total = responseDTO.getTotal();

        log.info(total);
        model.addAttribute("pageMaker", new PageMaker(listDTO.getPage(),total));

        //월별 코스 등록
        List<Map<String, Object>> courseMonth = courseService.courseMonth();

        List<String> dateMonth = courseMonth.stream().map(c -> "\""+c.get("dateMonth") + "월\"").collect(Collectors.toList());
        List<Object> cTotal = courseMonth.stream().map(c -> c.get("cTotal")).collect(Collectors.toList());

        model.addAttribute("cTotal",cTotal);
        model.addAttribute("dateMonth", dateMonth);

        //지역별 코스등록
        List<Map<String, Object>> courseAddr = courseService.courseAddr();

        List<String> addr = courseAddr.stream().map(c -> "\"" + c.get("addr") + "\"").collect(Collectors.toList());

        List<Object> count = courseAddr.stream().map(c -> c.get("count")).collect(Collectors.toList());

        model.addAttribute("addr",addr);
        model.addAttribute("count",count);

    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/read")
    public void readGet(){

    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/coordinates")
    public void readCoord(){

    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/recordMain")
    public void startRecord(){

    }
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/stopWatch")
    public void getWatch(){

    }
}
