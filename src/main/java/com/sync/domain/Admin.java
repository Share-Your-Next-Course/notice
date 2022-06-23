package com.sync.domain;

import lombok.*;
import lombok.extern.log4j.Log4j2;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Log4j2
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@ToString
public class Admin {

        private Integer adm_id;
        private String username;
        private String pw;
        private String name;
        private String email;
        private String phone;
        private LocalDateTime joinDate;
        private LocalDateTime updateDate;
        private String mainImage;

        @Builder.Default
        private List<Authority> authorityList = new ArrayList<>();

    }

