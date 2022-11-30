package com.test.dao;

import java.util.List;

import com.test.dto.ParkingDTO;

public interface ParkingDAO {

	public List<ParkingDTO> parkingList() throws Exception;
	public ParkingDTO parkingDetail(int parkno) throws Exception;
	public void carIn(ParkingDTO dto) throws Exception;
	public void carOut(int parkno) throws Exception;
	
	public void carOut2(ParkingDTO dto) throws Exception;
	
	public ParkingDTO checkInfoForm(int parkno) throws Exception;
	public void calUsingTime(ParkingDTO dto) throws Exception;
	
	public ParkingDTO payForm(int parkno) throws Exception;
	public void pay(ParkingDTO dto) throws Exception;
	
	public ParkingDTO paidForm(int parkno) throws Exception;
	public void paid(ParkingDTO dto) throws Exception;
	
	
}
