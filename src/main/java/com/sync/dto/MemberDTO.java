// 타입을 지정하기 위한 dto 객체


package com.sync.dto;

import lombok.Data;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Data
public class MemberDTO {

    private Integer m_id;
    private String username, pw, name;
    private int age;
    private String gender, content, email, phone;
    private Date birth;
    private LocalDate joinDate;
    private LocalDate updateDate;
    private int delflag, status;
    private String addr;
    private String mainImage; //mainImage의 섬네일의 링크

    private int mtotal;

    private List<MemberUploadResultDTO> uploads = new ArrayList<>();

    public String getMain(){
        if(mainImage == null){
            return null;
        }

        int idx = mainImage.indexOf("s_");
        String first = mainImage.substring(0, idx );
        String second = mainImage.substring(idx+2);

        return first+second;
    }




}
