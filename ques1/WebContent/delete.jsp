<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int m = Integer.parseInt(req.getParameter("tel"));
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String name = session.getAttribute("theName");
		Connection con;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/info", "root", "root");
			PreparedStatement pst = con
					.prepareStatement("delete from user_info where F_Name="+ name);
			pst.executeUpdate();
			pst.close();
			con.close();
		} catch (SQLException s) {
			s.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
	%>
</body>
</html>