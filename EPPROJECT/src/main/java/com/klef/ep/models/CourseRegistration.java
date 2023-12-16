package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="courseregistration_table")
public class CourseRegistration implements Serializable
{  
	   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	   
	   @Id
	   private int id;
	   private int studentid;
	   @OneToOne
	   private Course course;
}
