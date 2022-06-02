package com.sync.mapper;

import com.sync.domain.NoticeVO;
import com.sync.dto.ListDTO;

import java.util.List;

public interface GenericMapper <E, K>{

    List<E> selectList(ListDTO listDTO);

    int getTotal(ListDTO listDTO);



}
