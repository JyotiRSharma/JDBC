<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	
<%@ include file="header.jsp" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		//int a = 9 / 0;
		out.println("Add works!");
	%>

	<%
		String url = "jdbc:mysql://localhost:3306/testdb";
		String uname = "root";
		String pass = "Krsna@#135";
	
		String sql = "select name from student where id=3";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, pass);
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
	
		rs.next();
		String ex = rs.getString("name");
		
		out.println(ex);
		
		st.close();
		con.close();
	%>
</body>
</html>