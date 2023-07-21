package com.dto;

import jakarta.servlet.http.HttpServletRequest;

public class RegisterDTO {
	private String name;
	private String username;
	private String password;
	private String confirmPassword;
	private String gender;
	private String city;
	private String branch;
	public RegisterDTO() {
		super();
		
	}
	public RegisterDTO(HttpServletRequest request) {
		 name =request.getParameter("name");
		 username = request.getParameter("username");
		 password = request.getParameter("password");
		 confirmPassword = request.getParameter("confirmPassword");
		 gender = request.getParameter("gender");
		 city = request.getParameter("city");
		 branch = request.getParameter("branch");
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
	@Override
	public String toString() {
		return "RegisterDTO [name=" + name + ", username=" + username + ", password=" + password + ", confirmPassword="
				+ confirmPassword + ", gender=" + gender + ", city=" + city + ", branch=" + branch + "]";
	}
	
}
