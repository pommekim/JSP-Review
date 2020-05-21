<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    	List<String> party = new ArrayList<>();
    	List<Integer> jobNumber = new ArrayList<>();
    %>
    
    
    <%
    	String[] jobs = {"전사", "도적", "사냥꾼", "마법사", "사제"};
    
	    /*
	    	-직업 개수 만큼의 정수 난수를 발생시켜 주세요. (0 ~ 4)
	    	-발생된 난수의 번호대로 party라는 리스트에 직업 이름을 추가해 주세요.
	    	
	    	-party라는 list에 현재 선택된 직업이 몇 개 존재하는지 확인하는 작업이 필요합니다.
	    	
	    	-반복문으로 list를 순회 하여, 현재 선택된 직업의 문자열과 party라는 리스트에 들어있는 문자열을 비교하여, 같은 문자열이 발견될 때마다 숫자를 세서
	    	나와 같은 직업을 가진 파티원이 몇 명인지를 세 주셔야 합니다.
	    */
	    
	    
	    //직업 갯수만큼의 정수 난수를 발생.
	    int r = (int)(Math.random()*jobs.length);	//[0,1,2,3,4]	//앞과 뒤에 5씩 곱한것 0 ~ 5.0 int로 형변환을 하니까 5까지다
	    String job = jobs[r];
	    party.add(job);
	    jobNumber.add(r);
	    
	    
	    //현재 선택된 직업이 몇개 존재하는지 확인하는 변수.
	    int cnt = 0;
	    
	    for(String player : party) {
	    	if(job.equals(player)) cnt++;
	    }
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		<img> img 폴더 안에 넣기
		<img>태그 사용하여 각 직업에 맞는 사진을 띄우세요.
		당신의 직업 -> 가로 40px, 세로 40px
		
		파티원을 표시하는 사진 -> 가로 세로 20px
		
		현재 파티 구성에 list를 반복문으로 순회하여 해당 작업 (jobs)의 인덱스를 번호를
		따로 부여하신 후, 그 직업 인덱스 번호에 맞추어서 사진을 img 태그로 넣어주시면 됩니다. 
		
		그리고, 파티원이 10명이 되었을 경우 리스트를 비워 주시면 되겠습니다.
		
		파일 자체를 인덱스 번호로 하면된다. 리스트를 그 사진 인덱스로 번호와 동일한 사진을 끌어올 수 있음!
	 --%>
	 
	 
	<h2>당신의 역할</h2>
	<p>
		<img src = "img/<%=r %>.png" width="40px" height="40px" />
		당신에게 부여된 역할은 <strong>[<%=job %>]</strong> 입니다. <br>
		현재 파티에 당신과 같은 역할을 가진 플레이어는 <%=cnt %>명 입니다.
	</p>
	<p>
		현재 파티 구성<br>
		<% for(int idx : jobNumber) { %>
		<img src ="img/<%=idx %>.png" width="20px" height="20px">
		<% } %>
		(<%=party.size() %>명 참가 중)
	</p>
	
	<%
	if(party.size()==10) {
		party.clear();
		jobNumber.clear();
	}
	%>
	
</body>
</html>