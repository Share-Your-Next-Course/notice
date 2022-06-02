package com.sync.mapper;

import com.sync.domain.CrewAttachFileVO;
import com.sync.domain.CrewVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CrewMapper extends GenericMapper<CrewVO, Integer> {

    void insert(CrewVO crewVO);

    void delete(Integer cr_id);

    CrewVO selectOne(Integer cr_id);

    void update(CrewVO crewVO);

    void updateCrewMemberCount(@Param("cr_id") Integer cr_id, @Param("amount") int amount);

    List<CrewAttachFileVO> selectFiles(Integer cr_id);

    List<CrewVO> crewAddrTotal();

    List<Map<String,Object>> crewMonth();
}
