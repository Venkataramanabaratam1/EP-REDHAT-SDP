package com.klef.ep.models;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Course implements Serializable
{
  /**  

   * 
   */
  private static final long serialVersionUID = 1L;
  @Id
    private int id;
  @Column(length = 20,nullable = false)
    private String name;
  @Column(nullable = false)
   private String route;
  @Column(nullable = false)
  private String about;
  @Column(nullable = false)
  private String imgsrc;
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
public String getRoute() {
  return route;
}
public void setRoute(String route) {
  this.route = route;
}
public String getAbout() {
  return about;
}
public void setAbout(String about) {
  this.about = about;
}
public String getImgsrc() {
  return imgsrc;
}
public void setImgsrc(String imgsrc) {
  this.imgsrc = imgsrc;
}

  
}