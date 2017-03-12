package com.sanqing.service;

import com.sanqing.dao.ExamDAO;
import com.sanqing.dao.ExamDAOImpl;
import com.sanqing.po.Exam;

public class ExamServiceImpl implements ExamService{

	@Override
	public Boolean saveExam(Exam exam) {
		// TODO Auto-generated method stub
		ExamDAO examDAO=new ExamDAOImpl();
		return examDAO.insertEaxmResult(exam);
	}

}
