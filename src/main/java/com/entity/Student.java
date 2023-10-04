package com.entity;

public class Student {
 private int id;	
 private String Roll_number;
 private String Full_name;
 private String Date_of_birth;
 private String Address;
 private String Stclass;
 
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
 public Student(String roll_number, String full_name, String date_of_birth, String address, String stclass) {
		super();
		Roll_number = roll_number;
		Full_name = full_name;
		Date_of_birth = date_of_birth;
		Address = address;
		Stclass = stclass;
	}
 
 
public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getRoll_number() {
	return Roll_number;
}

public void setRoll_number(String roll_number) {
	Roll_number = roll_number;
}
public String getFull_name() {
	return Full_name;
}
public void setFull_name(String full_name) {
	Full_name = full_name;
}
public String getDate_of_birth() {
	return Date_of_birth;
}
public void setDate_of_birth(String date_of_birth) {
	Date_of_birth = date_of_birth;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getStclass() {
	return Stclass;
}
public void setStclass(String stclass) {
	Stclass = stclass;
}


 
 
 
}
