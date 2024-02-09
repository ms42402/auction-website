<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
   <head>
      <title>Buyer Home Page </title>
   </head>
   <body>
   <h1> View the Q&A </h1>
       
   <!--This is the buyer home page where they can view items that are up for auction -->
 
     <a href="questions.jsp"> <input type="submit" value=" Ask a Question! "/> </a>
     
     <a href="viewAllQASQL.jsp"> <input type="submit" value=" View the Q&A "/> </a>
     
     <a href="buyerHomePage.jsp">
  <input type="submit" value="Return to Home Page"/>
      </a>
  <!--    <a href="viewAllQASQL.jsp"> <input type="submit" value=" View the Q&A "/> </a>  -->
     
       
     <form method="post" action="questionKeyWord.jsp">
             
   <p>Search by keyword <input type= "text" name="key"> 
     
     
      <a href="sellerViewPastAuction.jsp">
         <input type="submit" value=" Search "/> 
      </a>
  
  
   </p>
   
     </form>
    
     
     
   </body>
</html>