package com.sync.domain;

import lombok.*;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class AttachFile {
    private String nt_uuid;
    private Integer nt_id;
    private String fileName;
    private String savePath;
    private boolean img;

    public void setNt_id(Integer nt_id) {
        this.nt_id = nt_id;
    }
}
