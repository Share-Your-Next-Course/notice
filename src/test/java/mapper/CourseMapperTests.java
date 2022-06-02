package mapper;

import com.sync.domain.CourseVO;
import com.sync.domain.MemberVO;
import com.sync.dto.ListDTO;
import com.sync.mapper.CourseMapper;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
public class CourseMapperTests {

    @Autowired(required = false)
    private CourseMapper courseMapper;

    @Test
    public void getTest1() {

        CourseVO courseVO = new CourseVO();

        courseMapper.insert(CourseVO.builder()
                .m_id(41)
                .title("뚝섬유원지")
                .addr("서울")
                .content("한강 둔치에서 런닝!!")
                .point("aqa329twefsfwafa2")
                .mainImage("hangang.jpg")
                .build());

        log.info("-----------------------------------");
        log.info(courseVO);

    }

    @Test
    public void testSelectList() {

        ListDTO listDTO = new ListDTO();
        listDTO.setType("tcw");
        listDTO.setKeyword("11");


        List<CourseVO> courseVOList = courseMapper.selectList(listDTO);
        log.info("=========================");
        courseVOList.forEach(courseVO -> log.info(courseVO));


    }
}
