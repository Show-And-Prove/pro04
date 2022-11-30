package com.test.dto;

import lombok.Data;

@Data
public class ParkingDTO {

	private int parkno;
	private String car_num;
	private String id;
	private String in_time;
	private String out_time;
	private int using_time;
	private int money;
	private String paid;
	
}
