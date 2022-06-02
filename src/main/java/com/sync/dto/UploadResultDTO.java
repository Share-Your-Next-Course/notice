package com.sync.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UploadResultDTO {
    private Integer nt_id;
    private String nt_uuid;
    private String fileName;
    private String savePath;
    private boolean img;

    public String getLink(){
        return savePath + "/" + nt_uuid + "_" + fileName;
    }
    public String getThumbnail(){
        return savePath + "/s_" + nt_uuid + "_" + fileName;
    }
}
