<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
	
		<form action="req_album_result.jsp">

			<table border="1" width="700px">
				<thead>
					<th></th>
					<th>영화 포스터</th>
					<th>영화 제목</th>
					<th>출연</th>
					<th>개봉일</th>
				</thead>
				<tr align="center">
					<td><input type="radio" name="choice" value="7"></td>
					<td><img src="분노의질주7.jpg" width="200px"></td>
					<td>분노의질주7</td>
					<td>빈 디젤, 폴 워커, 드웨인 존슨</td>
					<td>2015.04.01</td>
				</tr>
				<tr align="center">
					<td><input type="radio" name="choice" value="8"></td>
					<td><img src="분노의질주8.jpg" width="200px"></td>
					<td>분노의질주8</td>
					<td>빈 디젤, 드웨인 존슨, 샤를리즈 테론</td>
					<td>2017.04.12</td>
				</tr>
				<tr align="center">
					<!-- 5칸을 한 칸으로 병합: colspan -->
					<td colspan="5"><input type="submit" value="확인"></td>
				</tr>
				
			</table>

		</form>
	
	</div>

</body>
</html>