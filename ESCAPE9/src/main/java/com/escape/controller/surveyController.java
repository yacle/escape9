package com.escape.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.SurveyVO;
import com.escape.service.surveyService;
@Controller
@RequestMapping("/survey")
public class surveyController {
@Inject
private surveyService service;
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView surveyHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "survey/survey");
		return mav;
	}
	
	@RequestMapping(value="/", method = RequestMethod.POST)
	public String surveyPOSTHandle(SurveyVO vo) throws Exception {
		System.out.println(vo.toString());
//		service.create(vo);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView surveyListHandle() throws Exception{
		List list = service.list();
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "surveyList");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/stats", method = RequestMethod.GET)
	public ModelAndView surveyMainHandle() throws Exception{
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "/master/surveyMain");
		return mav;
	}
}
