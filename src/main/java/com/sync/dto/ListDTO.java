package com.sync.dto;

import lombok.Getter;
import lombok.ToString;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@ToString
@Getter
public class ListDTO {

    private int page;
<<<<<<< HEAD

    private int size;

    private String link;

    //t tc tcw
    private String type;

    private String keyword;

    public ListDTO(){
=======
    private int size;
    private String link;
    // t, tc, tcw
    private String type;
    private String keyword;

    public ListDTO() {
>>>>>>> origin/master
        this.page = 1;
        this.size = 10;
    }

<<<<<<< HEAD
    public String[] getTypes(){
        if(type == null || type.trim().length() == 0){
=======
    public void setType(String type) {
        this.type = type;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String[] getTypes() {
        if (type == null || type.trim().length() == 0) {
>>>>>>> origin/master
            return new String[]{};
        }
        return type.split("");
    }

<<<<<<< HEAD
    public String getKeyword(String s){

        return keyword ==null || keyword.trim().length() ==0 ? null: keyword.trim();
    }

    public void setPage(int page) {
        this.page = page <= 0? 1:page;
    }

    public void setSize(int size) {
        this.size = size <= 10? 10: size;
    }

    public int getSkip(){
        return (this.page - 1) * size;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getLink(){
        UriComponentsBuilder builder = UriComponentsBuilder.newInstance();
        builder.queryParam("page",getPage())
                .queryParam("size",getSize());

        if(type != null){
            builder.queryParam("type", type);
        }

=======
    public String getKeyword() {

        return keyword == null || keyword.trim().length() == 0 ? null : keyword.trim();
    }

    public void setPage(int page) {
        this.page = page <= 0 ? 1 : page;
    }

    public void setSize(int size) {
        this.size = size < 10 ? 10 : size;
    }

    // mybatis에서 #{skip}이라고 하면 getter로 skip을 찾음
    public int getSkip() {
        return (this.page - 1) * size;
    }

    public String getLink() {
        UriComponentsBuilder builder = UriComponentsBuilder.newInstance();
        builder.queryParam("page", getPage())
                .queryParam("size", getSize());
        if(type != null){
            builder.queryParam("type", type);

        }
>>>>>>> origin/master
        if(keyword != null){
            try {
                String enStr = URLEncoder.encode(keyword, "UTF-8");
                builder.queryParam("keyword", enStr);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
<<<<<<< HEAD

        return builder.build().toString();
    }
}
=======
        return builder.build().toString();
    }

}


>>>>>>> origin/master
