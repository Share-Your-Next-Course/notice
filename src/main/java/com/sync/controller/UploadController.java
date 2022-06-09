package com.sync.controller;

import lombok.extern.log4j.Log4j2;
import net.coobird.thumbnailator.Thumbnails;
import com.sync.dto.UploadResultDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;


@Controller
@Log4j2
public class UploadController {


    //ResponseEntity<byte[]> 보내는 데이터는 byte 의 배열
    @GetMapping("/view")
    public ResponseEntity<byte[]> viewFile (String fileName){
        log.info("=================================");
        log.info("fileName..........." + fileName);

        //파일의 존재 여부를 확인
        File targetFile = new File("C:\\upload\\"+fileName);

        log.info(targetFile);

        //마임 타입을 조사해주는 probeContentType
        try {
            String mimeType = Files.probeContentType(targetFile.toPath());

            log.info("===============");
            log.info(mimeType);

            //targetFile 를 byte[] 로 보내준다
            byte[] data =  FileCopyUtils.copyToByteArray(targetFile);

            return ResponseEntity.ok().header("Content-Type",mimeType)
                    .body(data);

        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(404).build();
        }
    }
    //post 방식의 삭제
    @PostMapping("/delete")
    @ResponseBody
    public Map<String,String> deleteFile(String fileName){

        int idx = fileName.lastIndexOf("/");
        //파일 이름 분리작업 //맨앞에서 부터 / 까지 자르면 경로이다
        String path = fileName.substring(0,idx);
        String name =fileName.substring(idx+1);

        log.info("path"+path);
        log.info("name"+name);

        File targetFile = new File("C:\\upload\\" + fileName);

        //원본파일 삭제
        boolean result = targetFile.delete();

        //썸네일 삭제
        if(result){
            File thumbFile = new File("C:\\upload\\"+path+"\\s_"+name);
            thumbFile.delete();
        }

        return Map.of("result","success");
    }


    //MultipartFile[] 여러개의 파일을 받고 싶을때 사용함
    @PostMapping("/upload1")
    @ResponseBody
    public List<UploadResultDTO> upload1 (MultipartFile[] files){

        log.info("============================");

        log.info(files);

        List<UploadResultDTO> list = new ArrayList<>();

        //업로드된 파일이 있다고 가정
        for (MultipartFile file:files) {

            String originalFileName =  file.getOriginalFilename();  //업로드된 파일의 이름

            //컨텐츠 타입을 확인 //image인지 확인
            boolean img = file.getContentType().startsWith("image");

            String uuid = UUID.randomUUID().toString();

            String saveName = uuid +"_"+originalFileName; //save 되는 파일 이름

            log.info(file.getResource());

            String saveFolder = makeFolders();


            //원본 File 의 경로
            File saveFile = new File("C:\\upload\\"+saveFolder+"\\"+saveName);

            try ( InputStream in = file.getInputStream();
                  FileOutputStream fos = new FileOutputStream(saveFile);
            ){
                FileCopyUtils.copy(in , fos);

            } catch (IOException e) {
                e.printStackTrace();
            }

            if(img){

                //saveName = UUID + "_" + fileName
                String thumbFileName = saveFolder + "\\s_" + saveName;
                //썸네일 파일  파일 앞에 s를 붙여줘서 원본하고 구분하기
                File thumbFile = new File("C:\\upload\\"+thumbFileName);

                try {
                    Thumbnails.of(saveFile)
                            .size(200, 200)
                            .toFile(thumbFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            list.add(UploadResultDTO.builder()
                    .fileName(originalFileName)
                    .uuid(uuid)
                    .img(img)
                    .savePath(saveFolder)
                    .build());

            log.info("--------------------------------");
        }//end for

        return list;
    }

    //폴더의 경로를 만들어준다
    private String makeFolders(){

        //년 월 일 폴더 패턴
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

        String str = sdf.format(new java.util.Date());

        //경로지정
        File folderPath = new File("C:\\upload\\" + str);

        //exists() = 해당하는 경로가 존재하는지 따진다
        // 경로가 존재 하지 안는다면
        if(!folderPath.exists()){
            folderPath.mkdirs();
        }
        return str;
    }

}
