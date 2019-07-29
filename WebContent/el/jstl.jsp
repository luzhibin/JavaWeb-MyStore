<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="domain.user"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!--prefix表示前缀  c是核心标签库  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jstl通常和el表达式一起使用 -->

<%
	request.setAttribute("count", 100);
%>

<c:if test="${1==1}">jstl+el</c:if>

<c:if test="${conut>50 }">
	<h1>大于50</h1>
</c:if>
<c:if test="${conut<=50 }">
	<h1>小于等于50</h1>
</c:if>
<hr/>
<!-- 从域中取数据 自动把数据存储进pageScope域中 -->
<c:forEach begin="0" end="5" var="i">
	<%-- ${pageScope.i}--%>
	${i }<br>
</c:forEach>
<hr>

<%	//遍历集合  集合存放字符串
	List<String> strList = new ArrayList<String>();
	strList.add("aaa");
	strList.add("bbb");
	strList.add("ccc");
	request.setAttribute("strList", strList);
%>
<c:forEach items="${strList }" var="str">
	${str }<br>
</c:forEach>
<hr>
<%	//遍历集合，集合存放对象
	List<user> userList = new ArrayList<user>();
	user u1 = new user();
	u1.setUsername("user1");
	
	user u2 = new user();
	u2.setUsername("user2");
	
	userList.add(u1);//把对象添加到List集合中
	userList.add(u2);
	
	session.setAttribute("userList", userList);
%>
<c:forEach items="${userList }" var="users">
	${users.username }
</c:forEach>



</body>
</html>