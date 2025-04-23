package com.DaleyNepal.model;

import java.time.LocalDate;

public class UserModel {
	
	private int id;
	private String firstName;
	private String lastName;
	private String contactNumber;
	private String email;
	private String password;
	private String role;
}

	public UserModel() {
		
	}
	public UserModel(String firstName, String lastName, String contactNumber, String email, String password, String role) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.contactNumber = contactNumber;
		this.email = email;
		this.password = password;
		this.role = role;
	}