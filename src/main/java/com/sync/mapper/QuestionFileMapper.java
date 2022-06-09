package com.sync.mapper;

import com.sync.domain.QuestionAttachFile;

public interface QuestionFileMapper {

    void insert(QuestionAttachFile attachFile);

    void insertBoard(QuestionAttachFile attachFile);

    void delete(Integer q_id);

}
