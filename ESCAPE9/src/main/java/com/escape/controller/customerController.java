package com.escape.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.CustomerVO;
import com.escape.domain.SurveyVO;
import com.escape.service.customerService;

@Controller
@RequestMapping("/")
public class customerController {
@Inject
private customerService service;
@Inject
ServletContext application;

	@RequestMapping(value="/", method = RequestMethod.GET )
	public ModelAndView homeHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "home");
		return mav;
	}
	// sign pad 열기
	@RequestMapping(value="/sign", method = RequestMethod.GET)
	public String signHandle() {
		return "customer/sign3";
	}
	// sign 저장
	@RequestMapping(value="/signResult", method = RequestMethod.POST)
	public String signPOSTHandle(CustomerVO vo, ModelMap data) throws Exception {
		Calendar cal = Calendar.getInstance();
		String date = cal.get(Calendar.YEAR)+""+(cal.get(Calendar.MONTH)+1)+""+cal.get(Calendar.DATE);
		String imgData =vo.getImgData();
		String name = vo.getName();
		String phone = vo.getPhone();
		imgData = imgData.replaceAll("data:image/png;base64,", "");
		byte[] file = Base64.decodeBase64(imgData);
		String path = application.getRealPath("/saveSignImage");	// 파일저장할 폴더
		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdirs();
		}
		String saveName = name+"_"+phone+"_"+date+".png";	// 저장할 파일명 만들기(작성자 이름_전화번호_작성날자.png)
		File target = new File(path, saveName);				
		FileCopyUtils.copy(file, target);					// 파일 저장하기
		
		vo.setImgData(null);
		vo.setFile_name(saveName);
		service.create(vo);
		data.addAttribute("fileName", saveName);
		data.addAttribute("date", date);
		return "/customer/signResult";
	}
	@RequestMapping(value="/customerSign", method = RequestMethod.GET)
	public String customerSignHandle(@RequestParam Map map, ModelMap data) throws Exception {
		String file_name = (String) map.get("file_name");
		String name = (String) map.get("name");
		data.addAttribute("fileName", file_name);
		data.addAttribute("name", name);
		return "/customer/signResult";
	}
	
	
	
}
