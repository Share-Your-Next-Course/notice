package com.sync.domain;

import lombok.*;

import java.time.LocalDateTime;


@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CrewMemberVO {

    private Integer cm_id;
    private Integer cr_id;
    private Integer m_id;
    private int status;

    private LocalDateTime createDate;
    private LocalDateTime updateDate;
    private int delflag;


}
