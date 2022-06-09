package com.sync.mapper;


import com.sync.dto.ListDTO;

import java.util.List;

public interface QuestionGenericMapper<E,K>{


    List<E> selectList(ListDTO listDTO);

    int getTotal(ListDTO listDTO);


}
