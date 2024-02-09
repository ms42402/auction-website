<!DOCTYPE html>
<html>
   <head>
      <title>PutItemUpForAuction</title>
   </head>
   <center> 
   <body>
       <style>
       h1{line-height: 50px;} <!--This changes the font size of the title -->
       </style>
       
       
       <!--This line applies heading 1 setting to the font and puts it in bold -->
      <h1><FONT COLOR="#0d7e7c"> <strong> Submit a Question!</strong> </h1> </Font> <br/>
    
    <!--Creates a form that the admin needs to fill out, the input values can be referred to by what is written in name -->
       <form method="post" action="questionsSQL.jsp">
       
         <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> <!--This line of code just adds spacing between the lines -->
       <strong>Question:  <input type="text" name="question"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
  </form>
<a href="auctionCreatedPage.jsp">
  <input type="submit" value="Submit Question"/> <!--Button to "create auction" and store information in SQL database-->
      </a>
      
        
        <br/>

       
       
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
 
 <a href="buyerHomePage.jsp">
  <input type="submit" value="Return to Home Page"/>
      </a>
      
      
       
 
   </body>
   </center>