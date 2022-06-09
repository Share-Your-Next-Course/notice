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

    private String uuid;  //pk 역할을 하는 uuid
    private String fileName; // 오리지널 파일 이름
    private String savePath; //저장된 파일 경로
    private boolean img; // 이미지 파일 여부


    //오리지널 파일 링크
    public String getLink(){

        return savePath+"/"+uuid+"_"+fileName;
    }
    //썸네일 파일 링크
    public String getThumbnail(){

        return savePath+"/s_"+uuid+"_"+fileName;
    }

    
}
