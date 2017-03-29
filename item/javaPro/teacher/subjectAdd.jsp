<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>试题添加页面</title>
	<style type="text/css">
	</style>
      <link href="/public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <script src="/public/bootstrap/css/bootstrap-theme.min.css"></script>
      <script src="/public/bootstrap/js/jquery.min.js"></script>
      <script src="/public/bootstrap/js/bootstrap.min.js"></script>
  </head>
<body>

<div class="container">
    <nav class="navbar  navbar-default" role="navigation">
        <div class="container-fluid ">
            <div class="navbar-header ">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">教师管理后台</a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">学生管理</a></li>
                    <li><a href="#">修改密码</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            试题管理 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="subjectQuery.jsp">查看试题</a></li>
                            <li><a href="subjectAdd.jsp">增加试题</a></li>
                        </ul>
                    </li>
                    <li><a href="#">退出系统</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <h1>请在此添加新的题目</h1>
    <h3 class="alert-info"><s:actionmessage/></h3>
    <form action="subjectAdd.action" method="post" role="form">
        <div class="form-group">
            <label class="control-label" for="subjectContent">试题题目</label>
            <input class="form-control" type="text" id="subjectContent" name="subjectContent" placeholder="请输入题目" >
        </div>
        <div class="row">
            <div class="col-md-2">
            <div class="form-group">
                <label class="control-label" for="subjectSelectA">选项A</label>
                <input class="form-control" type="text" id="subjectSelectA" name="subjectSelectA" placeholder="请输入选项A" >
            </div>
            </div>
            <div class="col-md-2">
            <div class="form-group">
                <label class="control-label" for="subjectSelectB">选项B</label>
                <input class="form-control" type="text" id="subjectSelectB" name="subjectSelectB" placeholder="请输入选项B" >
            </div>
            </div>
            <div class="col-md-2">
            <div class="form-group">
                <label class="control-label" for="subjectSelectC">选项C</label>
                <input class="form-control" type="text" id="subjectSelectC" name="subjectSelectC" placeholder="请输入选项C" >
            </div>
            </div>
            <div class="col-md-2">
            <div class="form-group">
                <label class="control-label" for="subjectSelectD">选项D</label>
                <input class="form-control" type="text" id="subjectSelectD" name="subjectSelectD" placeholder="请输入选项D" >
            </div>
            </div>
            <div class="col-md-2">
            <div class="form-group">
                <label class="control-label" for="subjectSelectE">选项E</label>
                <input class="form-control" type="text" id="subjectSelectE" name="subjectSelectE" placeholder="请输入选项E" >
            </div>
            </div>
        </div>
            <div class="form-group">
                <label class="control-label" for="subjectSelectAnswer">答案</label>
                <input class="form-control" type="text" id="subjectSelectAnswer" name="subjectSelectAnswer" placeholder="请输入答案" >
            </div>
        <div class="row">
            <div class="col-md-3">
            <div class="form-group">
                <label class="control-label">题目分值</label>
                <input class="form-control" type="text" id="subjectGrade" name="subjectGrade" placeholder="请输入题目分值" pattern="[0-9]{0,2}" title="题目分值范围为0-99，请输入纯数字">
            </div>
            </div>
            <div class="col-md-3">
        <div class="form-group">
                <label class="control-label" for="subjectHard">难易程度</label>
                <input class="form-control" type="text" id="subjectHard" name="subjectHard" placeholder="请输入题目难易程度" pattern="[0-9]" title="难易程度范围为0-9，请输入纯数字">
            </div>
        </div>
            <div class="col-md-3">
        <div class="form-group">
            <label class="control-label" for="subjectChapter" >章节</label>
            <input class="form-control" type="text" id="subjectChapter" name="subjectChapter" placeholder="请输入题目章节" pattern="[0-9]{0,2}" title="章节的范围为0-99,请输入数字">
        </div>
        </div>
        </div>
        <div class="btn-group">
            <button type="submit" class="btn btn-primary">提交</button>
            <button type="reset" class="btn btn-primary">重置</button>
        </div>
    </form>
</div>

</body>
</html>
