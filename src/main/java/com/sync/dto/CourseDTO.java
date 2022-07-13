package com.sync.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CourseDTO {

    private Integer cs_id;
    private Integer m_id; //FK
    private String title, addr, content, point, mainImage, center;
    private int delflag;
    private LocalDate regDate;
    private LocalDate updateDate;
}