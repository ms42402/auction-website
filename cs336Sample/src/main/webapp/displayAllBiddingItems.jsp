<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<!DOCTYPE html>
<html>
<title>Items for bidding</title>
<head>
</head>
<body>
<h1>This should have all bidding items </h1>


<%@ page import ="java.sql.*" %> 

<% 
	ApplicationDB db = new ApplicationDB();	
	Connection con = db.getConnection();	
	Statement stmt = con.createStatement();
	Statement stmt1 = con.createStatement();
	ResultSet rs1;
	ResultSet rs2;
	//String item = (String) session.getAttribute("item");
	//String itemid = request.getParameter("item_id");
   	//String itemNames = request.getParameter("names");
   	//String itemCategories = request.getParameter("categories");

	//use rs1 and execute query to get the attribute names and format propery 
	rs1 = stmt.executeQuery("select names from item"); 
	rs2 = stmt1.executeQuery("select item_id from item"); 
	
	  while(rs1.next() && rs2.next()){
		  //out.println("Item one is: "); 
		  	out.println(rs2.getString(1));
	    	out.println(rs1.getString(1));
	    	
	    	
	    	
	    	out.println("<BR>");
	
	    	
	    	%>
	    	

  	<%}
	  
	  
	  
	

     %>


<div> </div>
<div> 

</div>
</body>
</html>