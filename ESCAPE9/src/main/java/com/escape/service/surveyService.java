package com.escape.service;

import java.util.List;

import com.escape.domain.SurveyVO;

public interface surveyService {
	public void create(SurveyVO vo)throws Exception;
	public List<SurveyVO> list()throws Exception;
	public List<SurveyVO> read(String phone)throws Exception;
	public SurveyVO readOne(String no)throws Exception;
	public List<SurveyVO> categoryRead(String game_name)throws Exception;
}
