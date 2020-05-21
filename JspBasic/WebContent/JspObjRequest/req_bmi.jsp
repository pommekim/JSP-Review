<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	bmi지수 계산 공식 = [체중(kg) / 신장(m) * 신장(m)]
    	- bmi지수가 23을 초과한다면 "당신은 과체중입니다." 를 출력.
    	- 18.5 미만이라면 "당신은 저체중입니다." 를 출력.
    	- 나머지는 "당신은 정상체중입니다." 를 출력하세요.]
    	
    	request.getParameter()의 리턴타입이 String이기 때문에
    	bmi지수를 계산하려면 실수나 정수로 변환을 해주셔야 합니다.
    	Integer.parseInt(변환하고 싶은 문자열 or 문자열이 들어있는 변수.)
    	Double.parseDouble(문자열)
    	
     --%>
     
     <%
     	String strCm = request.getParameter("cm");
     	String strKg = request.getParameter("kg");
     	
     	double cm = Double.parseDouble(strCm);
     	double kg = Double.parseDouble(strKg);
     	
     	//bmi지수 계산
     	
     	double bmi = (kg / (cm/100 * cm/100));
     	//자바의 round함수는 기능이 제한적
     	//따라서 소수점 둘째자리까지 표현하고 싶을 땐 100을 곱한 후 다시 100.0(double)으로 나눠줘야 함
     	bmi = Math.round(bmi*100) / 100.0;
     	
     %>
     
     
     
     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>체질량 지수(BMI) 계산</h2>
	<hr>
	<p>
	- 신장: <%=strCm %>cm <br>
	- 체중: <%=strKg %>kg <br>
	</p>
	
	BMI지수: <strong><%=bmi %></strong> <br>
	
	<%if(bmi > 23) {
		out.print("당신은 과체중입니다.");
	} else if(bmi < 18.5) {
		out.print("당신은 저체중입니다.");
	} else {
		out.print("당신은 정상체중입니다.");
	} %>





</body>
</html>








