package com.smhrd.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.smhrd.upload.UploadVO;

@Mapper
public interface MemberMapper {

	public MemberVO login(MemberVO vo);
	public void join(MemberVO vo);	
	public int IdCheck(String id);
	public int update(MemberVO vo);
	public List<UploadVO> getTransformed_file(@Param("id") String id);
}