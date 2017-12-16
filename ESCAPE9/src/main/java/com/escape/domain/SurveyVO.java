package com.escape.domain;

import java.sql.Date;

public class SurveyVO {
	private Integer no;
	private String game_name;
	private Integer total_eval;
	private Integer	environment;
	private Integer thema;
	private Integer composition;
	private Integer difficulty;
	private Integer repeat_num;
	private String route;
	private String route_1;
	private String route_2;
	private String comments;
	private Date join_date;
	private String age;
	private String gender;
	private Integer member;
	private String phone;
	private String name;
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getGame_name() {
		return game_name;
	}
	public void setGame_name(String game_name) {
		this.game_name = game_name;
	}
	public Integer getTotal_eval() {
		return total_eval;
	}
	public void setTotal_eval(Integer total_eval) {
		this.total_eval = total_eval;
	}
	public Integer getEnvironment() {
		return environment;
	}
	public void setEnvironment(Integer environment) {
		this.environment = environment;
	}
	public Integer getThema() {
		return thema;
	}
	public void setThema(Integer thema) {
		this.thema = thema;
	}
	public Integer getComposition() {
		return composition;
	}
	public void setComposition(Integer composition) {
		this.composition = composition;
	}
	@Override
	public String toString() {
		return "SurveyVO [no=" + no + ", game_name=" + game_name + ", total_eval=" + total_eval + ", environment="
				+ environment + ", thema=" + thema + ", composition=" + composition + ", difficulty=" + difficulty
				+ ", repeat_num=" + repeat_num + ", route=" + route + ", route_1=" + route_1 + ", route_2=" + route_2
				+ ", comments=" + comments + ", join_date=" + join_date + ", age=" + age + ", gender=" + gender
				+ ", member=" + member + ", phone=" + phone + ", name=" + name + "]";
	}
	public Integer getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(Integer difficulty) {
		this.difficulty = difficulty;
	}
	public Integer getRepeat_num() {
		return repeat_num;
	}
	public void setRepeat_num(Integer repeat_num) {
		this.repeat_num = repeat_num;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getRoute_1() {
		return route_1;
	}
	public void setRoute_1(String route_1) {
		this.route += "_"+route_1;
		this.route_1 = route_1;
	}
	public String getRoute_2() {
		return route_2;
	}
	public void setRoute_2(String route_2) {
		this.route += "_"+route_2;
		this.route_2 = route_2;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Integer getMember() {
		return member;
	}
	public void setMember(Integer member) {
		this.member = member;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
