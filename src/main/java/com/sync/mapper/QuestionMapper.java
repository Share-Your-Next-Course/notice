package com.sync.mapper;

import org.apache.ibatis.annotations.Param;
import com.sync.domain.QuestionAttachFile;
import com.sync.domain.Question;
import com.sync.dto.ListDTO;

import java.util.List;

public interface QuestionMapper extends QuestionGenericMapper<Question,Integer> {

    void adminsert (Question question);

    void minsert (Question question);

    List<Question> admquestionList (ListDTO listDTO);

    List<Question> mquestionList (ListDTO listDTO);

    void delete(Integer q_id);

    Question selectOne(Integer q_id);

    void update(Question question);

     void updateReplyCount(@Param("q_id") Integer q_id, @Param("amount") int amount);

    //더보기 안에 들어갈 파일들
    List<QuestionAttachFile> selectFiles(Integer q_id);

}

