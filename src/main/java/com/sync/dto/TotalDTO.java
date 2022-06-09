package com.sync.dto;

import lombok.Data;

@Data
public class TotalDTO {

    int total; //총 개수

    int totalNow; //당일 추가 개수

    public TotalDTO(int total, int totalNow) {
        this.total = total;
        this.totalNow = totalNow;
    }
}
