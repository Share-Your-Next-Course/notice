package com.sync.dto;

import lombok.Data;

import java.util.List;

@Data
public class TotalDTO {

    private int total; //총 개수

    private int totalNow; //당일 추가 개수

    private int avg;

    private List<String> date;

    private List<Object> count;

    private List<Object> countM;

    private List<Object> countF;



    public TotalDTO(int total, int totalNow) {
        this.total = total;
        this.totalNow = totalNow;
    }

    public TotalDTO(List<String> date, List<Object> count, List<Object> countM, List<Object> countF){
        this.date = date;
        this.count = count;
        this.countM = countM;
        this.countF = countF;
    }

}
