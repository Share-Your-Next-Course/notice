package com.sync.domain;

import lombok.*;

import java.time.LocalDateTime;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@Getter
public class NoticeVO {

    private Integer nt_id;
    private String title;
    private String content;
    private String adm_id;
    private String username;

    private LocalDateTime regDate;
    private LocalDateTime updateDate;

}
