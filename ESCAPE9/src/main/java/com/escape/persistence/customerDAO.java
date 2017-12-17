package com.escape.persistence;

import java.util.List;

import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;

public interface customerDAO {
	public void create(CustomerVO vo)throws Exception;
	public int read(CustomerVO vo)throws Exception;
	public List<CustomerVO> list()throws Exception;
	public List<CustomerVO> sign(String phone)throws Exception;
	public void update(CustomerVO vo)throws Exception;
	public void delete(String phone)throws Exception;
}
