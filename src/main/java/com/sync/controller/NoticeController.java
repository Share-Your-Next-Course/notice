package com.sync.controller;

import com.sync.dto.*;
import com.sync.service.NoticeService;
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
@RequestMapping("/notice/")
@RequiredArgsConstructor
public class NoticeController {

    private final NoticeService service;


    @GetMapping("/")
    public String basic(){
        return "redirect:/notice/list";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/list")
    public void list(ListDTO listDTO, Model model){
        log.info("notice list...........");
        log.info(listDTO);
        log.info(listDTO.getSkip());

        ListResponseDTO<NoticeDTO> responseDTO = service.getList(listDTO);

        model.addAttribute("dtoList", responseDTO.getDtoList());

        int total = responseDTO.getTotal();

        model.addAttribute("pageMaker", new PageMaker(listDTO.getPage(), total ));

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/register")
    public void registerGET(){

    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/register")
    public String  registerPOST(NoticeDTO noticeDTO, RedirectAttributes rttr){ // title, contents, writer등 파라미터를 자동수집해줌

        log.info("-----------------------");
        log.info(noticeDTO);
        service.register(noticeDTO);

        rttr.addFlashAttribute("result", "registered");
        return "redirect:/notice/list";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/read/{nt_id}")
    public String read(@PathVariable("nt_id") Integer nt_id, ListDTO listDTO, Model model){
        log.info("========================");
        log.info(nt_id);
        log.info(listDTO);

        model.addAttribute("dto", service.getOne(nt_id));
        return "/notice/read";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/modify/{nt_id}")
    public String modify(@PathVariable("nt_id") Integer nt_id, ListDTO listDTO, Model model){
        log.info("=======================");
        log.info(nt_id);
        log.info(listDTO);

        model.addAttribute("dto", service.getOne(nt_id));
        return "/notice/modify";
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/remove/{nt_id}")
    public String removePost(@PathVariable("nt_id") Integer nt_id, RedirectAttributes rttr){
        log.info("------------------------");
        log.info("remove" + nt_id);
        service.remove(nt_id);
        log.info("------------------------");

        rttr.addFlashAttribute("result", "removed");
        return "redirect:/notice/list";

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/remove/{nt_id}")
    public String getNotSupported(){
        return "redirect:/notice/list";
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/modify/{nt_id}")
    public String modifyPost(@PathVariable("nt_id") Integer nt_id, NoticeDTO noticeDTO, ListDTO listDTO, RedirectAttributes rttr){
        log.info("------------------------");
        noticeDTO.setNt_id(nt_id);
        log.info("modify" + nt_id);

        service.update(noticeDTO);
        log.info("------------------------");

        rttr.addFlashAttribute("result", "modified");
        return "redirect:/notice/read/" + nt_id + listDTO.getLink();

    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/files/{nt_id}")
    @ResponseBody
    public List<UploadResultDTO> getFiles(@PathVariable("nt_id")Integer nt_id){
        return service.getFiles(nt_id);
    }




}