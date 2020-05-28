<%@page import="kr.co.jsp.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//UserBean user = (UserBean) request.getAttribute("user");
    %>

<jsp:useBean id="user" class="kr.co.jsp.user.UserBean" scope="request" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 아이디: <%=user.getId() %> <br>
	비밀번호: <%=user.getPw() %> <br>
	이름: <%=user.getName() %> <br>
	이메일: <%=user.getEmail() %> <br> --%>
	
	아이디: <jsp:getProperty name="user" property="id" /> <br>
	비밀번호: <jsp:getProperty name="user" property="pw" /> <br>
	이름: <jsp:getProperty name="user" property="name" /> <br>
	이메일: <jsp:getProperty name="user" property="email" /> <br>

</body>
</html>