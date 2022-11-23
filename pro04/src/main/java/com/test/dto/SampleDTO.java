package com.test.dto;

import lombok.Data;

@Data	//@Data - 필드 열거해두면 생성자 + getter + setter 자동생성			@Setter - setter 자동생성  @Getter - getter자동생성
public class SampleDTO {
	
	private String name;
	private int age;
	private double iq;
	
}
