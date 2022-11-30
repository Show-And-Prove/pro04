package com.test.service;

import java.util.List;

import com.test.dto.ParkingDTO;

public interface ParkingService {
	
	public List<ParkingDTO> parkingList() throws Exception;
	public ParkingDTO parkingDetail(int parkno) throws Exception;
	public void carIn(ParkingDTO dto) throws Exception;
	//기록남는 출차 테스트
	public void carOut2(ParkingDTO dto) throws Exception;
	
	public void calUsingTime(ParkingDTO dto) throws Exception;
	
	public void pay(ParkingDTO dto) throws Exception;
	
	public void paid(ParkingDTO dto) throws Exception;
	
	/* public ParkingDTO parkingDetail(int parkno) throws Exception; */
	
	//미사용
		public void carOut(int parkno) throws Exception;
	
}
