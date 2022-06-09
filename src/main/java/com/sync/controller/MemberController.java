package com.sync.controller;

import com.sync.dto.*;
import com.sync.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Log4j2
@Controller
@RequestMapping("/member/")
@RequiredArgsConstructor //생성자 자동생성
public class MemberController {

    private final MemberService memberService; //boardService타입의 객체 의존성 주입

    @GetMapping({"/read/{m_id}"})
    public String read(@PathVariable("m_id") Integer m_id, MemberDTO memberDTO, Model model){

        log.info("=============================");

        log.info(m_id);

        log.info(memberDTO);

        model.addAttribute("dto", memberService.getOne(m_id));

        return "/member/read";

    }

    @GetMapping({"/modify/{m_id}"})
    public String modifyGET(@PathVariable("m_id") Integer m_id, ListDTO listDTO, Model model){

        log.info("=============================");

        log.info(m_id);

        log.info(listDTO);

        model.addAttribute("dto", memberService.getOne(m_id));

        return "/member/modify";

    }


    //list로 redirect하는 메소드
    @GetMapping("/") //매핑
    public String basic(){ // board로 들어오면 list로 redirct하는 메소드

        return "list"; //redirect: 으로 시작하면 무조건 redirect이다.
    }

    //list.jsp를 get방식으로 requerst 메소드
    @GetMapping("/list")
    public void list(ListDTO listDTO, Model model){ //void의 경우 무조건 경로의 jsp가 된다. //파라미터로 listDTO와 model을 던져준다.

        log.info("list....호출 중");
        log.info(listDTO);

        ListResponseDTO<MemberDTO> responseDTO = memberService.getList(listDTO);
        //화연에 전달하기 위해서 memberDTO의 목록이 필요하다.
        // listDTO를 전달해서 Service에 있는 getList 메소드를 호출한다.

        model.addAttribute("dtoList",responseDTO.getDtoList());

        int total = responseDTO.getTotal();

        model.addAttribute("pageMaker", new PageMaker(listDTO.getPage(),total));
        //담아서 전달한다.

        //member 회원분포도(지역)
        List<Map<String, Object>> member = memberService.memberAddr();

        List<String> addr = member.stream().map(m -> "\""+m.get("addr")+ "\"")
                .collect(Collectors.toList());

        List<Object> count = member.stream().map(m -> m.get("count")).collect(Collectors.toList());

        model.addAttribute("count",count);
        model.addAttribute("addr",addr);
        
        //member 성별
        List<Map<String, Object>> gender = memberService.memberGender();
        List<String> memberGender = gender.stream().map(g -> g.get("gender").equals("F")? "\""+"여성"+"\"" : "\"" +"남성"+"\"" ).collect(Collectors.toList());

        List<Object> genderCount = gender.stream().map(g -> g.get("count")).collect(Collectors.toList());

        model.addAttribute("memberGender",memberGender);
        model.addAttribute("genderCount",genderCount);

    }

    // register.jsp를 get방식으로 requerst 메소드
    @GetMapping("/register")
    public void registerGet(){

    }

    // 등록할 때 쓰는 POST 메소드
    @PostMapping("/register")
    public String registerPOST(MemberDTO memberDTO, RedirectAttributes rttr){
        //파라미터의 자동 수집으로 boardDTO를 넣어준다. request.getparameter를 하지 않아도, 알아서 수집한다.
         log.info("-----post방식으로 동작 중인지 확인 중입니다.---");
         log.info(memberDTO); //boardDTO 수집이 제대로 되었는지 확인한다.

        memberService.register(memberDTO);

        rttr.addFlashAttribute("result",123);
        // FlashAttribute는 세션에 결과를 담고, 한 번만 데이터를 쓰고 영원히 사라진다.
        // 일회용으로 데이터를 전달하기 위해 사용


        return "member/list";
    }

    @GetMapping("/files/{m_id}")
    @ResponseBody
    public List<MemberUploadResultDTO> getFiles(@PathVariable("m_id") Integer m_id){

        return memberService.getFiles(m_id);
    }

}
