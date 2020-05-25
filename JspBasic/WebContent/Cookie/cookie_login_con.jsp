<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String check = request.getParameter("id_remember");
    	
    	if(id.equals("abc1234") && pw.equals("aaa1111")) {
    		//쿠키를 생성하면서 이름과 값을 지정 (로그인 유지 쿠키)
    		Cookie idCookie = new Cookie("id_cookie", id);
    		//idCookie의 수명을 5초로 지정
    		idCookie.setMaxAge(5);
    		//사용자에게 쿠키 정보 넘겨주기
    		response.addCookie(idCookie);
    		
    		//아이디 기억용 쿠키 생성
    		if(check != null) {
    			Cookie idMemory = new Cookie("remember_id", id);
    			idMemory.setMaxAge(30);
    			response.addCookie(idMemory);
    		}
    		
    		response.sendRedirect("cookie_welcome.jsp");
    		
    	} else {
    		response.sendRedirect("cookie_login.jsp");
    	}
    %>