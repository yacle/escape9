package com.escape.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.escape.domain.CustomerVO;
import com.escape.service.customerService;

@Controller
@RequestMapping("/")
public class customerController {
@Inject
private customerService service;
@Inject
ServletContext application;
@Inject
SimpleDateFormat sdf;

	@RequestMapping(value="/", method = RequestMethod.GET )
	public ModelAndView homeHandle() {
		ModelAndView mav = new ModelAndView("temp");
		mav.addObject("section", "home");
		return mav;
	}
	// sign pad ����
	@RequestMapping(value="/sign", method = RequestMethod.GET)
	public String signHandle(@RequestParam Map map, ModelMap data) {
		if(map.isEmpty()) {
		}else {
			String fileName = (String)map.get("fileName");
			data.addAttribute("fileName", fileName);
		}
		return "customer/sign2";
	}
	
	// ���༭ sign �ӽ����� �� ������ DB ����
	@RequestMapping(value="/signResult", method = RequestMethod.POST)
	@ResponseBody
	public String signPOSTHandle(CustomerVO vo, ModelMap data) throws Exception {
		String date = sdf.format(System.currentTimeMillis());
		String imgData =vo.getImgData();
		String name = vo.getName();
		String phone = vo.getPhone();
		imgData = imgData.replaceAll("data:image/png;base64,", "");
		byte[] file = Base64.decodeBase64(imgData);
		String path = application.getRealPath("/saveSignImage");	// ���������� ����
		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdirs();
		}
		String saveName = name+"_"+phone+"_"+date+".png";	// ������ ���ϸ� �����(�ۼ��� �̸�_��ȭ��ȣ_�ۼ�����.png)
		File target = new File(path, saveName);				
		FileCopyUtils.copy(file, target);					// ���� �����ϱ�
		
		vo.setImgData(null);
		vo.setFile_name(saveName);
		int r = service.read(vo);							// ��ϵǾ��ִ� ������ Ȯ��(��ϵ� ���̸� �������ϸ� ����)
		if(r==0) {
			service.create(vo);								// ��Ͼȵ� ���̸� ������ ���
		}
		return "";
	}
	// ���༭ sign ��ҹ�ư Ŭ���� ����
	@RequestMapping(value="/signCancle", method = RequestMethod.POST)
	@ResponseBody
	public String signCancleHandle(CustomerVO vo, ModelMap data) throws Exception {
		String date = sdf.format(System.currentTimeMillis());
		String imgData =vo.getImgData();
		String name = vo.getName();
		String phone = vo.getPhone();
		imgData = imgData.replaceAll("data:image/png;base64,", "");
		byte[] file = Base64.decodeBase64(imgData);
		String path = application.getRealPath("/cancleSignImage");	// ���������� ����
		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdirs();
		}
		String saveName = "c_"+name+"_"+phone+"_"+date+".png";	// ������ ���ϸ� �����(�ۼ��� �̸�_��ȭ��ȣ_�ۼ�����.png)
		File target = new File(path, saveName);				
		FileCopyUtils.copy(file, target);					// ���� �����ϱ�
		
		vo.setImgData(null);
		vo.setFile_name(saveName);
		int r = service.read(vo);							// ��ϵǾ��ִ� ������ Ȯ��(��ϵ� ���̸� �������ϸ� ����)
		if(r==0) {
			service.create(vo);								// ��Ͼȵ� ���̸� ������ ���
		}
		return "";
	}
	// ���� ���༭ ���� Ȯ��
	@RequestMapping(value="/customerSign", method = RequestMethod.GET)
	public String customerSignHandle(CustomerVO vo, ModelMap data) throws Exception {
		data.addAttribute("data", vo);
		return "/customer/signResult";
	}
	
}
