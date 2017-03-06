package org.Resg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet1 extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		int m = Integer.parseInt(req.getParameter("tel"));
		PrintWriter out = resp.getWriter();
		out.println("this is resp from servlet one");

		Connection con;
		try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/info", "root", "root");
				PreparedStatement pst = con.prepareStatement("insert into user_info values(?,?,?,?,?,?,?)");
				pst.setString(1, req.getParameter("firstname"));
				pst.setString(2, req.getParameter("lastname"));
				pst.setString(3, req.getParameter("username"));
				pst.setString(4, req.getParameter("cpassword"));
				pst.setString(5, req.getParameter("email"));
				pst.setInt(6, m);
				pst.setString(7, req.getParameter("loc"));
				pst.executeUpdate();
	
				ResultSet rs = pst.executeQuery("select * from user_info");
				ResultSetMetaData rsmd = rs.getMetaData();
				
				out.println(rsmd.getColumnName(1)+rsmd.getColumnName(2)+rsmd.getColumnName(3)+rsmd.getColumnName(4)+rsmd.getColumnName(5)+rsmd.getColumnName(6)+rsmd.getColumnName(7));
				while (rs.next()) {
					out.println(rs.getString(1) + "" + rs.getString(2) + "" + rs.getString(3) + "" + rs.getString(4) + ""
							+ rs.getString(5) + "" + rs.getString(6) + "" + rs.getString(7)+" <a href='edit.html'>Edit</a> "+" <a href='delete.jsp'>Delete</a> "+"<br>");
				}
				
				rs.close();
				pst.close();
				con.close();
		} catch (SQLException s) {
			s.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
