<%@ page import="java.io.*,java.util.*,java.sql.*,java.text.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%

	String buyerName = request.getParameter(("Username"));
	String buyerPass = request.getParameter(("Password"));
	String itemID = request.getParameter(("ItemID"));
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	Statement st = con.createStatement();
	
	try{
		int i = st.executeUpdate("DELETE FROM bid WHERE email_address= '"+buyerName+"' passwords= '"+buyerPass+"' itemID= '"+itemID + "'");
		if (i != 0) {
			response.sendRedirect("customerRepHomePage.jsp");
		}
		
	}catch(Exception e){
		response.sendRedirect("customerRepHomePage.jsp");
		System.out.print(e);
	    e.printStackTrace();
	}




%>