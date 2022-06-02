package com.sync.mapper;

import com.sync.domain.MemberAttachFileVO;
import com.sync.domain.MemberVO;

import java.util.List;

public interface MemberMapper extends GenericMapper<MemberVO,Integer> {
    //인터페이스의 상속기능
    List<MemberAttachFileVO> selectFiles(Integer m_id);

    void insert(MemberVO memberVO);

    void delete(Integer m_id);

    MemberVO selectOne(Integer m_id);

    void update(MemberVO memberVO);
}
