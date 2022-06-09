package com.sync.mapper;

import com.sync.domain.ReportAttachFile;

public interface ReportFileMapper {

    void insert(ReportAttachFile attachFile);

    void insertBoard(ReportAttachFile attachFile);

    void delete(Integer q_id);
}
