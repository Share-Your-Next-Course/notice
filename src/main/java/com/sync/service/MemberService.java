package com.sync.service;

import org.springframework.transaction.annotation.Transactional;
import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.MemberDTO;
import com.sync.dto.MemberUploadResultDTO;

import java.util.List;


@Transactional
public interface MemberService {

    void register(MemberDTO memberDTO);

    ListResponseDTO<MemberDTO> getList(ListDTO listDTO);

    MemberDTO getOne(Integer m_id);

    void update(MemberDTO memberDTO);

    void remove(Integer m_id);

    List<MemberUploadResultDTO> getFiles(Integer m_id);


}
