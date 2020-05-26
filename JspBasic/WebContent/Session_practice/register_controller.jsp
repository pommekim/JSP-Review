<%@page import="user.UserRepository"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    	
    	/* String id = request.getParameter("account");
    	String pw = request.getParameter("password");
    	String name = request.getParameter("name");
    	String nick = request.getParameter("nickname");
    	
    	User user = new User(id, pw, name, nick); */
    	
    	//파라미터 값을 생성자의 매개값으로 바로 넘겨줌.
    	User user = new User(
    			request.getParameter("account"),
    			request.getParameter("password"),
    			request.getParameter("name"),
    			request.getParameter("nickname")
    			);
    	
    	//DB대신 리스트에 회원 정보를 저장.
    	UserRepository.save(user);
    	//한 명의 회원이 저장될 때마다 모든 회원 정보를 콘솔로 확인.
    	UserRepository.showUsers();
    	
    	response.sendRedirect("register_result.jsp");
    	
    	
    	
    
    %>