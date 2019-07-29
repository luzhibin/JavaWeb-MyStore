<%@page import="com.alibaba.druid.stat.TableStat.Name"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("name", "pageContextValue");
	request.setAttribute("name2", "requestValue");
	session.setAttribute("name3", "sessionValue");
	application.setAttribute("name4", "applicationValue");
%>

${pageScope.name}
<br/>
${requestScope.name2}
<br>
${sessionScope.name3}
${applicationScope.name4}
</body>
</html>