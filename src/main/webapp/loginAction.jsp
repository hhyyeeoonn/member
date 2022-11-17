<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 1
	request.setCharacterEncoding("utf-8");
	if(==null || equals("") || ) {
		response.send~
		return;
	}
	
	
	/*
	String memberId=
	String memberPw=
	*/

	Member member=new Member();
	member.memberId=request.getParameter("");
	member.member
	
	
	//
	String driver="org.mariadb.jdbc.Driver"; 
	String dbUrl="jdbc:mariadb://localhost:3306/employees";
	String dbUser="root";
	String dbPw="java1234";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPw);
		System.out.println("=드라이버로딩 성공=");
	
	/*
	SELECT member_id
	FROM member
	WHERE member_id=?
	AND member_pw=PASSWORD(?); 
	*/
	
	String sql="SELECT member_id FROM member WHERE member_id=? AND member_pw=PASSWORD(?)";
	PreparedStatement stmt=conn.prepareStatement(sql);
	stmt

	// Object 타입 상속 타입이 정해져야 한다 초상화 상속 다형성 캡슐화 객체지향 특징 4가지
	
	// String (String)(session.getAttribute("loginMemberId")); // 끄집어낼 때 형변환 필요
	// object 타입에는 다양한 타입이 들어올 수 있다 부모타입에 자식객체를 넣는 것 오버로딩이 결국 다형성임
	

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>