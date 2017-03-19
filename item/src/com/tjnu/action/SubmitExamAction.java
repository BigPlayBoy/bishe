package com.tjnu.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tjnu.po.Exam;
import com.tjnu.po.Student;
import com.tjnu.service.ExamService;
import com.tjnu.service.ExamServiceImpl;
import com.tjnu.service.StudentService;
import com.tjnu.service.StudentServiceImpl;
import com.tjnu.service.SubjectService;
import com.tjnu.service.SubjectServiceImpl;

/*
 * 提交试卷，并打分
 */
public class SubmitExamAction extends ActionSupport{
	private List<Integer> subjectID;//学生考试的题目
	private SubjectService subjectService = new SubjectServiceImpl();
	private ExamService examService=new ExamServiceImpl();
	public List<Integer> getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(List<Integer> subjectID) {
		this.subjectID = subjectID;
	}
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<String> studentAnswers = new ArrayList<String>();
		for(int i = 0; i < 20; i++) {
			String answer = request.getParameter("subjectAnswer"+i);
			studentAnswers.add(answer);
		}
		int GeneralPoint = subjectService.accountResult(subjectID, studentAnswers);
		
		//设置成绩到学生信息中
		Map session = ActionContext.getContext().getSession();
		Student student = (Student)session.get("studentInfo");
		String studentId = student.getStudentId();
		Exam exam=new Exam();
		exam.setResult(GeneralPoint);
		exam.setStudentId(studentId);
		exam.setStudentName(student.getStudentName());
		exam.setTime(new Date().toString());
		System.out.println(exam.getStudentId()+"\t"+exam.getStudentName()+"\t"+exam.getResult());
		examService.saveExam(exam);
		request.setAttribute("studentName", student.getStudentName());//保存学生姓名和总分数
		request.setAttribute("GeneralPoint", GeneralPoint);
		session.put("subjectIDs", subjectID);//将考试题目保存到session，方便后面显示答案使用
		return SUCCESS;
	}
}
