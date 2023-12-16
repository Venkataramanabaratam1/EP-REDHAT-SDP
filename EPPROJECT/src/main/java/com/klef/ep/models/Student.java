package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student_table")
public class Student implements Serializable
{
  /**
   * 
   */
  private static final long serialVersionUID = 1L;
  @Id
    private int id;
  @Column(length = 20,nullable = false)
    private String name;
  @Column(length = 10,nullable = false)
    private String gender;
  @Column(length = 20,nullable = false)
    private String dob;
  @Column(length = 20,nullable = false)
    private String department;
  @Column(nullable = false)
    private int year;
  @Column(length = 10,nullable = false)
    private String semester;
  @Column(nullable = false,precision = 4,scale = 2)
    private double cgpa;
  @Column(nullable = false)
    private int backlogs;
  @Column(length = 50,nullable = false,unique = true)
    private String email;
  @Column(length = 20,nullable = false)
    private String password;
  @Column(length = 30,nullable = false,unique = true)
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
  public String getDob() {
    return dob;
  }
  public void setDob(String dob) {
    this.dob = dob;
  }
  public String getDepartment() {
    return department;
  }
  public void setDepartment(String department) {
    this.department = department;
  }
  public int getYear() {
    return year;
  }
  public void setYear(int year) {
    this.year = year;
  }
  public String getSemester() {
    return semester;
  }
  public void setSemester(String semester) {
    this.semester = semester;
  }
  public double getCgpa() {
    return cgpa;
  }
  public void setCgpa(double cgpa) {
    this.cgpa = cgpa;
  }
  public int getBacklogs() {
    return backlogs;
  }
  public void setBacklogs(int backlogs) {
    this.backlogs = backlogs;
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