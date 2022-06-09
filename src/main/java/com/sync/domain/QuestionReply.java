package com.sync.domain;

import lombok.*;

import java.time.LocalDateTime;
@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class QuestionReply {
    private Integer qr_id;
    private Integer q_id;
    private String replyText;
    private Integer m_id;
    private Integer adm_id;
    private LocalDateTime regDate;
    private LocalDateTime updateDate;
}
