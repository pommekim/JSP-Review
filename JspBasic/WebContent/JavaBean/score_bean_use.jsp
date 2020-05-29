<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	score_bean_make에서 전송된 ScoreBean객체를 활용하여
    	5가지 데이터를 브라우저에 출력하세요.
     --%>
     
<%--      <%
     
     	int kor = Integer.parseInt(request.getParameter("kor"));
     	int eng = Integer.parseInt(request.getParameter("eng"));
     	int math = Integer.parseInt(request.getParameter("math"));
     	int total = Integer.parseInt(request.getParameter("total"));
     	double average = Double.parseDouble(request.getParameter("average"));
     
     %> --%>

<jsp:useBean id="score" class="kr.co.jsp.score.ScoreBean" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<h2>점수</h2>
	# 국어: <%=kor %> <br>
	# 영어: <%=eng %> <br>
	# 수학: <%=math %> <br>
	# 총점: <%=total %> <br>
	# 평균: <%=average %> <br> --%>
	
	# 국어: <jsp:getProperty name="score" property="kor" /> <br>
	# 영어: <jsp:getProperty name="score" property="eng" /> <br>
	# 수학: <jsp:getProperty name="score" property="math" /> <br>
	<hr>
	# 총점: <jsp:getProperty name="score" property="total" /> <br>
	# 평균: <jsp:getProperty name="score" property="average" /> <br>
	
</body>
</html>