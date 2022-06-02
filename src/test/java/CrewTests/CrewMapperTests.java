package CrewTests;


import com.sync.domain.CrewMemberVO;
import com.sync.domain.CrewVO;
import com.sync.dto.CrewDTO;
import com.sync.dto.ListDTO;
import com.sync.mapper.CrewMapper;
import com.sync.mapper.CrewMemberMapper;
import com.sync.service.CrewServiceImpl;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/root-context.xml")
public class CrewMapperTests {

    @Autowired(required = false)
    private CrewMapper crewMapper;
    @Autowired(required = false)
    private CrewMemberMapper crewMemberMapper;
    @Autowired(required = false)
    private ModelMapper modelMapper;
    @Autowired(required = false)
    private CrewServiceImpl service;

    @Test
    public void testSelectCrew(){
        ListDTO listDTO = new ListDTO();
        listDTO.setType("t");
        listDTO.setKeyword("247");

        List<CrewVO> crewVOS = crewMapper.selectList(listDTO);

        crewVOS.forEach(crewVO -> log.info(crewVO));

    }

    @Test
    public void testSelectOne(){
        int cr_id = 247;
        CrewVO crewVO = crewMapper.selectOne(cr_id);
        log.info(crewVO);
    }

    @Test
    public void testGetTotal(){
        ListDTO listDTO = new ListDTO();
        int total = crewMapper.getTotal(listDTO);
        log.info(total);
    }

    @Test
    public void testCrewInsert(){

        CrewVO crewVO = CrewVO.builder()
                .m_id(42)
                .content("안녕하세요 재밌는 크루입니다.")
                .name("재밌는 크루")
                .addr("경기")
                .build();

        crewMapper.insert(crewVO);

        Integer cr_id = crewVO.getCr_id();
        CrewVO crew = crewMapper.selectOne(cr_id);

        CrewMemberVO crewMemberVO = CrewMemberVO.builder()
                .cr_id(cr_id)
                .m_id(crew.getM_id())
                .build();

        crewMemberMapper.insertCrewMember(crewMemberVO);

        crewMapper.updateCrewMemberCount(crewVO.getCr_id(), 1);

    }

    @Test
    public void insertTest2(){

        CrewVO crewVO = CrewVO.builder()
                .addr("인천")
                .name("The Smallest")
                .content("열심히 뛰는 중입니다")
                .m_id(42)
                .build();

        CrewDTO crewDTO = modelMapper.map(crewVO, CrewDTO.class);


        service.register(crewDTO);
    }


    @Test
    public void insertTest3(){

        for (int i = 0; i < 30; i++) {
            CrewMemberVO crewMemberVO = CrewMemberVO.builder()
                    .m_id(47)
                    .cr_id(268)
                    .build();
            crewMemberMapper.insertCrewMembers(crewMemberVO);
            crewMapper.updateCrewMemberCount(crewMemberVO.getCr_id(), 1);
        }

    }



}
