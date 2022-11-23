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
		dto.setTel("01012345678");
		dto.setAddr("경기도");
		dto.setPt(1);
		dto.setRegdate("2010-10-10");

		
		/*
		 * 	<root>
				<priority value="info" />
				<appender-ref ref="console" />
			</root>
		 */
		logger.info(dto.toString());	//log4j 에 설정해둔 info로 콘솔창 출력
	}

}
