<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>试题模糊查询页面</title>
      <meta charset="UTF-8">

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

    <%--查询条件开始--%>
    <div class="Submit">
        <form action="getsubject.action" >
            <div class="input-group ">
                <span>题型：</span>
                <select name="tixing" class="select">
                    <option value="0">全部</option>
                    <option value="1">判断题</option>
                    <option value="2">单选题</option>
                    <option value="3">多选题</option>
                </select>
                <span>章节：</span>
                <select name="chapter" class="select">
                    <option value="0">全部</option>
                    <option value="1">第一章</option>
                    <option value="2">第二章</option>
                    <option value="3">第三章</option>
                    <option value="4">第四章</option>
                </select>
                <span>难易程度</span>
                <select name="hard" class="select">
                    <option value="0">全部</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <span>关键字：</span>
                <input class="form-control" type="text" placeholder="请输入关键字" name="guanjianzi">
                <button type="submit" class="btn-default "  value="提交">提交</button>
            </div>

        </form>
    </div>
    <%--查询条件结束--%>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class=" alert-success "><s:actionmessage/></div>
        </div>
    </div>
    <table class="table table-responsive table-bordered ">
        <thead>
        <tr>
            <th>编号</th>
            <th width="50%">题目内容</th>
            <th>题目类型</th>
            <th>题目章节</th>
            <th>题目分值</th>
            <th>难易程度</th>
            <th>查看详情</th>
            <th>删除</th>
        </tr>
        </thead>
        <tbody>
        <s:if test="#request.subjects!=null">
            <s:iterator value="#request.subjects" id="subject">
                <tr>
                    <td><s:property value="#subject.subjectId"/> </td>
                    <td><s:property value="#subject.subjectContent"/> </td>
                    <td><s:property value="#subject.subjectType"/> </td>
                    <td><s:property value="#subject.subjectChapter"/> </td>
                    <td><s:property value="#subject.subjectGrade"/> </td>
                    <td><s:property value="#subject.subjectHard"/> </td>
                    <td><a href="subjectShow.action?subjectId=<s:property value="#subject.subjectId"/>" target="_blank">查看详情</a></td>
                    <td><a href="subjectDelete.action?tixing=<s:property value="#request.tixing"/>&chapter=<s:property value="#request.chapter"/>&hard=<s:property value="#request.hard"/>&guanjianzi=<s:property value="#request.guanjianzi"/>&subjectId=<s:property value="#subject.subjectId"/>" target="_blank">删除</a></td>
                </tr>
            </s:iterator>
        </s:if>
        <s:else>
            <tr><td colspan="8">没有查到结果</td></tr>
        </s:else>
        </tbody>
    </table>
    <ul class="pagination" >
        <%--共${page.totalCount}条纪录，当前第${page.currentPage}/${page.totalPage}页，每页${page.everyPage}条纪录--%>
        <s:if test="#request.page.hasPrePage">
            <li><a href="getsubject.action?tixing=<s:property value="#request.tixing"/>&chapter=<s:property value="#request.chapter"/>&hard=<s:property value="#request.hard"/>&guanjianzi=<s:property value="#request.guanjianzi"/>&currentPage=1">首页</a> </li>
            <li><a href="getsubject.action?tixing=<s:property value="#request.tixing"/>&chapter=<s:property value="#request.chapter"/>&hard=<s:property value="#request.hard"/>&guanjianzi=<s:property value="#request.guanjianzi"/>&currentPage=${page.currentPage - 1}">上一页</a> </li>
        </s:if>
        <s:else>
            <li class="disabled"><a>首页</a></li>
            <li class="disabled"><a>上一页</a></li>
        </s:else>
        <s:if test="#request.page.hasNextPage">
            <li><a href="getsubject.action?tixing=<s:property value="#request.tixing"/>&chapter=<s:property value="#request.chapter"/>&hard=<s:property value="#request.hard"/>&guanjianzi=<s:property value="#request.guanjianzi"/>&currentPage=${page.currentPage + 1}">下一页</a></li>
            <li><a href="getsubject.action?
             tixing=<s:property value="#request.tixing"/>&chapter=<s:property value="#request.chapter"/>&hard=<s:property value="#request.hard"/>&guanjianzi=<s:property value="#request.guanjianzi"/>&currentPage=${page.totalPage}">尾页</a></li>
        </s:if>
        <s:else>
            <li class="disabled"><a>下一页</a></li>
            <li class="disabled"><a>尾页</a></li>
        </s:else>
    </ul>
</div>
</body>
</html>
