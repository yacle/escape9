package com.escape.service;

import java.util.List;
import java.util.Map;

import com.escape.domain.Criteria;
import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;

public interface customerService {
	
	public void create(CustomerVO vo)throws Exception;
	public int read(CustomerVO vo)throws Exception;
	public List<CustomerVO> list()throws Exception;
	public List<CustomerVO> sign(String phone)throws Exception;
	public void update(CustomerVO vo)throws Exception;
	public void delete(String phone)throws Exception;
	public List<CustomerVO> listCriteria(Criteria cri)throws Exception;
	public int listCountCriteria(Criteria cri)throws Exception;
}
