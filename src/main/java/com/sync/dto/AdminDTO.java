package com.sync.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.time.LocalDateTime;
import java.util.Collection;

@Getter
@Setter
@ToString
public class AdminDTO extends User {

    private Integer adm_id;
    private String username, pw, name, email, phone;
    private LocalDateTime joinDate, updateDate;

    public AdminDTO(Integer adm_id, String username, String password, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
        this.adm_id = adm_id;
        this.username = username;
        this.pw = password;
        this.email = email;
        this.phone = phone;
        this.joinDate = joinDate;
        this.updateDate = updateDate;
    }

}
