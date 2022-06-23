package com.sync.service;

import com.sync.dto.ListDTO;
import com.sync.dto.ListResponseDTO;
import com.sync.dto.MemberDTO;
import com.sync.dto.MemberUploadResultDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;


@Transactional
public interface MemberService {

    ListResponseDTO<MemberDTO> getList(ListDTO listDTO);

    MemberDTO getOne(Integer m_id);

    void update(MemberDTO memberDTO);

    void remove(Integer m_id);

    void register(MemberDTO memberDTO);



    List<MemberUploadResultDTO> getFiles(Integer m_id);

    List<Map<String, Object>> memberAddr();

    List<Map<String, Object>> memberGender();
}
