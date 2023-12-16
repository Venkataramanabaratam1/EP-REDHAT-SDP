package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Employee;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class EmployeeServiceImpl  implements EmployeeService
{
	public String addEmployee(Employee emp) 
	{
	  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
   	  EntityManager em = emf.createEntityManager();
   	  
   	  em.getTransaction().begin();
   	  em.persist(emp);     // insert operation
   	  em.getTransaction().commit();
   	  
   	  em.close();
   	  emf.close();
   	  
   	  return "Record Inserted Successfully";
	}

	
	public String updateEmployee(Employee emp) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
    	  EntityManager em = emf.createEntityManager();
    	  
    	  em.getTransaction().begin();
    	  Employee e = em.find(Employee.class, emp.getId()); // fetching object based on ID
    	  e.setSalary(emp.getSalary());
    	  e.setPassword(emp.getPassword());
    	  e.setContactno(emp.getContactno());
          em.getTransaction().commit();
    	  
    	  em.close();
    	  emf.close();
    	  
    	  return "Record Updated Successfully";
    	  
	}

	
	


	@Override
	public Employee EmployeeLogin(String email, String pwd) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select e from Employee e where email=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, email);
	     qry.setParameter(2, pwd);
	     
	     Employee emp = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    emp = (Employee) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return emp;
	}

}
