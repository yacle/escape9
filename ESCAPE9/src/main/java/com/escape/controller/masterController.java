package com.escape.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.AvgUtil;
import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;
import com.escape.service.customerService;
import com.escape.service.surveyService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/master")
public class masterController {
	@Inject
	private surveyService survey;
	@Inject
	private customerService customer;
	@Inject
	ObjectMapper mapper;
	// 관리자 페이지
	@RequestMapping(value="", method = RequestMethod.GET )
	public ModelAndView masterHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "master/master");
		return mav;
	}
	// 고객명단
	@RequestMapping(value="/customer", method = RequestMethod.GET)
	public ModelAndView customerListHandle() throws Exception {
		List<CustomerVO> list = customer.list();
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "master/customerList");
		mav.addObject("list", list);
		return mav;
	}
	
	// 고객 comments 입력
		@RequestMapping(value="/comment", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView customerCommentsHandle(CustomerVO vo) throws Exception {
			customer.update(vo);
			ModelAndView mav = new ModelAndView("temp");
			mav.addObject("section", "master/customerList");
			return mav;
		}
	// 고객별 설문내용 리스트
	@RequestMapping(value="/customer_survey", method = RequestMethod.GET)
	public ModelAndView customerSurveyHandle(@RequestParam Map map) throws Exception {
		String phone= (String) map.get("phone");
		String name= (String) map.get("name");
		List<SurveyVO> list = survey.read(phone);
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "master/customerSurvey");
		mav.addObject("list", list);
		mav.addObject("name", name);
		return mav;
	}
	// 고객 서약서 read
	@RequestMapping(value="/customer_sign", method = RequestMethod.GET)
	public ModelAndView customerSignHandle(@RequestParam Map<String, Object>map) throws Exception {
		String phone= (String) map.get("phone");
		String name= (String) map.get("name");
		List<CustomerVO> list = customer.sign(phone);
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "master/customerSign");
		mav.addObject("list", list);
		mav.addObject("name", name);
		return mav;
	}
	// 설문통계 메인페이지
	@RequestMapping(value="/stats", method = RequestMethod.GET)
	public ModelAndView surveyMainHandle() throws Exception{
		List<SurveyVO> list = survey.list();
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "/master/surveyMain");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/surveyStats", method = RequestMethod.GET)
	public Map iframeHandle(Map map) throws Exception {
		List<SurveyVO> list = survey.list();
		map.put("list", list);
		return map;
	}
	
	// 게임별 설문통계
	@RequestMapping(value="/game/{category}", method = RequestMethod.GET)
	public ModelAndView gameSurveyHandle(@PathVariable String category) throws Exception{
		List<SurveyVO> list = survey.categoryRead(category);
		Map avg = AvgUtil.avgMaker(list);
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "/master/gameSurvey");
		mav.addObject("game", category);
		mav.addObject("list", list);
		mav.addObject("avg", avg);
		return mav;
	}
}
