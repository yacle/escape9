package com.escape.persistence;

import java.util.List;
import java.util.Map;

import com.escape.domain.Criteria;
import com.escape.domain.SurveyVO;

public interface surveyDAO {
	public void create(SurveyVO vo)throws Exception;
	public List<SurveyVO> list()throws Exception;
	public List<SurveyVO> read(String phone)throws Exception;
	public SurveyVO readOne(String no)throws Exception;
	public List<SurveyVO> categoryRead(String game_name)throws Exception;
	public List<SurveyVO> listCriteria(Criteria cri)throws Exception;
	public int countPaging(Criteria cri)throws Exception;
}
