package com.test.dao;

import java.util.List;

import com.test.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int seq) throws Exception;
}
