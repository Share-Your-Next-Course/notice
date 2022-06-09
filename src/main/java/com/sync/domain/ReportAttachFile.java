package com.sync.domain;

import lombok.*;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class ReportAttachFile {

    private String uuid;
    private Integer q_id;
    private String fileName;
    private String savePath;
    private boolean img;


    public void setQ_id(Integer q_id) {

        this.q_id = q_id;
    }
}
