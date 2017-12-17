package com.escape.domain;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AvgUtil {
	public static Map avgMaker(List<SurveyVO> list) {
		double total1 = 0.0;
		double total2 = 0.0;
		double total3 = 0.0;
		double total4 = 0.0;
		double total5 = 0.0;
		for(SurveyVO vo : list) {
			total1 += vo.getTotal_eval();
			total2 += vo.getEnvironment();
			total3 += vo.getThema();
			total4 += vo.getComposition();
			total5 += vo.getDifficulty();
		}
		long eval = round(total1/list.size(), 1);
		long env = Math.round(total2/list.size());
		long thema = Math.round(total3/list.size());
		long comp = Math.round(total4/list.size());
		long diff = Math.round(total5/list.size());
		Map<String, Long> map = new HashMap<String, Long>();
		map.put("eval", eval);
		map.put("env", env);
		map.put("thema", thema);
		map.put("comp", comp);
		map.put("diff", diff);
		return map;
	}
}
