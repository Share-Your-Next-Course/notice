package com.sync.dto;

import lombok.*;

import java.time.LocalDateTime;


@Data
public class CrewMemberListDTO {

    private String m_name;
    private String cr_name;
    private String addr;
    private String mainImage;
    private String content;
    private int status;

    private LocalDateTime createDate;
    private int delflag;

    public String getMain(){
        if(mainImage == null){
            return null;
        }
        int idx = mainImage.indexOf("s_");
        String first = mainImage.substring(0, idx);
        String second = mainImage.substring(idx+2);

        return first + second;
    }
}
