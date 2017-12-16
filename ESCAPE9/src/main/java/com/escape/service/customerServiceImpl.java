package com.escape.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;
import com.escape.persistence.customerDAO;
@Service
public class customerServiceImpl implements customerService{
@Inject
private customerDAO dao;

	@Override
	public void create(CustomerVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<CustomerVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public List<CustomerVO> sign(String phone) throws Exception {
		return dao.sign(phone);
	}

	@Override
	public void update(CustomerVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(String phone) throws Exception {
		dao.delete(phone);
	}

}
