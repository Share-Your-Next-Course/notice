package com.sync.mapper;

import com.sync.domain.Question;
import com.sync.domain.QuestionReply;
import com.sync.dto.ListDTO;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations ="file:src/main/webapp/WEB-INF/root-context.xml" )
public class QuestionReplyMapperTests {

    @Autowired(required = false)
    private QuestionReplyMapper questionReplyMapper;

    @Test
    public void testmInsert(){

        Question question = Question.builder().q_id(100).build();

        for (int i = 0; i<100; i++) {
            QuestionReply questionReply = QuestionReply.builder()
                    .q_id(question.getQ_id())
                    .replyText("100번의 댓글")
                    .m_id(1)
                    .adm_id(1)
                    .build();

            log.info(questionReply);

            questionReplyMapper.adinsert(questionReply);
        }

    }

    @Autowired(required = false)
    private QuestionReplyMapper mapper;

    @Test
    public void testList1(){

        ListDTO listDTO = new ListDTO();
        Integer q_id = 100;

        mapper.selectListOfBoard(q_id,listDTO).forEach(questionReply -> log.info(questionReply));

    }
}



