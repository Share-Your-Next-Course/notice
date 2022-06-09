package com.sync.domain;

import lombok.*;

import java.time.LocalDateTime;


@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CrewMemberListVO {


    private String m_name;
    private String cr_name;
    private String addr;
    private String mainImage;
    private String content;
    private int status;

    private LocalDateTime createDate;
    private int delflag;


}
