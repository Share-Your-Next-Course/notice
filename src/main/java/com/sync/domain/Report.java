package com.sync.domain;

import lombok.*;

import java.time.LocalDateTime;
@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Report {

    private Integer q_id;
    private Integer adm_id;
    private Integer m_id;
    private String title;
    private String content;
    private String category;
    private int delflag;
    private int replyCount;
    private String mainImage;


    private String name;

    private LocalDateTime regDate;
    private LocalDateTime updateDate;

}
