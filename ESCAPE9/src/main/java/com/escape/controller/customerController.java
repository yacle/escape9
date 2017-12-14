package com.escape.controller;

import java.io.File;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;
import com.escape.service.customerService;

@Controller
@RequestMapping("/")
public class customerController {
@Inject
private customerService service;

	@RequestMapping(value="/", method = RequestMethod.GET )
	public ModelAndView homeHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "home");
		return mav;
	}
	
	@RequestMapping(value="/master", method = RequestMethod.GET )
	public ModelAndView masterHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "master/master");
		return mav;
	}
	
	// sign pad 열기
	@RequestMapping(value="/sign", method = RequestMethod.GET)
	public ModelAndView signHandle() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("section", "customer/sign");
		return mav;
	}
	// sign 저장
	@RequestMapping(value="/sign", produces="text/html", method = RequestMethod.POST)
	public void signPOSTHandle(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String sign = StringUtils.split(req.getParameter("sign"), ",")[1];
	    String fileName = "sign_"+System.currentTimeMillis()+".png";
	    FileUtils.writeByteArrayToFile(new File("d:\\"+fileName), Base64.decodeBase64(sign));
	    System.out.println("filename"+fileName);
	}
	
	@RequestMapping("/customer")
	public ModelAndView customerListHandle() throws Exception {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "customer/customerList");
		mav.addObject("list", service.list());
		return mav;
	}
}
