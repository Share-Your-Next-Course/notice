package com.sync.mapper;


import com.sync.domain.MemberAttachFileVO;

public interface MemberFileMapper {
    void insert(MemberAttachFileVO memberAttachFileVO);
    void insertMember(MemberAttachFileVO memberAttachFileVO);
    void delete(Integer m_id);
}
