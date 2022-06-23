package com.sync.service;

import com.sync.domain.MemberAttachFileVO;
import com.sync.dto.*;
import com.sync.mapper.MemberFileMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import com.sync.domain.MemberVO;
import com.sync.mapper.MemberMapper;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class MemberServiceImpl implements MemberService {

    private final MemberMapper memberMapper;
    private final MemberFileMapper memberFileMapper;
    private final ModelMapper modelMapper;
    //member객체를 memberDTO타입의 객체로 바꾸기 위해서 modelmapper를 주입받아서 써야한다.


    @Override
    public ListResponseDTO<MemberDTO> getList(ListDTO listDTO) {

        List<MemberVO> memberVOList = memberMapper.selectList(listDTO);

        List<MemberDTO> dtoList =
                memberVOList.stream().map(member -> modelMapper.map(member, MemberDTO.class))
                        .collect(Collectors.toList());
        //member객체를 modelmapper를 이용해서 member객체를 MemberDTO 객체로 매핑을 시킨다. 그리고 collect를 이용해 list타입으로 묶어준다.
        //member에서 get으로 가져와서 setter 하는 작업을 자동으로 다 해준다.

        return ListResponseDTO.<MemberDTO>builder()
                .dtoList(dtoList)
                .total(memberMapper.getTotal(listDTO))
                .build();
    }

    @Override
    public MemberDTO getOne(Integer m_id) {

        MemberVO memberVO = memberMapper.selectOne(m_id);
        MemberDTO memberDTO = modelMapper.map(memberVO, MemberDTO.class);

        return memberDTO;
    }

    @Override
    public void update(MemberDTO memberDTO) {

        //기존 파일들을 모두 삭제해야 한다
        memberFileMapper.delete(memberDTO.getM_id());

        memberMapper.update(MemberVO.builder()
                .m_id(memberDTO.getM_id())
                .content(memberDTO.getContent())
                .email(memberDTO.getEmail())
                .addr(memberDTO.getAddr())
                .birth(memberDTO.getBirth())
                .build());

        for (MemberUploadResultDTO uploadDTO : memberDTO.getUploads()) {
            MemberAttachFileVO memberAttachFileVO = modelMapper.map(uploadDTO, MemberAttachFileVO.class);
            memberAttachFileVO.setM_id(memberDTO.getM_id());
            memberFileMapper.insertMember(memberAttachFileVO);
        }
    }

    @Override
    public void register(MemberDTO memberDTO) {

        MemberVO memberVO = modelMapper.map(memberDTO, MemberVO.class);

        List<MemberAttachFileVO> files =
                memberDTO.getUploads().stream().map(uploadResultDTO -> modelMapper.map(uploadResultDTO, MemberAttachFileVO.class)
                ).collect(Collectors.toList());
        log.info("========================");
        log.info("========================");
        log.info(memberVO);
        log.info(files);
        memberMapper.insert(memberVO);
        files.forEach(file -> memberFileMapper.insert(file));
        log.info("========================");
        log.info("========================");
    }


    @Override
    public List<MemberUploadResultDTO> getFiles(Integer m_id) {

        List<MemberAttachFileVO> memberAttachFiles = memberMapper.selectFiles(m_id);

        return memberAttachFiles.stream()
                .map(attachFile -> modelMapper.map(attachFile, MemberUploadResultDTO.class))
                .collect(Collectors.toList());
    }

    @Override
    public void remove(Integer m_id) {
        memberMapper.delete(m_id);
    }

    @Override
    public List<Map<String, Object>> memberAddr() {
        List<Map<String, Object>> memberAddr = memberMapper.memberAddr();

        return memberAddr;
    }

    @Override
    public List<Map<String, Object>> memberGender() {
        List<Map<String, Object>> memberGender = memberMapper.memberGender();

        return memberGender;
    }
}

