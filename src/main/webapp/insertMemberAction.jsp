<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "member.*" %> 
<%@ page import = "java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String pw=request.getParameter("pw");

	/*
	vo.로 묶고싶다면..
	Member member=new Member();
	member.memberId=id;
	member.memberPw=pw;
	member.memberName=name;
	*/
	
	
	if((id == null) || (id.equals("")) || (name == null) || (name.equals("")) || (pw == null) || (pw.equals(""))) {
		String msg=URLEncoder.encode("빈칸에 내용을 입력하십시오.", "utf-8"); 
		response.sendRedirect(request.getContextPath() + "/insertMemberForm.jsp?msg="+msg);
		return;
	}
		System.out.println("=빈칸 확인=");
	
	// 드라이버 로딩
	String driver="org.mariadb.jdbc.Driver"; 
	String dbUrl="jdbc:mariadb://localhost:3306/gdj58";
	String dbUser="root";
	String dbPw="java1234";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPw);
		System.out.println("=드라이버로딩 성공=");

		
	// 아이디 중복확인
	String idSql="SELECT member_id FROM member WHERE member_id = ?";
	PreparedStatement idStmt=conn.prepareStatement(idSql);
	idStmt.setString(1, id);
	ResultSet rs = idStmt.executeQuery();
	if(rs.next()){
		idStmt=conn.prepareStatement(idSql);
		String idMsg=URLEncoder.encode("사용할 수 없는 ID", "utf-8"); 
		response.sendRedirect(request.getContextPath()+"/insertMemberForm.jsp?idMsg="+idMsg);
		
		rs.close();
		idStmt.close();
		conn.close();
		
		return;
	} 
		System.out.println("=아이디 중복확인 완료=");

		
	// 데이터입력
	String sql="INSERT INTO member(member_id, member_pw, member_name) values(?, ?, ?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, id);
	stmt.setString(2, pw);
	stmt.setString(3, name);
		
	int row = stmt.executeUpdate();
	if(row == 1) {
		String loginMsg=URLEncoder.encode("가입되었습니다. 로그인 하십시오.", "utf-8");
		response.sendRedirect(request.getContextPath() + "/loginForm.jsp?loginMsg="+loginMsg);
		System.out.println("가입성공");
	} else {
		System.out.println("가입실패");
	}
	
	stmt.close();
	conn.close();
%>
