package com.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dto.ParkingDTO;

@Repository
public class ParkingDAOImpl implements ParkingDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override	
	public List<ParkingDTO> parkingList() throws Exception {
		return sqlSession.selectList("parking.parkingList");
	}

	@Override	
	public ParkingDTO parkingDetail(int parkno) throws Exception {
		return sqlSession.selectOne("parking.parkingDetail", parkno);
	}

	@Override
	public void carIn(ParkingDTO dto) throws Exception {
		sqlSession.insert("parking.carIn", dto);
	}

	@Override
	public void carOut(int parkno) throws Exception {
		sqlSession.delete("parking.carOut", parkno);		
	}

	
	//기록남는 출차
	@Override
	public void carOut2(ParkingDTO dto) throws Exception {
		sqlSession.update("parking.carOut2", dto);
	}
	
	@Override	
	public ParkingDTO checkInfoForm(int parkno) throws Exception {
		return sqlSession.selectOne("parking.parkingDetail", parkno);
	}
	
	
	@Override
	public void calUsingTime(ParkingDTO dto) throws Exception {
		sqlSession.update("parking.calUsingTime", dto);
	}
	
	
	@Override	
	public ParkingDTO payForm(int parkno) throws Exception {
		return sqlSession.selectOne("parking.parkingDetail", parkno);
	}
	
	@Override
	public void pay(ParkingDTO dto) throws Exception {
		sqlSession.update("parking.pay", dto);
	}
	
	@Override	
	public ParkingDTO paidForm(int parkno) throws Exception {
		return sqlSession.selectOne("parking.parkingDetail", parkno);
	}
	
	@Override
	public void paid(ParkingDTO dto) throws Exception {
		sqlSession.update("parking.paid", dto);
	}
	
	
}
