<!DOCTYPE html>
<html>
   <head>
      <title>sellerViewPastAuction</title>
   </head>
   <center> 
   <body>
       <style>
       h1{line-height: 50px;} <!--This changes the font size of the title -->
       </style>
       
       
       <!--This line applies heading 1 setting to the font and puts it in bold -->
      <h1><FONT COLOR="#0d7e7c"> <strong> Here is the Auction associated with the ID </strong> </h1> </Font> <br/>
    
             
        <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> <!--This line of code just adds spacing between the lines -->
        <strong>Name:  <input type="text" name="names"/> <br/>  <!-- need to pull the name of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       Closing Date: <input type="date" name="dates"/> <br/> <!-- need to pull the closing date of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       Closing Time: <input type="time" name="times"/> <br/> <!-- need to pull the closing time of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       Current Price: <input type="number" name="initial_price"/> <br/> <!-- need to pull the price of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       ID: <input type="number" name="item_ID" /> <br/> <!-- need to pull the ID of the item from the initial input-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       Increment of Bids:<input type="number" name="increment_of_bids" /> <br/>

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
<a href="sellerHomePage.jsp">
  <input type="submit" value="Return to Home Page"/>
      </a>
       

   </body>
   </center>