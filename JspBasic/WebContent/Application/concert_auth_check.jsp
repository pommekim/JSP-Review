<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	    /*
	    - 사용자가 입력한 인증코드와 랜덤으로 생성한 (UUID객체로 생성한) 인증 코드를
	     비교하여 코드가 일치한다면 세션을 하나 생성 후 "concert_reserve.jsp"로
	     이동시켜 주세요.
	     세션 이름은 auth_pass 값은 논리상수 true를 넣어주세요.
	     
	    - 코드가 일치하지 않는다면 "인증코드가 일치하지 않습니다. 다시 입력해 주세요."
	     라는 경고창 출력 후 concert_auth.jsp로 페이지 이동시켜 주세요.
	    
	    */
	    
	    //랜덤으로 생성된 인증번호
    	String comUuid = (String) session.getAttribute("auth_code");
    	//사용자가 입력한 인증번호
    	String userUuid = request.getParameter("code");
    	
    	if(comUuid.equals(userUuid)) {
    		session.setAttribute("auth_pass", true);
    		response.sendRedirect("concert_reserve.jsp");
    	} else { %>
    		<script>
    			alert("인증코드가 일치하지 않습니다. 다시 입력해 주세요.");
    			location.href="concert_auth.jsp";
    		</script>
    		
    	<% } %>
