package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.ParkingDAO;
import com.test.dto.ParkingDTO;

@Service
public class ParkingServiceImpl implements ParkingService {

	@Autowired
	ParkingDAO parkingDAO;
	
	@Override
	public List<ParkingDTO> parkingList() throws Exception {
		return parkingDAO.parkingList();
	}

	@Override
	public ParkingDTO parkingDetail(int parkno) throws Exception {
		return parkingDAO.parkingDetail(parkno);
	}

	@Override
	public void carIn(ParkingDTO dto) throws Exception {
		parkingDAO.carIn(dto);
	}

	@Override
	public void carOut(int parkno) throws Exception {
		parkingDAO.carOut(parkno);
	}
	
	@Override
	public void carOut2(ParkingDTO dto) throws Exception {
		parkingDAO.carOut2(dto);
	}
	
	
	@Override
	public void calUsingTime(ParkingDTO dto) throws Exception {
		parkingDAO.calUsingTime(dto);
	}
	
	@Override
	public void pay(ParkingDTO dto) throws Exception {
		parkingDAO.pay(dto);
	}
	
	@Override
	public void paid(ParkingDTO dto) throws Exception {
		parkingDAO.paid(dto);
	}

	
}
