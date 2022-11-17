<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 1
	if(session.getAttribute("loginMemberId") == null) {
		// 로그인 되지 않은 상태
		response.sendRedirect(request.getContextPath()+"/loginForm.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보</title>
</head>
<body>
	<h1>내정보</h1>
	<!-- 비밀번호를 제외한 모든 정보(컬럼) 출력 -->
	<div>
		<a href="<%=request.getContextPath()%>/updateMemberPwForm.jsp">비밀번호수정</a>
		<!-- updateMemberPwAction.jsp 수정전 비밀번호, 변경할 비밀번호를 입력받아야 함-->
	</div>
	<div>
		<a href="<%=request.getContextPath()%>/updateMemberForm.jsp">비밀번호수정</a>
		<!-- updateMemberAction.jsp 비밀번호수정은 안됨-->
	</div>
	<div>
		<a href="<%=request.getContextPath()%>/deleteMemberForm.jsp">회원탈퇴</a>
		<!-- deleteMemberAction.jsp 비밀번호 확인 후 삭제 후 session.invalidatemem()-->
	</div>
</body>
</html>
[출처] 1116) session 이용한 로그인(member테이블) 구현하기 (자바 교실) | 작성자 박성환