package com.escape.persistence;

import java.util.List;
import java.util.Map;

import com.escape.domain.SurveyVO;

public interface surveyDAO {
	public void create(SurveyVO vo)throws Exception;
	public List<SurveyVO> list()throws Exception;
	public List<SurveyVO> read(String phone)throws Exception;
	public SurveyVO readOne(String no)throws Exception;
	public List<SurveyVO> categoryRead(String game_name)throws Exception;
	public Map<String, Integer> avg(String game_name)throws Exception;
}
