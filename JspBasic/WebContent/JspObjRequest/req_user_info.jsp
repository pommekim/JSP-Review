<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String name = request.getParameter("name");
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String gender = request.getParameter("gender");
    	//받아오는 값이 여러개일 때는 getParameterValues메서드를 사용!
    	String[] hobby = request.getParameterValues("hobby");
    	String region = request.getParameter("region");
    	String intro = request.getParameter("introduce");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		# 이름: <%=name %> <br>
		# ID: <%=id %> <br>
		# PW: <%=pw %> <br>
		# 성별: <%=gender %> <br>
		<%--배열의 주소가 아닌 내부의 값들을 출력해주는 메서드: Arrays.toString --%>
		# 취미: <%=Arrays.toString(hobby) %> <br>
		# 지역: <%=region %> <br>
		# 자기소개: <%=intro %>
	</p>






</body>
</html>









