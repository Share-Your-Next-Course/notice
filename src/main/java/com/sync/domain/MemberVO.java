
package com.sync.domain;

import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {

    private Integer m_id;
    private String username, pw, name;
    private int age;
    private String gender, content, email, phone;
    private Date birth;
    private LocalDate joinDate;
    private LocalDate updateDate;
    private int delflag, status;
    private String addr;
    private String mainImage;

    private int mtotal;
}


