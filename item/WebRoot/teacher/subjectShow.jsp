<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>试题详细显示页面</title>
      <meta charset="utf-8">
	  <link href="/public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	  <script src="/public/bootstrap/css/bootstrap-theme.min.css"></script>
	  <script src="/public/bootstrap/js/jquery.min.js"></script>
	  <script src="/public/bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
		background-color: #EEF2FB;
	}
	#showSubject table  td{
		font-size:12px;
	}
	-->
	</style>
	<link href="images/skin.css" rel="stylesheet" type="text/css">
  </head>
<body>


<div class="container">

	<nav class="navbar " role="navigation">
		<div class="container-fluid ">
			<div class="navbar-header ">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">教师管理后台</a>
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
							<li><a href="#">试题管理</a></li>
							<li><a href="#">查看试题</a></li>
							<li><a href="#">增加试题</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
<form action="subjectUpadate.action">
	<div class="row">
		<div class="col-md-4"></div>
        <div class="col-md-4">
            <div class=" alert-success "><s:actionmessage/></div>
        </div>

	</div>
	<div class="row">
		<div class="col-md-2">
			<div class="form-group">
			<label class="control-label" for="subjectId">试题编号</label>
			<input type="text" class="form-control " readonly="readonly" id="subjectId" name="subjectId" value="<s:property value="#request.subject.subjectId"/>">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label class="control-label" for="subjectType">题目类型</label>
				<input type="text" class="form-control" id="subjectType" name="subjectType" value="<s:property value="#request.subject.subjectType"/>">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label class="control-label" for="subjectChapter">题目章节</label>
				<input type="text" class="form-control" id="subjectChapter" name="subjectChapter" value="<s:property value="#request.subject.subjectChapter"/>">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label class="control-label" for="subjectGrade">题目分值</label>
				<input type="text" class="form-control" id="subjectGrade"name="subjectGrade" value="<s:property value="#request.subject.subjectGrade"/>">
			</div>
		</div>
		<div class="col-md-2">
			<div class="form-group">
				<label class="control-label" for="subjectHard">难易程度</label>
				<input type="text" class="form-control" id="subjectHard" name="subjectHard" value="<s:property value="#request.subject.subjectHard"/>">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label" for="subjectContent">试题内容</label>
				<input type="text" class="form-control" id="subjectContent" name="subjectContent" value="<s:property value="#request.subject.subjectContent"/>">
			</div>
		</div>

	</div>
	<s:if test="#request.subject.subjectType==\"3\"">
		<%--这是多选题--%>
		<div class="row">
			<div class="col-md-3">
				<div class="form-group">
					<label class="control-label" for="selectsA">选项A</label>
					<input type="text" class="form-control" id="selectsA" name="selectsA" value="<s:property value="#request.subject.selectsA"/>">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label class="control-label" for="selectsB">选项B</label>
					<input type="text" class="form-control" id="selectsB" name="selectsB" value="<s:property value="#request.subject.selectsB"/>">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label class="control-label" for="selectsC">选项C</label>
					<input type="text" class="form-control" id="selectsC" name="selectsC" value="<s:property value="#request.subject.selectsC"/>">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label class="control-label" for="selectsD">选项D</label>
					<input type="text" class="form-control" id="selectsD" name="selectsD" value="<s:property value="#request.subject.selectsD"/>">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label class="control-label" for="selectsE">选项E</label>
					<input type="text" class="form-control" id="selectsE" name="selectsE" value="<s:property value="#request.subject.selectsE"/>">
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="form-group">
					<label class="control-label" for="selectsAnswer">答案</label>
					<input type="text" class="form-control" id="selectsAnswer" name="selectsAnswer" value="<s:property value="#request.subject.selectsAnswer"/>">
				</div>
			</div>
		</div>

	</s:if>
	<s:elseif test="#request.subject.subjectType==\"2\"">
		<%--这是单选题--%>
		<div class="form-group">
			<label class="control-label" for="selectA">选项A</label>
			<input type="text" class="form-control" id="selectA" name="selectA" value="<s:property value="#request.subject.selectA"/>">
		</div>
		<div class="form-group">
			<label class="control-label" for="selectB">选项B</label>
			<input type="text" class="form-control" id="selectB" name="selectB" value="<s:property value="#request.subject.selectB"/>">
		</div>
		<div class="form-group">
			<label class="control-label" for="selectC">选项C</label>
			<input type="text" class="form-control" id="selectC" name="selectC" value="<s:property value="#request.subject.selectC"/>">
		</div>
		<div class="form-group">
			<label class="control-label" for="selectD">选项D</label>
			<input type="text" class="form-control" id="selectD" name="selectD" value="<s:property value="#request.subject.selectD"/>">
		</div>
		<div class="form-group">
			<label class="control-label" for="selectAnswer" >答案</label>
			<input type="text" class="form-control" id="selectAnswer" name="selectAnswer" value="<s:property value="#request.subject.selectAnswer"/>">
		</div>
	</s:elseif>
	<s:else>
		<%--这是判断题--%>
		<div class="form-group">
			<label class="control-label" for="jdugeAnswer">答案</label>
			<input type="text" class="form-controll" id="jdugeAnswer" name="jdugeAnswer" value="<s:property value="#request.subject.jdugeAnswer"/>">
		</div>
	</s:else>
	<button type="submit" class="btn btn-primary active" value="">修改</button>
</form>
</div>
</body>
</html>
