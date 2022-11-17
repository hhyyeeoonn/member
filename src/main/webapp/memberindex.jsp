<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if((session.getAttribute("loginMemberId") == null) {
		
		
		return;
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%=(String)(session.getAttribute("loginMemberId"))%>님 반갑습니다.
		<a href="<%=request.getContextPath %>
	</div>
	<h1>회원페이지</h1>
	
</body>
</html>