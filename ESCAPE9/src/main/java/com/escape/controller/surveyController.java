package com.escape.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.SurveyVO;
import com.escape.service.surveyService;
@Controller
@RequestMapping("/survey")
public class surveyController {
@Inject
private surveyService service;

	@RequestMapping(value="/get", method = RequestMethod.GET)
	public ModelAndView surveyHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "survey/survey");
		return mav;
	}
	
	@RequestMapping(value="/post", method = RequestMethod.POST)
	public String surveyPOSTHandle(SurveyVO vo) throws Exception {
		System.out.println(vo.toString());
		service.create(vo);
		return "redirect:/";
	}
	
	
}
