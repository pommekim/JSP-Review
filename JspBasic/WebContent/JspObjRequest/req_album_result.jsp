<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String choice = request.getParameter("choice");
    
    	if(choice.equals("7")) {
    		response.sendRedirect("furious7.jsp");
    	} else if(choice.equals("8")) {
    		response.sendRedirect("furious8.jsp");
    	}
    	
    %>
    
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% if(choice.equals("7")) { %>
		
		<div align="center">
			<h2>선택하신 영화 정보</h2>
			<p>
				당신이 선택하신 영화의 제목은 '분노의 질주7'입니다.
			</p>
			<hr>
			<h3>영화 예고편</h3>
			<!-- 자동재생: src끝에 autoplay=1이라는 파라미터를 뭍혀주기 -->
			<iframe width="800" height="600" src="https://www.youtube.com/embed/se0ba0glYcI?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	
	<% } else if(choice.equals("8")) { %>
		
		<div align="center">
			<h2>선택하신 영화 정보</h2>
			<p>
				당신이 선택하신 영화의 제목은 '분노의 질주8'입니다.
			</p>
			<hr>
			<h3>영화 예고편</h3>
			<iframe width="800" height="600" src="https://www.youtube.com/embed/UPRSY188_lI?autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		
	<% } %>

</body>
</html> --%>