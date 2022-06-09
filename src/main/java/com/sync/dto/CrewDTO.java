package com.sync.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Data
public class CrewDTO {

    private Integer cr_id;
    private Integer m_id;
    private String name;
    private String m_name;
    private String addr;
    private String content;
    private int mtotal;
    private String mainImage;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
    private LocalDateTime createDate;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
    private LocalDateTime updateDate;
    private int delflag;

    private List<UploadResultDTO> uploads = new ArrayList<>();


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
