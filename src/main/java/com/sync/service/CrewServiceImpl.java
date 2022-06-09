package com.sync.service;

import com.sync.domain.CrewAttachFileVO;
import com.sync.domain.CrewMemberListVO;
import com.sync.domain.CrewMemberVO;
import com.sync.domain.CrewVO;
import com.sync.dto.*;
import com.sync.mapper.CrewMapper;
import com.sync.mapper.CrewMemberMapper;
import com.sync.mapper.CrewFileMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Log4j2
public class CrewServiceImpl implements CrewService{

    private final CrewMapper crewMapper;
    private final ModelMapper modelMapper;
    private final CrewFileMapper crewFileMapper;
    private final CrewMemberMapper crewMemberMapper;


    @Override
    public ListResponseDTO<CrewDTO> getList(ListDTO listDTO) {

        List<CrewVO> crewList = crewMapper.selectList(listDTO);
        List<CrewDTO> dtoList = crewList.stream().map(crewVO -> modelMapper.map(crewVO, CrewDTO.class)).collect(Collectors.toList());

        return ListResponseDTO.<CrewDTO>builder().dtoList(dtoList).total(crewMapper.getTotal(listDTO)).build();
    }

    @Override
    public CrewDTO getOne(Integer cr_id) {

        CrewVO crewVO = crewMapper.selectOne(cr_id);

        CrewDTO crewDTO = modelMapper.map(crewVO, CrewDTO.class);

        return crewDTO;
    }

    @Override
    public void remove(Integer cr_id) {

    }

    @Override
    public void update(CrewDTO crewDTO) {

    }

    @Override
    public void register(CrewDTO crewDTO) {
        CrewVO crewVO = modelMapper.map(crewDTO, CrewVO.class);

        List<CrewAttachFileVO> files = crewDTO.getUploads().stream()
                .map(uploadResultDTO -> modelMapper.map(uploadResultDTO, CrewAttachFileVO.class))
                .collect(Collectors.toList());
        crewMapper.insert(crewVO);

        files.forEach(file -> crewFileMapper.insert(file));

        CrewMemberVO crewMemberVO = CrewMemberVO.builder()
                .cr_id(crewVO.getCr_id())
                .m_id(crewVO.getM_id())
                .build();

        crewMemberMapper.insertCrewMember(crewMemberVO);

        crewMapper.updateCrewMemberCount(crewVO.getCr_id(),1);


    }

    @Override
    public List<UploadResultDTO> getFiles(Integer cr_id) {

        List<CrewAttachFileVO> attachFiles = crewMapper.selectFiles(cr_id);

        return attachFiles.stream().map(attachFileVO -> modelMapper.map(attachFileVO,UploadResultDTO.class))
                .collect(Collectors.toList());
    }

    @Override
    public List<CrewDTO> crewAddrTotal() {

        List<CrewVO> addrTotals = crewMapper.crewAddrTotal();

        return addrTotals.stream().map(addrTotal -> modelMapper.map(addrTotal,CrewDTO.class))
                .collect(Collectors.toList());
    }

    @Override
    public List<Map<String, Object>> crewMonth() {

        List<Map<String, Object>> crewMonth = crewMapper.crewMonth();

        return crewMonth;
    }

    @Override
    public ListResponseDTO<CrewMemberListDTO> getCrewMemberList(Integer cr_id, ListDTO listDTO) {

        List<CrewMemberListVO> crewList = crewMemberMapper.selectListOfCrew(cr_id, listDTO, listDTO.getSize(), listDTO.getSkip());
        List<CrewMemberListDTO> dtoList = crewList.stream()
                .map(crewMemberListVO -> modelMapper.map(crewMemberListVO, CrewMemberListDTO.class))
                .collect(Collectors.toList());

        return ListResponseDTO.<CrewMemberListDTO>builder().dtoList(dtoList).total(crewMemberMapper.selectTotalOfCrew(cr_id, listDTO)).build();

    }

    @Override
    public List<Map<String, Object>> crewMemberAddr(Integer cr_id) {

        List<Map<String, Object>> crewMemberAddr = crewMemberMapper.crewMemberAddr(cr_id);

        return crewMemberAddr;
    }
}
