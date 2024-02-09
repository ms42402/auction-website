<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<!DOCTYPE html>
<html>
   <head>
      <title>BidOnItem</title>
   </head>
   <center> 
   <body>
       <style>
       h1{line-height: 50px;} <!--This changes the font size of the title -->
       </style>
       
       
       <!--This line applies heading 1 setting to the font and puts it in bold -->
      <h1><FONT COLOR="#0d7e7c"> <strong> Bid On Item! </strong> </h1> </Font> <br/>
    
    <!--Creates a form that the admin needs to fill out, the input values can be referred to by what is written in name -->
   <form method="post" action="addingForItems.jsp">
         
         <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> <!--This line of code just adds spacing between the lines -->
       <strong>Name of Item:  <input type="text" name="names"/> <br/>
       
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       ID: <input type="number" name="item_ID" /> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       Date Auction will Close: <input type="date" name="dates"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       Time Auction will Close: <input type="time" name="times"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       Current Bid Price: <input type="number" name="initial_price"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p>
           
       Bid Price: <input type="number" name="initial_price"/> <br/>
       
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       
       <a href="bidSuccessfullyPlaced.jsp"> <input type="submit" value=" Place Bid"/> </a>
        
     </form>
   </body>
   </center>