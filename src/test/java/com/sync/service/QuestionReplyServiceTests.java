package com.sync.service;

import com.sync.dto.QuestionReplyDTO;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations ="file:src/main/webapp/WEB-INF/root-context.xml" )
public class QuestionReplyServiceTests {

    @Autowired
    private QuestionReplyService questionReplyService;

    @Test
    public void testInsert(){

        QuestionReplyDTO questionReplyDTO = new QuestionReplyDTO();

        for (int i = 0; i <20 ; i++) {
            questionReplyDTO.setQ_id(1659);
            questionReplyDTO.setReplyText("댓굴 서비스를 통한 댓글");
            questionReplyDTO.setAdm_id(1);

            questionReplyService.register(questionReplyDTO);
        }

    }

    @Test
    public void testLink(){
        //이미지 링크
        String mainImage = "/view?fileName=2022/05/30/s_a5ec0c25-0efc-40b3-a9c4-75be4e496d94_화면 캡처 2022-04-26 095825.png";

        //s_ 잘라내기
        int idx = mainImage.indexOf("s_");
        String first = mainImage.substring(0,idx);
        String second = mainImage.substring(idx+2);

        log.info(first);
        log.info(second);

        log.info(first+second);

    }

}
