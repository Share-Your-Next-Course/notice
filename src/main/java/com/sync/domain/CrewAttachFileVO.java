package com.sync.domain;

import lombok.*;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder @ToString
public class CrewAttachFileVO {

    private String uuid;
    private Integer cr_id;
    private String fileName;
    private String savePath;
    private boolean img;

    public void setCr_id(Integer cr_id) {this.cr_id = cr_id;}
}
