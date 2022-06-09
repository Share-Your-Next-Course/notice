package com.sync.domain;

import lombok.*;

import java.time.LocalDate;
@Data
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CourseVO {

    private Integer cs_id;
    private Integer m_id; //FK
    private String title, addr, content, point, mainImage;
    private int delflag;
    private LocalDate regDate;
    private LocalDate updateDate;



}
