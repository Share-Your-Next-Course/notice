package mapper;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import com.sync.domain.MemberVO;
import com.sync.dto.ListDTO;
import com.sync.mapper.MemberMapper;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml") //빈 객체 설정 파일 위치
public class MemberVOMapperTests {

    @Autowired(required = false)
    private MemberMapper memberMapper;

    @Test
    public void testInsert() {

        MemberVO memberVO = new MemberVO();

        memberMapper.insert(memberVO);

        log.info(memberVO);
        //boardMapper클래스의 insert 메소드를 이용하여 board를 전달한다.
    }

    @Test
    public void testSelectList() {

        ListDTO listDTO = new ListDTO();
        listDTO.setType("tcw");
        listDTO.setKeyword("11");


        List<MemberVO> memberVOList = memberMapper.selectList(listDTO);

        memberVOList.forEach(memberVO -> log.info(memberVO));
    }

    @Test
    public void testSelectOne() {
        int m_id = 85;

        MemberVO memberVO = memberMapper.selectOne(m_id);

        log.info(memberVO);
    }

//    @Test
//    public void testDelete(){
//        int bno = 4091;
//
//        memberMapper.delete(bno);
//    }


}
