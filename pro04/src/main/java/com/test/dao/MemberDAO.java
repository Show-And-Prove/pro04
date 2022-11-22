package com.test.dao;

import java.util.List;

import com.test.dto.MemberDTO;

public interface MemberDAO {

	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO getMember(String id) throws Exception;
}
