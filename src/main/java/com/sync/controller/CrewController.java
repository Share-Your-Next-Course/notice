package com.sync.controller;


import com.sync.dto.*;
import com.sync.service.CrewService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Log4j2
@Controller
@RequestMapping("/crew/")
@RequiredArgsConstructor
public class CrewController {

    private final CrewService service;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/")
    public String basic(){return "/crew/list";}

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/list")
    public void crewList(ListDTO listDTO, Model model){
        log.info("crew List.....");
        log.info(listDTO);

        ListResponseDTO<CrewDTO> list = service.getList(listDTO);
        model.addAttribute("crewList", list.getDtoList());

        int total = list.getTotal();

        model.addAttribute("pageMaker", new PageMaker(listDTO.getPage(),total));


        //크루 분포도(지역)
        List<CrewDTO> crewAddrTotal = service.crewAddrTotal();

        List<String> strAddr = crewAddrTotal.stream().map(addrTotal -> {
            return "\"" + addrTotal.getAddr() +"\"";
        }).collect(Collectors.toList());

        List<Integer> intMtotal = crewAddrTotal.stream().map(addrTotal -> {
            return addrTotal.getMtotal();
        }).collect(Collectors.toList());

        model.addAttribute("strAddr",strAddr);
        model.addAttribute("intMtotal",intMtotal);


        //월별 크루원 증가도
        List<Map<String, Object>> crewMonth = service.crewMonth();

        List<String> dateMonth = crewMonth.stream().map(crew -> {
            return "\""+crew.get("dateMonth")+"월\"";
        }).collect(Collectors.toList());

        List<String> dateTotal = crewMonth.stream().map(crew -> {
            return ""+crew.get("mtotal")+"";
        }).collect(Collectors.toList());

        model.addAttribute("dateMonth", dateMonth);
        model.addAttribute("dateTotal", dateTotal);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/register")
        public void crewRegisterGET(){

    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/register")
        public String crewRegisterPOST(CrewDTO crewDTO, RedirectAttributes rttr){
        log.info("crew register.....");
        log.info(crewDTO);
        service.register(crewDTO);
        rttr.addFlashAttribute("result", "register");
        return "redirect:/crew/list";
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/read/{cr_id}")
    public String crewReadGET(@PathVariable("cr_id") Integer cr_id, ListDTO listDTO, Model model){
        log.info("crew read.....");
        log.info("cr_id : " +cr_id);
        log.info(listDTO);
        ListResponseDTO<CrewMemberListDTO> crewMemberList = service.getCrewMemberList(cr_id,listDTO);
        log.info(crewMemberList.getDtoList());
        model.addAttribute("dtoList",crewMemberList.getDtoList());

        int total = crewMemberList.getTotal();
        model.addAttribute("pageMaker", new PageMaker(listDTO.getPage(),total));

        //크루원 통계
        List<Map<String, Object>> crewMemberAddr = service.crewMemberAddr(cr_id);

        List<String> addr = crewMemberAddr.stream().map(crew -> {
            return "\"" + crew.get("addr") + "\"";
        }).collect(Collectors.toList());

        List<Object> addrTotal = crewMemberAddr.stream().map(crew -> {
            return crew.get("addrTotal");
        }).collect(Collectors.toList());

        log.info(addr);
        log.info(addrTotal);

        model.addAttribute("addr",addr);
        model.addAttribute("addrTotal",addrTotal);

        return "/crew/read";
    }


    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/files/{cr_id}")
    @ResponseBody
    public List<UploadResultDTO> getFiles(@PathVariable("cr_id") Integer cr_id){


        return service.getFiles(cr_id);
    }


//    @GetMapping("/modify/{cr_id}")
//    public String modify(@PathVariable("cr_id") Integer cr_id, ListDTO listDTO, Model model){
//        log.info("crew modify....");
//
//
//        return "/crew/modify";
//    }
//
//
//    @PostMapping("/modify/{cr_id}")
//    public String crewModifyPOST(@PathVariable("cr_id") Integer cr_id, CrewDTO crewDTO, ListDTO listDTO, RedirectAttributes rttr){
//        log.info("crew modify.....");
//
//        return "redirect:/crew/read/"+cr_id+ listDTO.getLink();
//    }
//
//
//
//    @GetMapping({"/remove/{cr_id}"})
//    public String getNotSupported(){
//        return "crew/list";
//    }
//
//    @PostMapping("/remove/{cr_id}")
//    public String crewRemovePOST(@PathVariable("cr_id") Integer cr_id, RedirectAttributes rttr){
//        log.info("crew remove....");
//
//
//        return "crew/list";
//    }



}
