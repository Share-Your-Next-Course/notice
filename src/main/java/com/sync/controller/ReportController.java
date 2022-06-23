package com.sync.controller;

import com.sync.dto.*;
import com.sync.service.ReportService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Log4j2
@Controller
@RequestMapping("/report/")
@RequiredArgsConstructor
public class ReportController {

    private final ReportService reportService;

    @GetMapping("/")
    public String basic(){

        return  "redirect:/report/list";
    }

    //void 일때는 자동으로 경로를 타게됨
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/list")
    public void list(ListDTO listDTO , Model model){

        log.info("report list.........");

        log.info(listDTO);

        ListResponseDTO<ReportDTO> responseDTO  = reportService.getList(listDTO);


        model.addAttribute("dtoList",responseDTO.getDtoList());

        int total = responseDTO.getTotal();

        model.addAttribute("pageMaker",new PageMaker(listDTO.getPage(),total));

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/register")
    public void registerGET(){

    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/register")
    public String registerPOST(ReportDTO reportDTO, RedirectAttributes rttr){

        log.info("----------------------");
        log.info(reportDTO);

        reportDTO.setCategory("R");
        reportService.register(reportDTO);

        rttr.addFlashAttribute("result",123);

        return "redirect:/report/list";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/read/{q_id}")
    public String read(@PathVariable("q_id") Integer q_id , ListDTO listDTO, Model model){

        log.info("==============");

        log.info(q_id);

        log.info(listDTO);

        model.addAttribute("dto",reportService.getOne(q_id));

        return "/report/read";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/modify/{q_id}")
    public String modify(@PathVariable("q_id") Integer q_id , ListDTO listDTO, Model model){

        log.info("==============");

        log.info(q_id);

        log.info(listDTO);

        model.addAttribute("dto",reportService.getOne(q_id));

        return "/report/modify";
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/remove/{q_id}")
    public String removePost(@PathVariable("q_id") Integer q_id,RedirectAttributes rttr){
        log.info("--------------");
        log.info("--------------");
        log.info("remove" + q_id);



        reportService.remove(q_id);

        log.info("--------------");
        rttr.addFlashAttribute("result","removed");
        return "redirect:/report/list";
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/modify/{q_id}")
    public String removePost(@PathVariable("q_id") Integer q_id ,ReportDTO reportDTO ,ListDTO listDTO , RedirectAttributes rttr){
        log.info("--------------");
        log.info("--------------");
        reportDTO.setQ_id(q_id);
        log.info("modify" + reportDTO);

        reportService.update(reportDTO);

        log.info("--------------");

        rttr.addFlashAttribute("result","modified");

        return "redirect:/report/read/"+q_id + listDTO.getLink();
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping({"/remove/{q_id}"})
    public String getNotSupported(){

        return "redirect:/report/list";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/files/{q_id}")
    @ResponseBody
    public List<UploadResultDTO> getFiles(@PathVariable("q_id") Integer q_id){

        return reportService.getFiles(q_id);
    }
}
