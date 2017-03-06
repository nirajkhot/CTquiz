<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete user</title>
</head>
<body>
	<%
	String Driver_class ="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/info";
	Connection con;
	try{
		Class.forName(Driver_class);
		con = DriverManager.getConnection(url, "root", "root");
		PreparedStatement pst = con.prepareStatement("delete from user_info where ");
	}catch(Exception e){
		
	}
	
	%>
</body>
</html>