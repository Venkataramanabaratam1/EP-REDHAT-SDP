package com.klef.ep.services;

import java.util.List;


import javax.ejb.Remote;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Course;
import com.klef.ep.models.Employee;
import com.klef.ep.models.Faculty;
import com.klef.ep.models.Student;
import com.klef.ep.models.Placement;

@Remote
public interface AdminService 
{
   public Admin CheckAdminLogin(String username,String password);
   public String deleteEmployee(int eid);
   public String deleteStudent(int eid);
   public List<Employee> viewAllEmployees();
  
   public String AddStudent(Student student);
   public String AddFaculty(Faculty faculty);
   public List<Student> ViewAllStudents();
   public List<Faculty> ViewAllFaculty();
   
   public String Addcourse(Course course);
   public List<Course> View();
   public String Deletecourse(int id);
   
   public List<Placement> View1();
   public String DeletePlacement(int id);
   public String Addplacement(Placement placement);
   
   
   
   
	
}
