package com.sync.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReportDTO {

    private Integer q_id;
    private Integer adm_id;
    private Integer m_id;
    private String title;
    private String content;
    private String category;
    private int delflag;
    private int replyCount;
    private String mainImage;

    private String name;

    private List<UploadResultDTO> uploads = new ArrayList<>();

    @DateTimeFormat(pattern = "yyyy-MM")
    private LocalDateTime regDate;
    @DateTimeFormat(pattern = "yyyy-MM")
    private LocalDateTime updateDate;

    public String getMain(){
        if(mainImage==null){
            return null;
        }
        //s_ 잘라내기
        int idx = mainImage.indexOf("s_");
        String first = mainImage.substring(0,idx);
        String second = mainImage.substring(idx+2);

        return first+second;
    }
}
