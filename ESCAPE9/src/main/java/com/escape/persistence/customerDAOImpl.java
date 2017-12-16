package com.escape.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;
@Repository
public class customerDAOImpl implements customerDAO {
	@Inject
	private  SqlSessionTemplate session;
	
	@Override
	public void create(CustomerVO vo) throws Exception {
		session.insert("customer.create", vo);
		session.insert("customer.add", vo);
	}

	@Override
	public List<CustomerVO> list() throws Exception {
		return session.selectList("customer.list");
	}

	@Override
	public void update(CustomerVO vo) throws Exception {
		session.update("customer.update", vo);
		
	}

	@Override
	public void delete(String phone) throws Exception {
		session.delete("customer.delete", phone);
		
	}

	@Override
	public List<CustomerVO> sign(String phone) throws Exception {
		return session.selectList("customer.sign", phone);
	}

}
