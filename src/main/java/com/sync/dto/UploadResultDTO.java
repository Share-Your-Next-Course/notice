package com.sync.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UploadResultDTO {
<<<<<<< HEAD

    private String uuid;
=======
    private Integer nt_id;
    private String nt_uuid;
>>>>>>> origin/master
    private String fileName;
    private String savePath;
    private boolean img;

    public String getLink(){
<<<<<<< HEAD

        return savePath+"/"+uuid+"_"+fileName;
    }

    public String getThumbnail(){
        return savePath+"/s_"+uuid+"_"+fileName;
    }


=======
        return savePath + "/" + nt_uuid + "_" + fileName;
    }
    public String getThumbnail(){
        return savePath + "/s_" + nt_uuid + "_" + fileName;
    }
>>>>>>> origin/master
}
