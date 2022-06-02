package com.sync.domain;

import lombok.*;

import java.time.LocalDateTime;


@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CrewVO {

    private Integer cr_id;
    private Integer m_id;
    private String name;
    private String m_name;
    private String addr;
    private String content;
    private int mtotal;
    private String mainImage;

    private LocalDateTime createDate;
    private LocalDateTime updateDate;
    private int delflag;


}
