package com.test.myapp;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.test.dto.SampleDTO;

public class LombokTest {
	
	private static final Logger logger = LoggerFactory.getLogger(LombokTest.class);
	@Test
	public void test() {
		SampleDTO dto = new SampleDTO();
		dto.setName("조민재");
		dto.setAge(1);
		dto.setIq(0.1);
		
		logger.info(dto.toString());
	}

}
