package com.sync.controller;


import com.sync.dto.*;
import com.sync.service.CourseService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    @GetMapping("/read/{cs_id}")
    public String courseReadGet(@PathVariable("cs_id") Integer cs_id, ListDTO listDTO, Model model){
        log.info("course read....");
        log.info("cs_id: " + cs_id);
        log.info(courseService.getOne(cs_id));
        model.addAttribute("dtoList",courseService.getOne(cs_id));

        return "/course/read";

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/register")
    public void CourseRegisterGet(){

    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/register")
    public String CourseRegisterPost(CourseDTO courseDTO, RedirectAttributes rttr){
        log.info("course register....");
        log.info(courseDTO);
        courseService.register(courseDTO);
        rttr.addFlashAttribute("result", "register");
        return "redirect:/course/list" ;
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/modify/{cs_id}")
    public String modify(@PathVariable("cs_id") Integer cs_id, ListDTO listDTO, Model model){
        log.info("=======================");
        log.info(cs_id);
        log.info(listDTO);

        model.addAttribute("dtoList", courseService.getOne(cs_id));
        return "/course/modify";
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/modify/{cs_id}")
    public String modifyPost(@PathVariable("cs_id") Integer cs_id, CourseDTO courseDTO, ListDTO listDTO, RedirectAttributes rttr){
        log.info("------------------------");
        courseDTO.setCs_id(cs_id);
        log.info("modify" + cs_id);

        courseService.update(courseDTO);
        log.info("------------------------");

        rttr.addFlashAttribute("result", "modified");
        return "redirect:/course/read/" + cs_id + listDTO.getLink();

    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/remove/{cs_id}")
    public String removePost(@PathVariable("cs_id") Integer cs_id,RedirectAttributes rttr){
        log.info("--------------");
        log.info("--------------");
        log.info("remove" + cs_id);

        courseService.remove(cs_id);

        log.info("--------------");
        rttr.addFlashAttribute("result","removed");
        return "redirect:/course/list";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping({"/remove/{cs_id}"})
    public String getNotSupported(){

        return "redirect:/course/list";
    }
}