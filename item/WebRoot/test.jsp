<%--
  Created by IntelliJ IDEA.
  User: 11517
  Date: 2017/3/26
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.tjnu.dao.*" %>
<%@ page import="com.tjnu.test.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% //新建学生对象
 Students stu=new Students();
// stu.setId(new Integer(3));
 stu.setName("Tom");
 stu.setAge(new Integer(25));
 stu.setSex("nv");
 stu.setSno("M201571885");
 stu.setSchool("华中师范大学"); //保存stu对象
     TableDao dao=new TableDao();
     dao.saveStu(stu); //从数据库中获取stu对象
     //Students stu1=dao.loadStu(stu.getId()); //加载子类对象的时候，会使用内连接语句inner join
//     out.println("\n 数据库中的学生姓名："+stu1.getName()); //共有属性
//    out.println("\n数据库中的学生学号："+stu1.getSno()); //特征属性
//    out.println("\n数据库中的学生学校："+stu1.getSchool()); //特征属性
//    out.println("");//新建工人对象
     Worker worker=new Worker();
//     worker.setId(new Integer(4));
     worker.setName("王五");
     worker.setAge(new Integer(36));
     worker.setSex("nv");
     worker.setWno("W20152223");
     worker.setSalary(new Double(5435.32)); //保存工人对象
     dao.saveWorker(worker); //从数据库中获取工人对象
//     Worker worker2=dao.loadWorker(worker.getId()); //加载子类对象的时候，会使用内连接语句inner join、
//     out.println("\n数据库中的工人姓名："+worker2.getName()); //共有属性
//     out.println("\n数据库中的工人工号："+worker2.getWno()); //特征属性
//     out.println("\n数据库中的工人工资："+worker2.getSalary());//特征属性
     %>结果：
</body>
</html>
