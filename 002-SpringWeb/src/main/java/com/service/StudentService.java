package com.service;

import java.util.List;

import com.model.Student;

public interface StudentService
{
	void saveStudent(Student student);

	List<Student> loginCheck(String user, String pass);

	

	List<Student> deleteData(int rno);

	Student updateData(int rno);

	List<Student> updateStudent(Student student);

	List<Student> relogin();

	


	


}
