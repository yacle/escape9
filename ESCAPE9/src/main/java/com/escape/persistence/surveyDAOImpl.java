package com.escape.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.escape.domain.SurveyVO;
@Repository
public class surveyDAOImpl implements surveyDAO{
	@Inject
	private  SqlSessionTemplate session;
	
	@Override
	public void create(SurveyVO vo) throws Exception {
		session.insert("survey.create", vo);
	}

	@Override
	public List<SurveyVO> list() throws Exception {
		return session.selectList("survey.list");
	}

	@Override
	public List<SurveyVO> read(String phone) throws Exception {
		return session.selectList("survey.customer_survey", phone);
	}

	@Override
	public List<SurveyVO> categoryRead(String game_name) throws Exception {
		return session.selectList("survey.category", game_name);
	}

	@Override
	public SurveyVO readOne(String no) throws Exception {
		return session.selectOne("survey.read_one", no);
	}

	@Override
	public Map<String, Integer> avg(String game_name) throws Exception {
		return session.selectOne("survey.avg", game_name);
	}
}
