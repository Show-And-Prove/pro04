package com.test.service;

import java.util.List;

import com.test.dto.BoardDTO;

public interface BoardService {
	
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int seq) throws Exception;
	public void boardInsert() throws Exception;
}
