package com.sync.mapper;

import com.sync.domain.AttachFile;

public interface FileMapper {
    void insert(AttachFile attachFile);
    void insertNotice(AttachFile attachFile);
    void delete(Integer nt_id);


}
