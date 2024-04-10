package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.StudentDao;
import com.model.Student;

@Service
public class StudentServiceIMPL implements StudentService
{
	@Autowired
	private StudentDao studentDao;
	public void saveStudent(Student student)
	{
		studentDao.saveStudent(student);
	}
	public List<Student> loginCheck(String user, String pass)
	{
		if (user.equals("admin") && pass.equals("1234"))
		{
			return studentDao.getAllStudents();
		}
		else
		{
			return null;
		}
		
	}
	public List<Student> deleteData(int rno) 
	{
		// TODO Auto-generated method stub
		return studentDao.deleteData(rno);
	}
	
	public Student updateData(int rno)
	{
		
		return studentDao.updateData(rno);
	}
	public List<Student> updateStudent(Student student) {
		// TODO Auto-generated method stub
		return studentDao.updateStudent(student);
	}
	public List<Student> relogin()
	{// TODO Auto-generated method stub
		return studentDao.relogin();
	}
	
	
	
	

}
