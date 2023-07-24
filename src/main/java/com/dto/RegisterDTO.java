package com.dto;

import jakarta.servlet.http.HttpServletRequest;

public class RegisterDTO {
	private String name;
	private String username;	
	private String phone;
	private String password;
	private String confirmPassword;
	private String gender;
	private String city;
	private String branch;
	private String colname;
	public RegisterDTO() {
		super();
		
	}
	public RegisterDTO(HttpServletRequest request) {
		 name =request.getParameter("name");
		 username = request.getParameter("username");
		 phone = request.getParameter("phone");
		 password = request.getParameter("password");
		 confirmPassword = request.getParameter("confirmPassword");
		 gender = request.getParameter("gender");
		 city = request.getParameter("city");
		 branch = request.getParameter("branch");
		 colname = request.getParameter("colname");
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public String getColname() {
		return colname;
	}
	public void setColname(String colname) {
		this.colname = colname;
	}
	@Override
	public String toString() {
		return "RegisterDTO [name=" + name + ", username=" + username + ", phone=" + phone + ", password=" + password
				+ ", confirmPassword=" + confirmPassword + ", gender=" + gender + ", city=" + city + ", branch="
				+ branch + ", colname=" + colname + "]";
	}
	
}
