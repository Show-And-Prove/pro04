package com.test.myapp;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.test.dto.MemberDTO;

public class DTOTest {

	private static final Logger logger = LoggerFactory.getLogger(DTOTest.class);
	@Test
	public void test() {

		MemberDTO dto = new MemberDTO();
		dto.setId("admin");
		dto.setPw("1234");
		dto.setName("관리자");
		dto.setEmail("1@gmail.com");
		dto.setTel("01012345678");
		dto.setAddr1("경기도 파주시 가람로");
		dto.setAddr2("----");
		dto.setPostcode("12345");
		dto.setRegdate("2022-11-28");
		dto.setBirth("1234-56-78");
		dto.setPt(1);
		dto.setVisited(0);
		
		/*
		 * 	<root>
				<priority value="info" />
				<appender-ref ref="console" />
			</root>
		 */
		logger.info(dto.toString());	//log4j 에 설정해둔 info로 콘솔창 출력
	}

}
