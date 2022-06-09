package com.sync.controller;

import com.sync.dto.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import com.sync.service.QuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Log4j2
@Controller
@RequestMapping("/question/")
@RequiredArgsConstructor
public class QuestionController {

    private final QuestionService questionService;

    @GetMapping("/")
    public String basic(){

        return  "redirect:/question/list";
    }

    //void 일때는 자동으로 경로를 타게됨
    @GetMapping("/list")
    public void list(ListDTO listDTO , Model model){

        log.info("question list.........");

        log.info(listDTO);

        ListResponseDTO<QuestionDTO> responseDTO  = questionService.getList(listDTO);


        model.addAttribute("dtoList",responseDTO.getDtoList());

        int total = responseDTO.getTotal();

        model.addAttribute("pageMaker",new PageMaker(listDTO.getPage(),total));

    }

    @GetMapping("/register")
    public void registerGET(){

    }

    @PostMapping("/register")
    public String registerPOST(QuestionDTO questionDTO, RedirectAttributes rttr){

        log.info("----------------------");
        log.info(questionDTO);

        questionDTO.setCategory("Q");
        questionService.register(questionDTO);

        rttr.addFlashAttribute("result",123);

        return "redirect:/question/list";
    }

    @GetMapping("/read/{q_id}")
    public String read(@PathVariable("q_id") Integer q_id , ListDTO listDTO, Model model){

        log.info("==============");

        log.info(q_id);

        log.info(listDTO);

        model.addAttribute("dto",questionService.getOne(q_id));

        return "/question/read";
    }

    @GetMapping("/modify/{q_id}")
    public String modify(@PathVariable("q_id") Integer q_id , ListDTO listDTO, Model model){

        log.info("==============");

        log.info(q_id);

        log.info(listDTO);

        model.addAttribute("dto",questionService.getOne(q_id));

        return "/question/modify";
    }
    @PostMapping("/remove/{q_id}")
    public String removePost(@PathVariable("q_id") Integer q_id,RedirectAttributes rttr){
        log.info("--------------");
        log.info("--------------");
        log.info("remove" + q_id);



        questionService.remove(q_id);

        log.info("--------------");
        rttr.addFlashAttribute("result","removed");
        return "redirect:/question/list";
    }

    @PostMapping("/modify/{q_id}")
    public String removePost(@PathVariable("q_id") Integer q_id ,QuestionDTO questionDTO ,ListDTO listDTO , RedirectAttributes rttr){
        log.info("--------------");
        log.info("--------------");
        questionDTO.setQ_id(q_id);
        log.info("modify" + questionDTO);

        questionService.update(questionDTO);

        log.info("--------------");

        rttr.addFlashAttribute("result","modified");

        return "redirect:/question/read/"+q_id + listDTO.getLink();
    }

    @GetMapping({"/remove/{q_id}"})
    public String getNotSupported(){

        return "redirect:/question/list";
    }
    @GetMapping("/files/{q_id}")
    @ResponseBody
    public List<UploadResultDTO> getFiles(@PathVariable("q_id") Integer q_id){

        return questionService.getFiles(q_id);
    }

}
