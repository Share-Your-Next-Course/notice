package com.sync.mapper;

import com.sync.domain.Admin;
import com.sync.domain.Authority;
import org.apache.ibatis.annotations.Insert;

public interface AdminMapper {

    @Insert("insert into tbl_admin(username, pw, name, email, phone) values( #{username}, #{pw}, #{name}, #{email}, #{phone})")
    void register(Admin admin);

    @Insert("insert into tbl_authority( rolename, username) values( #{rolename}, #{username})")
    void addAuth(Authority authority);

    Admin selectOne(String username);

}
