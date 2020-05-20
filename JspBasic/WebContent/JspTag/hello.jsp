<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% for(int i=1; i<=5; i++) { %>
	<h2>이클립스 내부에서 jsp 문서 작성하기!!!</h2>
	<p> <!-- p태그는 문단을 구성하는 태그입니다. (paragraph) -->
		안녕하세요. 오늘은 2020년 5월 19일입니다. <br>
		지금은 jsp 문서를 작성중입니다!
	</p>
	<% } %>
	
	<hr>
	
	<h2>구구단 2단</h2>
	<% for(int hang=1; hang<=9; hang++) { %>
		2 x <%=hang %> = <%=2 * hang %> <br>
	<% } %>
	
	<hr>
	
	<h2>구구단 2단</h2>
	<% for(int hang=1; hang<=9; hang++) {
		//out.print메서드는 브라우저에 바로 출력을 실행하는 메서드입니다.
		//브라우저에 출력할 텍스트를 ""에 감싸서 전달하시면 됩니다.
		out.print("2 x " + hang + " = " + (2 * hang) + "<br>");
	} %>
	
	<hr>
	
	<!-- 반복문, 조건문을 이용하여 구구단을 홀수단 (3, 5, 7, 9)만 브라우저에 출력해 보세요. -->
	
	<% for(int dan=2; dan<=9; dan++) {
		if(dan % 2 != 0) {
			out.print("<h2>구구단" + dan + "단 </h2> <hr>");
			for(int hang=1; hang<=9; hang++) {
			out.print(dan + " x " + hang + " = " + (dan*hang) + "<br>");
			}
		}
	} %>
	
	
	
	
	
	
	
</body>
</html>