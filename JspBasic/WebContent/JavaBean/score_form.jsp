<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		국어(kor), 영어(eng), 수학(math) 점수를 입력받아 전송하는
		폼을 작성하세요. (score_bean_make.jsp)
	 --%>
	 
	 <form action="score_bean_make.jsp">
	 	<h2>점수 입력</h2>
	 	# 국어: <input type="text" name="kor" size="10"> <br>
	 	# 영어: <input type="text" name="eng" size="10"> <br>
	 	# 수학: <input type="text" name="math" size="10"> <br>
	 	<input type="submit" value="저장">
	 </form>

</body>
</html>