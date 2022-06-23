package com.sync.mapper;

import java.util.List;
import java.util.Map;

public interface DashBoardMapper {

    int crewTotalNow();

    int courseTotalNow();

    int memberTotalNow();

    List<Map<String, Object>> crewCount();
    List<Map<String, Object>> memberCount();
    List<Map<String, Object>> courseCount();

}
