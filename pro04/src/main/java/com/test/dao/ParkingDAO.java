package com.test.dao;

import java.util.List;

import com.test.dto.ParkingDTO;

public interface ParkingDAO {

	public List<ParkingDTO> parkingList() throws Exception;
	public ParkingDTO parkingDetail(int parkno) throws Exception;
	public void carIn(ParkingDTO dto) throws Exception;
	public void carOut(int parkno) throws Exception;
	
	public void carOut2(ParkingDTO dto) throws Exception;
	
	
}
