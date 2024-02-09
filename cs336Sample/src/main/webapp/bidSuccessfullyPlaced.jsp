<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>


<!DOCTYPE html>
<html>
   <head>
      <title>bidSuccessfullyPlaced</title>
   </head>
   <center> 
   <body>
       <style>
       h1{line-height: 50px;} <!--This changes the font size of the title -->
       </style>
       
       
       <!--This line applies heading 1 setting to the font and puts it in bold -->
      <h1><FONT COLOR="#0d7e7c"> <strong>Bid Was Succesfully Place! </strong> </h1> </Font> <br/>

     <!-- <form action="bidSuccessfullyPlaced.jsp" method="POST"> -->
          <p style="margin-left: 5em;padding: 0 7em 2em 0;"> </p>
          Click on the button to return to the home page  <br/>
      
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p>
           
       <a href="buyerHomePage.jsp">
      <input type="submit" value=" Return to Home Page"/>
        </a>
     
     </form>
     
     <%@ page import ="java.sql.*" %>


   </body>
   </center>