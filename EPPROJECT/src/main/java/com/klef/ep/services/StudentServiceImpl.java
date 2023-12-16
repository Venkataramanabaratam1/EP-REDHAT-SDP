package com.klef.ep.services;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Student;

@Stateless  
@TransactionManagement(TransactionManagementType.BEAN)
public class StudentServiceImpl implements StudentService
{

 
  public List<Student> viewAllStudents() {
     EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
         EntityManager em = emf.createEntityManager();
          
         em.getTransaction().begin();       
         Query qry = em.createQuery("select e from Student e"); // e is an alias of Student class
         List<Student> emplist = qry.getResultList();      
         em.close();
         emf.close();
         System.out.println(emplist);
         return emplist;
}

  @Override
  public Student login(String email,String pwd) {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      EntityManager em = emf.createEntityManager();
       
      em.getTransaction().begin();
      
      Query qry = em.createQuery("  select e from Student e where email=? and password=?   "); // atmost one object (0 or 1)
    qry.setParameter(1, email);
    qry.setParameter(2, pwd);
    
    Student user = null;
    
    if(qry.getResultList().size() > 0) 
    {
         user=  (Student) qry.getSingleResult();
    }
    
    em.close();
    emf.close();
  
    return user;
  }



@Override
public String registerstudent(Student stud) {
  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
    EntityManager em = emf.createEntityManager();
   
    em.getTransaction().begin();
    em.persist(stud);     // insert operation
    em.getTransaction().commit();
    em.close();
    emf.close();
    
    return "Record Inserted Successfully";
  }

public String updateStudent(Student stud)
{
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      EntityManager em = emf.createEntityManager();
      
      em.getTransaction().begin();
      Student e = em.find(Student.class, stud.getId()); // fetching object based on ID
      e.setName(stud.getName());
      e.setDob(stud.getDob());
      e.setPassword(stud.getPassword());
      e.setContactno(stud.getContactno());
      em.getTransaction().commit();
      
      em.close();
      emf.close();
      
      return "Record Updated Successfully";

}

public String deleteStudent(int eid)
{
	 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
     EntityManager em = emf.createEntityManager();
     
     em.getTransaction().begin();
  Student e = em.find(Student.class, eid); // fetching object based on ID
     em.remove(e);
     em.getTransaction().commit();
     
     em.close();
  emf.close();
  
  return "Record Deleted Successfully";	
}

@Override
public String addStudent(Student stud)
{
	 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
     EntityManager em = emf.createEntityManager();
     
     em.getTransaction().begin();
     em.persist(stud);     // insert operation
     em.getTransaction().commit();
     
     em.close();
     emf.close();
     
     return "Record Inserted Successfully";
}



}