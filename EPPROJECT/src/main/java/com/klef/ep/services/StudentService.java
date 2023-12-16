package com.klef.ep.services;
import java.util.List;

//import java.util.List;
import javax.ejb.Remote;
import com.klef.ep.models.Student;
@Remote
public interface StudentService 
{
  
  public List<Student> viewAllStudents();
  public String addStudent(Student stud);
  public Student login(String email,String pwd);
  public String registerstudent(Student stud);
  public String updateStudent(Student stud) ;
  public String deleteStudent(int eid);
  
  
}