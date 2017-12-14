package com.escape.domain;

public class CustomerVO {
	private String name;
	private Integer phone;
	private String email;
	private String sign;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	@Override
	public String toString() {
		return "CustomerVO [name=" + name + ", phone=" + phone + ", email=" + email + ", sign=" + sign + "]";
	}
	
}
