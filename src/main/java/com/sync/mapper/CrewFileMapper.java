package com.sync.mapper;

import com.sync.domain.CrewAttachFileVO;

public interface CrewFileMapper {

    void insert(CrewAttachFileVO attachFile);

    void delete(Integer cr_id);

    void insertCrew(CrewAttachFileVO attachFile);
}
