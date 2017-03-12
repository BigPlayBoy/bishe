package com.sanqing.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.po.Student;
import com.sanqing.service.StudentService;
import com.sanqing.service.StudentServiceImpl;

public class RegisterAction extends ActionSupport{
	private String studentId;//学生学号
	private String studentName; // 接受用户姓名
	private String password; // 接受用户密码
	private StudentService studentService = new StudentServiceImpl();// 学生业务逻辑组件引用

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		System.out.println("信息获取：学号："+studentId+"\t姓名"+studentName+"\t密码"+password);
		if(studentService.getStudentByName(studentName).isEmpty()){//不存在该用户
			Student student=new Student();
			student.setStudentID(studentId);
			student.setStudentPassword(password);
			student.setStudentName(studentName);
			studentService.saveStudent(student);
			System.out.println("保存用户成功！！");
			return "registerSuccess";
		}else{
			addActionError("该学生编号不存在，或者密码不正确!");
			return this.INPUT;
		}
		
	}
}
