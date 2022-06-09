package com.sync.mapper;

import com.sync.domain.CourseVO;
import com.sync.domain.MemberAttachFileVO;
import com.sync.domain.MemberVO;

import java.util.List;

public interface CourseMapper extends GenericMapper<CourseVO,Integer> {
    //인터페이스의 상속기능
    List<MemberAttachFileVO> selectFiles(Integer m_id);

    void insert(CourseVO courseVO);

    void delete(Integer cs_id);

    CourseVO selectOne(Integer cs_id);

    void update(CourseVO courseVO);

}
