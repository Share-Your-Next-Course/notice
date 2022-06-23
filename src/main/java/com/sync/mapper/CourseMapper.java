package com.sync.mapper;

import com.sync.domain.CourseVO;
import com.sync.domain.MemberAttachFileVO;

import java.util.List;
import java.util.Map;

public interface CourseMapper extends GenericMapper<CourseVO,Integer> {
    //인터페이스의 상속기능
    List<MemberAttachFileVO> selectFiles(Integer m_id);

    void insert(CourseVO courseVO);

    void delete(Integer cs_id);

    CourseVO selectOne(Integer cs_id);

    void update(CourseVO courseVO);

    //월별 코스증가율
    List<Map<String, Object>> courseMonth();
    //지역별 코스등록
    List<Map<String, Object>> courseAddr();

}
