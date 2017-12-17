package com.escape.domain;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AvgUtil {
	public static Map<String, Double> avgMaker(List<SurveyVO> list) {
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
		double eval = (double)Math.round((total1/list.size())*10)/10;
		double env = (double)Math.round((total2/list.size())*10)/10;
		double thema = (double)Math.round((total3/list.size())*10)/10;
		double comp = (double)Math.round((total4/list.size())*10)/10;
		double diff = (double)Math.round((total5/list.size())*10)/10;
		Map<String, Double> map = new HashMap<String, Double>();
		map.put("eval", eval);
		map.put("env", env);
		map.put("thema", thema);
		map.put("comp", comp);
		map.put("diff", diff);
		return map;
	}
}
