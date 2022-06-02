package com.sync.mapper;

<<<<<<< HEAD

=======
import com.sync.domain.NoticeVO;
>>>>>>> origin/master
import com.sync.dto.ListDTO;

import java.util.List;

<<<<<<< HEAD
public interface GenericMapper<E,K>{
=======
public interface GenericMapper <E, K>{
>>>>>>> origin/master

    List<E> selectList(ListDTO listDTO);

    int getTotal(ListDTO listDTO);


<<<<<<< HEAD
=======

>>>>>>> origin/master
}
