package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.BoardDAO;
import com.test.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDao;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boardDao.boardList();
	}

	@Override
	public BoardDTO boardDetail(int seq) throws Exception {
		return boardDao.boardDetail(seq);
	}
	
	
	
}