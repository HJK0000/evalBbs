package com.example.evalBbs.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.evalBbs.dto.EvalBbsDto;

@Mapper
public interface IEvalBbsDao {
	
	public List<EvalBbsDto> listDao();
	

}
