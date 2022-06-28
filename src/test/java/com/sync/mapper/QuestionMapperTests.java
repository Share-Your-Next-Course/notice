package com.sync.mapper;

import com.sync.domain.Question;
import com.sync.dto.ListDTO;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations ="file:src/main/webapp/WEB-INF/root-context.xml" )
public class QuestionMapperTests {

    @Autowired(required = false)
    private QuestionMapper questionMapper;

    @Test
    public void testInsert(){

        for (int i = 0; i <50; i++) {

            Question question = Question.builder()
                    .title("제목")
                    .content("내용")
                    .adm_id(10)
                    .category("Q")
                    .delflag(0)
                    .build();
            questionMapper.adminsert(question);
        }
    }
    @Test
    public void testInsert2(){


        for (int i = 0; i <1000; i++) {


            Question question = Question.builder()
                    .title("제목")
                    .content("내용")
                    .m_id(1)
                    .category("Q")
                    .delflag(0)
                    .build();
            questionMapper.minsert(question);
        }
    }

    @Test
    public void testSelectList(){
        ListDTO listDTO = new ListDTO();

        listDTO.setType("tcw");
        listDTO.setKeyword("11");

        List<Question> boardList = questionMapper.admquestionList(listDTO);

        boardList.forEach(board -> log.info(board));
    }

    @Test
    public void testSelectList1(){
        ListDTO listDTO = new ListDTO();

        listDTO.setType("tcw");
        listDTO.setKeyword("11");

        List<Question> boardList = questionMapper.mquestionList(listDTO);

        boardList.forEach(board -> log.info(board));
    }

    @Test
    public void testSelectOne(){
        int q_id = 100;

        Question question = questionMapper.selectOne(q_id);


        log.info(question);
    }

    @Test
    public void testDelete(){
        int q_id = 100;

        questionMapper.delete(q_id);
    }

}
