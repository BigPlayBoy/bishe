package com.sanqing.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.po.Student;
import com.sanqing.service.StudentService;
import com.sanqing.service.StudentServiceImpl;
import com.sanqing.service.TeacherService;
import com.sanqing.service.TeacherServiceImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class myLoginAction extends ActionSupport {
	private String StudentId; // 接受用户编号
	private String StudentPassword; // 接受用户密码
	private StudentService studentService = new StudentServiceImpl();// 学生业务逻辑组件引用

	

	public String getStudentId() {
		return StudentId;
	}

	public void setStudentId(String studentId) {
		StudentId = studentId;
	}

	public String getStudentPassword() {
		return StudentPassword;
	}

	public void setStudentPassword(String password) {
		this.StudentPassword = password;
	}

	public String execute() throws Exception {
		System.out.println("學生id："+StudentId+"\t學生密碼："+StudentPassword);
		System.out.println(studentService.getStudentInfo(getStudentId()));
		if (studentService.allowLogin(StudentId, StudentPassword)) {
			Student studentInfo = studentService.getStudentInfo(StudentId);
			// 保存学生记录到session范围
			Map session = ActionContext.getContext().getSession();
			session.put("studentInfo", studentInfo);
			HttpServletRequest request = ServletActionContext.getRequest();
//			System.out.println("输出获取到的留言内容\t"+messageBoards.get(0).getContent());
			request.setAttribute("student", studentInfo);
			return "mysuccess";
		} else {
			addActionError("该学生编号不存在，或者密码不正确!");
			return this.INPUT;
		}
	}

}
