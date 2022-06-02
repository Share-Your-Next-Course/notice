package com.sync.domain;

import lombok.*;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class MemberAttachFileVO {

    private String uuid;
    private Integer m_id;
    private String fileName;
    private String savePath;
    private boolean img;

    public void setM_id(Integer m_id) {
        this.m_id = m_id;

    }
}
