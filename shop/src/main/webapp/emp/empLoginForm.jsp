<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 인증분기	 : 세션변수 이름 - loginEmp
	if(session.getAttribute("loginEmp") != null) {
		response.sendRedirect("/shop/emp/empList.jsp");
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<%
		if(request.getParameter("errMsg") != null) {
	%>
			<div><%=request.getParameter("errMsg")%></div>
	<%		
		}
	%>
	<form action="/shop/emp/empLoginAction.jsp"> 	
		아이디 : <input type="text" name="empId">	<br> 
		비밀번호 : <input type="text" name="empPw"> <br>				
		<button type="submit">로그인</button>			
	</form>	
</body>
</html>