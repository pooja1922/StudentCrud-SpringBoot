package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Student;
import com.service.StudentService;

@Controller
public class HomeController {

	@Autowired
	private StudentService service;

	@RequestMapping("/")
	public String landingPage() {

		return "index";
	}

	@RequestMapping("/login")
	public String loginPage() {
		System.out.println("login page called");
		return "login";
	}

	@RequestMapping("/log")
	public String loginCheck(@RequestParam("uname") String user, @RequestParam("pass") String pass, Model model)

	{

		List<Student> sList = service.loginCheck(user, pass);
		System.out.println(sList);
		if (sList != null) {
			model.addAttribute("data", sList);
			return "success";
		} else {
			return "login";
		}

	}

	@RequestMapping("/reg")

	public String regPage() {
		System.out.println("reg page called");
		return "reg";
	}

	@RequestMapping("/register")
	public String registerData(@ModelAttribute Student student) {
		System.out.println(student);
		service.saveStudent(student);

		return "reg";
	}

	@RequestMapping("/deleteData")
	public String deleteData(@RequestParam int rno, Model model)

	{
		List<Student> sList = service.deleteData(rno);
		System.out.println(sList);
		model.addAttribute("data", sList);
		return "success";
	}


	@RequestMapping("/updateData")
	public String updateData(@RequestParam int rno, Model model) 
	{
		System.out.println("update page called");
		Student stu=service.updateData(rno);
	
		model.addAttribute("stu",stu);
		return "edit";
	}

	@RequestMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student student,Model model) {
	
	List<Student> sList=service.updateStudent(student);
	System.out.println(sList);
	model.addAttribute("data",sList);
		
		return "success";
	}
	
	@RequestMapping("/greet")
	@ResponseBody
	public String greet() {
		System.out.println("greet page called");
		return "welcome to Spring mvc";
	}

	@RequestMapping("/*")
	public String errorPage() {
		System.out.println("login page called");
		return "error";
	}
	
	@RequestMapping("/relogin")
	public String relogin(Model model)
	{
		List<Student> sList=service.relogin();
		model.addAttribute("data",sList);
		return"success";
	}

}
