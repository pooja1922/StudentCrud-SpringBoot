package com.dao;

import java.util.List;

import com.model.Student;

public interface StudentDao
{

	void saveStudent(Student student);

	List<Student> getAllStudents();

	List<Student> deleteData(int rno);

	Student updateData(int rno);

	List<Student> updateStudent(Student student);

	List<Student> relogin();

	

	


	

	

}
