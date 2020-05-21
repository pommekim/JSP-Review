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
		* 사용자의 입력값을 서버로 전송하는 방법.
		1. 사용자의 입력 데이터를 서버로 전송하려면 HTML의 form태그를 사용합니다.
		2. form 태크의 action 속성에 데이터를 전달받을 페이지의 URL 주소를 작성합니다.
		3. input 태그의 name속성으로 요청 파라미터 변수명을 지정할 수 있습니다.
	 --%>
	 
	 

	<form action="req_user_info.jsp">
		# 이름: <input type="text" name="name" /> <br>
	    # 아이디: <input type="text" name="id" /> <br>
	    # 비밀번호: <input type="password" name="pw" /> <br>

	    # 성별 <br>
	    <input type="radio" name="gender" value="남" />남 &nbsp;&nbsp;&nbsp;
	    <input type="radio" name="gender" value="여" />여 <br>

	    # 취미 <br>
	    <input type="checkbox" name="hobby" value="독서" />독서 &nbsp;
	    <input type="checkbox" name="hobby" value="수면" />수면 &nbsp;
	    <input type="checkbox" name="hobby" value="축구" />축구 &nbsp;
	    <input type="checkbox" name="hobby" value="게임" />게임 <br>

	    # 지역:
	    <select name="region">
		<option>서울</option>
		<option>대전</option>
		<option>대구</option>
		<option>부산</option>
	    </select> <br>

	    # 자기소개 <br>
	    <textarea name="introduce" cols="40" rows="10">자기소개: </textarea> <br>
	    
	    <input type="submit" value="회원가입" />
	    <input type="reset" value="초기화" />
	</form>



</body>
</html>