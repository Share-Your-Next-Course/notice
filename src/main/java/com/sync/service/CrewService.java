package com.sync.service;

import com.sync.domain.CrewVO;
import com.sync.dto.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Transactional
public interface CrewService {

    ListResponseDTO<CrewDTO> getList(ListDTO listDTO);

    ListResponseDTO<CrewMemberListDTO> getCrewMemberList(Integer cr_id, ListDTO listDTO);

    CrewDTO getOne(Integer cr_id);

    void remove(Integer cr_id);

    void update(CrewDTO crewDTO);

    void register(CrewDTO crewDTO);

    //첨부파일
    List<UploadResultDTO> getFiles(Integer cr_id);

    //크루통계
    List<CrewDTO> crewAddrTotal();
    List<Map<String,Object>> crewMonth();

    //크루원통계
    List<Map<String,Object>> crewMemberAddr(Integer cr_id);

}
