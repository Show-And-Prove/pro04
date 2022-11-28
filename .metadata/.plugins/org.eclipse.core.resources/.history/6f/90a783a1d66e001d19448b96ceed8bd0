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

	@Override	//게시글 리스트
	public List<ParkingDTO> parkingList() throws Exception {
		return sqlSession.selectList("parking.parkingList");
	}

	@Override	//글 상세
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

	
}
