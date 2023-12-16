package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_table")
public class Employee implements Serializable
{
  
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id //primary key
  private int id;
  @Column(name = "ename", length = 50, nullable = false)
  private String name;
  @Column(name = "egender", length = 10, nullable = false)
  private String gender;
  @Column(name = "edateofjoining", length = 20, nullable = false)
  private String dateofjoining;
  @Column(name = "esalary", nullable = false, precision = 10, scale = 4)
  private double salary;
  @Column(name = "edepartment", length = 50, nullable = false)
  private String department;
  @Column(name = "eemail", length = 50, nullable = false, unique = true)
  private String email; 
  @Column(name = "epassword", length = 50, nullable = false)
  private String password;
  @Column(name = "econtactno", length = 50, nullable = false, unique = true)
  private String contactno;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDateofjoining() {
	return dateofjoining;
}
public void setDateofjoining(String dateofjoining) {
	this.dateofjoining = dateofjoining;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}

}