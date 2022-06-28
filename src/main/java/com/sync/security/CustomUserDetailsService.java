package com.sync.security;

import com.sync.domain.Admin;
import com.sync.dto.AdminDTO;
import com.sync.mapper.AdminMapper;
import com.sync.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Log4j2
@RequiredArgsConstructor
@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final MemberMapper memberMapper;
    private final AdminMapper adminMapper;

//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        log.info("======================");
//        log.info(username);
//
//        Member member = memberMapper.selectOne(username);
//        log.info(member);
//        log.info("======================");
//
//        List<SimpleGrantedAuthority> authList = member.getAuthorityList().stream()
//                .map(authority -> new SimpleGrantedAuthority("ROLE_" + authority.getRolename()))
//                .collect(Collectors.toList());
//
//        //username, password, authority list
//        User user = new User(member.getUsername(), member.getPw(), authList);
//
//        return user;
//    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info("======================");
        log.info(username);

        Admin admin = adminMapper.selectOne(username);
        log.info(admin);
        log.info("======================");

        List<SimpleGrantedAuthority> authList = admin.getAuthorityList().stream()
                .map(authority -> new SimpleGrantedAuthority("ROLE_" + authority.getRolename()))
                .collect(Collectors.toList());

        //username, password, authority list
        AdminDTO adminDTO = new AdminDTO(admin.getAdm_id(), admin.getUsername(), admin.getPw(), authList);
        adminDTO.setName(admin.getName());
        adminDTO.setAdm_id(adminDTO.getAdm_id());
        adminDTO.setEmail(adminDTO.getEmail());
        adminDTO.setPhone(adminDTO.getPhone());
        adminDTO.setJoinDate(adminDTO.getJoinDate());
        adminDTO.setUpdateDate(adminDTO.getUpdateDate());

        return adminDTO;
    }
}
