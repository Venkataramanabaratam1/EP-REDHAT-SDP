package com.klef.ep.services;

import com.klef.ep.models.Faculty;

public interface FacultyService 
{
  public Faculty CheckFacultyLogin(String email,String password);
  public Faculty ViewFacultyProfile(int id);
}