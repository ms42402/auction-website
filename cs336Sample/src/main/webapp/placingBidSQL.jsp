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
      <h1><FONT COLOR="#0d7e7c"> <strong> Bid on an Item!</strong> </h1> </Font> <br/>
    
    <!--Creates a form that the admin needs to fill out, the input values can be referred to by what is written in name -->
       <form method="post" action="placedBidSQL.jsp">
       
         <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> <!--This line of code just adds spacing between the lines -->
       <strong>Email:  <input type="text" name="email_address"/> <br/> <!--  email_address -->
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p>  
       
       Password: <input type="password" name="passwords"/> <br/>  <!--  passwords -->
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       
       
       Item ID: <input type="text" name="item_ID"/> <br/>
       
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       
       Price: <input type="number" name="price"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       Upper Limit: <input type="number" name="upper_limit"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       </strong>

  </form>
  
  
<a href="bidSuccessfullyPlaced.jsp">
  <input type="submit" value="Put Item Up For Auction"/> <!--Button to "create auction" and store information in SQL database-->
      </a>
       

   </body>
   </center>