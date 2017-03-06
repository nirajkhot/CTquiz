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
					.prepareStatement("update user_info set F_Name=?, L_Name=?,U_Name=?,Password=?,Email=?,Mobile=?,Location=? where U_Name="+ name);
			pst.setString(1, request.getParameter("firstname"));
			pst.setString(2, request.getParameter("lastname"));
			pst.setString(3, request.getParameter("username"));
			pst.setString(4, request.getParameter("password"));
			pst.setString(5, request.getParameter("email"));
			pst.setInt(6, m);
			pst.setString(7, request.getParameter("loc"));

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