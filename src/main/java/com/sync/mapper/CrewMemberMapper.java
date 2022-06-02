package com.sync.mapper;

import com.sync.domain.CrewMemberListVO;
import com.sync.domain.CrewMemberVO;
import com.sync.dto.ListDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CrewMemberMapper extends GenericMapper<CrewMemberVO, Integer> {

    List<CrewMemberListVO> selectListOfCrew(@Param("cr_id")Integer cr_id, @Param("listDTO")ListDTO listDTO,@Param("size")int size, @Param("skip")int skip);

    void insertCrewMember(CrewMemberVO crewMemberVO);

    void insertCrewMembers(CrewMemberVO crewMemberVO);

    int selectTotalOfCrew(@Param("cr_id")Integer cr_id, @Param("listDTO")ListDTO listDTO);

    List<Map<String,Object>> crewMemberAddr(Integer cr_id);

    void updateAsRemoved(Integer cm_id);}
