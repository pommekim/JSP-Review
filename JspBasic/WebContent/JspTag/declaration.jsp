<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	//멤버변수 선언 가능
	public int i;
	public String name;
	
	public int add(int n1, int n2) {
		return n1 + n2;
	}
%>

<%
	int result = add(4, 7);
	int j = 0;
	i++;
	//지역변수는 반드시 초기화를 시켜줘야 함!
	j++;
	//메서드 호출은 메서드 내부에서만 가능 (위 declaration에서는 호출할 수 없음)
	double d = Math.random();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		out.print("i의 값: " + i + "<br>");
		out.print("j의 값: " + j + "<br>");
		out.print("result의 값: " + result + "<br>");
		out.print("d의 값: " + d + "<br>");
	%>
	
	<hr>
	
	i의 값: <%=i %> <br>
	j의 값: <%=j %> <br>
	result의 값: <%=result %> <br>
	무작위 난수: <%=Math.random() %>
	
</body>
</html>














