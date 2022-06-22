package com.sync.controller;



import com.sync.dto.CourseDTO;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.PageMaker;
import com.sync.service.CourseService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/course")
@RequiredArgsConstructor
public class CourseController {

    private final CourseService courseService;


    //list로 redirect하는 메소드
    @GetMapping("/") //매핑
    public String basic(){ // course로 들어오면 list로 redirct하는 메소드

        return "redirect:/course/list"; //redirect: 으로 시작하면 무조건 redirect이다.
    }



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
//
//        log.info("==================================");

    }

    @GetMapping("/read")
    public void readGet(){

    }

    @GetMapping("/coordinates")
    public void readCoord(){

    }

    @GetMapping("/recordMain")
    public void startRecord(){

    }

    @GetMapping("/stopWatch")
    public void getWatch(){

    }
}
