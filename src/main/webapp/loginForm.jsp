<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1> 
	<form action="<%=request.getContextPath()%>/loginForm.jsp" method="post"> <!-- 중요한 내용은 앞에 쓰자 -->
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberId"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="memberPw"></td>
			</tr>
		
		</table>
		<button type="submit">로그인</button>
	</form>
	
	<!-- 회원이 아닐 때 -->
	<div>
		<a href="<%=request.getContextPath()%>/insertMemberForm.jsp">회원가입</a>
		<!-- insertmemberForm.jsp, insertMemberAction.jsp redirect loginForm.jsp -->
	</div>
	<div>
	<%
		if((request.getParameter("loginMsg")) != null) {
	%>
		<%=request.getParameter("loginMsg")%>
	<%
		}
	%>
	</div>
	
	
	
</body>
</html>