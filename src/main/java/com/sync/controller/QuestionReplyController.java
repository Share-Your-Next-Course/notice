package com.sync.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import com.sync.dto.ListDTO;
import com.sync.dto.QuestionReplyDTO;
import com.sync.service.QuestionReplyService;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/replies/")
@Log4j2
@RequiredArgsConstructor
public class QuestionReplyController {

    private final QuestionReplyService questionReplyService;

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping(value = "/list/{q_id}" , produces = MediaType.APPLICATION_JSON_VALUE)
    public List<QuestionReplyDTO> getListOfBoard(@PathVariable("q_id") Integer q_id, ListDTO listDTO){
        log.info("reply list.."+listDTO);
        return questionReplyService.getListOfquestion(q_id,listDTO);
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/")
    public Map<String , Integer> regiser (@RequestBody QuestionReplyDTO questionReplyDTO){
        log.info("=====================");
        log.info(questionReplyDTO);

        int totalCount = questionReplyService.register(questionReplyDTO);

        return Map.of("result",totalCount);
    }

    @PreAuthorize("isAuthenticated()")
    @DeleteMapping("/{qr_id}")
    public Map<String ,String>remove(@PathVariable("qr_id") Integer qr_id){

        log.info("=================");

        log.info("remove..." + qr_id);

        questionReplyService.remove(qr_id);

        return Map.of("result","success");
    }

    @PreAuthorize("isAuthenticated()")
    @PutMapping("/modify/")
    public Map<String , Integer> modify(@RequestBody QuestionReplyDTO questionReplyDTO) {

        log.info(questionReplyDTO);

        int totalCount = questionReplyService.update(questionReplyDTO);

        return Map.of("result",totalCount);
    }

}
