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

    private int crewTotal;

    private int crewTotalNow;

    private int courseTotal;

    private int courseTotalNow;

    private int memberTotal;

    private int memberTotalNow;


    public TotalDTO(int total, int totalNow) {
        this.total = total;
        this.totalNow = totalNow;
    }

    public TotalDTO(List<String> date, List<Object> count){
        this.date = date;
        this.count = count;
    }

    public TotalDTO(int crewTotal, int crewTotalNow, int courseTotal, int courseTotalNow, int memberTotal, int memberTotalNow){
        this.crewTotal = crewTotal;
        this.crewTotalNow = crewTotalNow;
        this.courseTotal = courseTotal;
        this.courseTotalNow = courseTotalNow;
        this.memberTotal = memberTotal;
        this.memberTotalNow = memberTotalNow;
    }



}
