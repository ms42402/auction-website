<%@ page import ="java.sql.*" %>
<%
	String bruh = request.getParameter(("repUser"));
	int cusID = Integer.parseInt(bruh);
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
    
    
    Statement st = con.createStatement();
    Statement st2 = con.createStatement();
    try {
    
    	int k = st2.executeUpdate("insert into staff(staff_ID) values('"+ cusID + "')");
    	int i = st.executeUpdate("insert into customer_representative_staff(staff_ID) values('"+ cusID + "')");
    	out.println("Customer Rep Successfully created!");

    	 if (i != 0) {
    	        response.sendRedirect("adminHomePage.jsp");
    	    }
    }
    catch(Exception e)
    {
    System.out.print(e);
    e.printStackTrace();
    }

 
%>