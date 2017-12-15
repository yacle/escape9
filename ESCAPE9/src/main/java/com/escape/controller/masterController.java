package com.escape.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;
import com.escape.service.customerService;
import com.escape.service.surveyService;

@Controller
@RequestMapping("/master")
public class masterController {
	@Inject
	private surveyService survey;
	@Inject
	private customerService customer;
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
	// 설문통계 메인페이지
	@RequestMapping(value="/stats", method = RequestMethod.GET)
	public ModelAndView surveyMainHandle() throws Exception{
		List<SurveyVO> list = survey.list();
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "/master/surveyMain");
		mav.addObject("list", list);
		return mav;
	}
	// 게임별 설문통계
	@RequestMapping(value="/game/{category}", method = RequestMethod.GET)
	public ModelAndView gameSurveyHandle(@PathVariable String category) throws Exception{
		List<SurveyVO> list = survey.categoryRead(category);
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "/master/gameSurvey");
		mav.addObject("game", category);
		mav.addObject("list", list);
		return mav;
	}
}
