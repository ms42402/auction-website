<%@ page import="java.io.*,java.util.*,java.sql.*,java.text.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%

	String userName = request.getParameter(("Username"));
	String userType = request.getParameter(("UserType"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	Statement st = con.createStatement();
	
	try{
		int i = st.executeUpdate("DELETE FROM user WHERE email_address= '"+userName + "'");
	
		if (i != 0) {
			response.sendRedirect("customerRepHomePage.jsp");
		}
	}catch(Exception e){
		response.sendRedirect("customerRepHomePage.jsp");
		System.out.print(e);
	    e.printStackTrace();
	}




%>