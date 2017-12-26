package com.escape.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.escape.domain.SurveyVO;
import com.escape.persistence.surveyDAO;
@Service
public class surveyServiceImpl implements surveyService{
@Inject
private surveyDAO dao;

	@Override
	public void create(SurveyVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<SurveyVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public List<SurveyVO> read(String phone) throws Exception {
		return dao.read(phone);
	}

	@Override
	public SurveyVO readOne(String no) throws Exception {
		return dao.readOne(no);
	}

	@Override
	public List<SurveyVO> categoryRead(String game_name) throws Exception {
		return dao.categoryRead(game_name);
	}

	@Override
	public Map<String, Integer> avg(String game_name) throws Exception {
		return dao.avg(game_name);
	}
}
