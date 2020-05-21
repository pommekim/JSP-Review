<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//내가 만들지 않아도 자동으로 내장객체 request를 만들기 때문에 메서드도 바로 사용 가능!
    	StringBuffer reqUrl = request.getRequestURL();
    	//uri = 정형화된 내부자원, 식별자
    	String reqUri = request.getRequestURI();
    	//protocol = 통신규약
    	String protocol = request.getProtocol();
    	//context path = 내부자원의 근본주소
    	String conPath = request.getContextPath();
    	int serverPort = request.getServerPort();
    	String userIP = request.getRemoteAddr();
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		# 요청 URL: <%=reqUrl %> <br>
		# 요청 URI: <%=reqUri %> <br>
		# 요청 프로토콜: <%=protocol %> <br>
		# 요청 컨텍스트 루트 경로: <%=conPath %> <br>
		# 서버 포트번호: <%=serverPort %> <br>
		# 요청 ip 주소: <%=userIP %> <br>
	</p>





</body>
</html>

















