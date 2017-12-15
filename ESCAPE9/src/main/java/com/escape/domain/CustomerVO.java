package com.escape.domain;

public class CustomerVO {
	private String name;
	private String phone;
	private String email;
	private String sign;
	private String comments;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
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
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "CustomerVO [name=" + name + ", phone=" + phone + ", email=" + email + ", sign=" + sign + ", comments="
				+ comments + "]";
	}
	
	
}
