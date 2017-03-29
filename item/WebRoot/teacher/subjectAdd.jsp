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
    <nav class="navbar  " role="navigation">
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
                <input class="form-control" type="text" id="subjectSelectA" name="subjectSelectA" placeholder="请输入题目" >
            </div>
            </div>
            <div class="col-md-2">
            <div class="form-group">
                <label class="control-label" for="subjectSelectB">选项B</label>
                <input class="form-control" type="text" id="subjectSelectB" name="subjectSelectB" placeholder="请输入题目" >
            </div>
            </div>
            <div class="col-md-2">

            <div class="form-group">
                <label class="control-label" for="subjectSelectC">选项C</label>
                <input class="form-control" type="text" id="subjectSelectC" name="subjectSelectC" placeholder="请输入题目" >
            </div>
            </div>
            <div class="col-md-2">

            <div class="form-group">
                <label class="control-label" for="subjectSelectD">选项D</label>
                <input class="form-control" type="text" id="subjectSelectD" name="subjectSelectD" placeholder="请输入题目" >
            </div>
            </div>
            <div class="col-md-2">

            <div class="form-group">
                <label class="control-label" for="subjectSelectE">选项E</label>
                <input class="form-control" type="text" id="subjectSelectE" name="subjectSelectE" placeholder="请输入题目" >
            </div>
            </div>
        </div>
            <div class="form-group">
                <label class="control-label" for="subjectSelectAnswer">答案</label>
                <input class="form-control" type="text" id="subjectSelectAnswer" name="subjectSelectAnswer" placeholder="请输入题目" >
            </div>
        <div class="row">
            <div class="col-md-3">
            <div class="form-group">
                <label class="control-label">题目分值</label>
                <input class="form-control" type="text" id="subjectGrade" name="subjectGrade" placeholder="请输入题目分值" pattern="[0-9]{2}">
            </div>
            </div>            <div class="col-md-3">

        <div class="form-group">
                <label class="control-label" for="subjectHard">难易程度</label>
                <input class="form-control" type="text" id="subjectHard" name="subjectHard" placeholder="请输入题目难易程度" pattern="[0-9]">
            </div>
        </div>            <div class="col-md-3">

        <div class="form-group">
            <label class="control-label" for="subjectChapter" >章节</label>
            <input class="form-control" type="text" id="subjectChapter" name="subjectChapter" placeholder="请输入题目章节" pattern="[0-9]{2}">
        </div>
        </div>
        </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-primary">提交</button>
                <button type="reset" class="btn btn-primary">重置</button>
            </div>
            <div class="col-md-3"></div>
    </form>

</div>
 <%--<table width="100%" border="0" cellpadding="0" cellspacing="0">--%>
  <%--<tr>--%>
    <%--<td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>--%>
    <%--<td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">--%>
      <%--<tr>--%>
        <%--<td height="31"><div class="titlebt">录入试题</div></td>--%>
      <%--</tr>--%>
    <%--</table></td>--%>
    <%--<td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>--%>
  <%--</tr>--%>
  <%--<tr>--%>
    <%--<td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>--%>
    <%--<td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">--%>
      <%--<tr>--%>
        <%--<td width="53%" valign="top">&nbsp;</td>--%>
        <%--</tr>--%>
      <%--<tr>--%>
          <%--<td valign="middle"><span class="left_txt"></span>--%>
			<%--<div id="addSubjectForm" align="center"><!--录入试题表单-->--%>
				<%--<form action="subjectAdd.action" method="post">--%>
				<%--<table border="0" cellspacing="10" cellpadding="0">--%>
				  <%--<tr>--%>
					<%--<td colspan="2"><FONT color="red"><s:actionerror/></FONT></td>--%>
				  <%--</tr>--%>
				  <%--<tr>--%>
					<%--<td>试题题目:</td>--%>
					<%--<td><input type="text" name="subjectTitle" size="80" ></td>--%>
				  <%--</tr>--%>
				  <%--<tr>--%>
					<%--<td>选项A:</td>--%>
					<%--<td><input type="text" name="subjectOptionA" size="20" ></td>--%>
				  <%--</tr>--%>
				   <%--<tr>--%>
					<%--<td>选项B:</td>--%>
					<%--<td><input type="text" name="subjectOptionB" size="20" ></td>--%>
				  <%--</tr>--%>
				   <%--<tr>--%>
					<%--<td>选项C:</td>--%>
					<%--<td><input type="text" name="subjectOptionC" size="20" ></td>--%>
				  <%--</tr>--%>
				   <%--<tr>--%>
					<%--<td>选项D:</td>--%>
					<%--<td><input type="text" name="subjectOptionD" size="20" ></td>--%>
				  <%--</tr>--%>
				   <%--<tr>--%>
					<%--<td>答案:</td>--%>
					<%--<td>--%>
						<%--<input name="jdugeAnswer" type="radio" value="A" checked>A--%>
						<%--<input name="jdugeAnswer" type="radio" value="B">B--%>
						<%--<input name="jdugeAnswer" type="radio" value="C">C--%>
						<%--<input name="jdugeAnswer" type="radio" value="D">D--%>
					<%--</td>--%>
				  <%--</tr>--%>
				  <%--<tr>--%>
					<%--<td valign="top">试题解析:</td>--%>
					<%--<td>--%>
						<%--<textarea name="subjectParse" cols="76" rows="10"></textarea>--%>
					<%--</td>--%>
				  <%--</tr>--%>
				  <%--<tr>--%>
				  	<%--<td colspan="2"><div align="center">--%>
				  	  <%--<input type="submit" value="录入">				  	  --%>
				  	  <%--<input type="reset" value="重置">--%>
			  	  <%--</div>--%>
				<%--</td>--%>
				  <%--</tr>--%>
			<%--</table>--%>
			<%--</form>	--%>
			<%--</div>--%>
		<%--</td>--%>
        <%--</tr>--%>
      <%----%>
    <%--</table></td>--%>
    <%--<td background="images/mail_rightbg.gif">&nbsp;</td>--%>
  <%--</tr>--%>
  <%--<tr>--%>
    <%--<td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>--%>
    <%--<td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>--%>
    <%--<td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>--%>
  <%--</tr>--%>
<%--</table>--%>

</body>
</html>
