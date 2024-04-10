package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Student;

@Repository
public class StudentDaoIMPL implements StudentDao {
	@Autowired
	private SessionFactory factory;

	public void saveStudent(Student student) {
		Session session = factory.openSession();
		session.save(student);
		session.beginTransaction().commit();
	}

	public List<Student> getAllStudents() {
		Session session = factory.openSession();
		Query<Student> query = session.createQuery("from Student");
		List<Student> sList = query.getResultList();
		return sList;
	}

	public List<Student> deleteData(int rno) {
		Session session = factory.openSession();
		Student stu = session.get(Student.class, rno);
		session.delete(stu);
		session.beginTransaction().commit();
		return getAllStudents();
	}

	public Student updateData(int rno) {
		Session session = factory.openSession();
		Student stu = session.get(Student.class, rno);
		return stu;
	}

	public List<Student> updateStudent(Student student) {
		Session session = factory.openSession();
		session.beginTransaction();
		session.update(student);
		session.getTransaction().commit();
		return getAllStudents();
	}

	public List<Student> relogin() {
	
		return getAllStudents();
	}

	
	

}
