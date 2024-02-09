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
      <h1><FONT COLOR="#0d7e7c"> <strong> Put Item Up For Auction!</strong> </h1> </Font> <br/>
    
    <!--Creates a form that the admin needs to fill out, the input values can be referred to by what is written in name -->
       <form method="post" action="sellerCreatAuctionInsertingItem.jsp">
       
         <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> <!--This line of code just adds spacing between the lines -->
       <strong>Name:  <input type="text" name="names"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       Closing Date: <input type="date" name="dates"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       Closing Time: <input type="time" name="times"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       Initial Price: <input type="number" name="initial_price"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       ID: <input type="number" name="item_ID" /> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       Increment of Bids:<input type="number" name="increment_of_bids" /> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" </p> 
       
       
       Sub Category:</strong>
       <table>
  <tr>
    <td><input type="radio" name="categories" value="kitchen"></td>
    <td>Kitchen</td>
  </tr>
  <tr>
    <td><input type="radio" name="categories" value="laundry"></td>
    <td>Laundry</td>
  </tr>
  <tr>
    <td><input type="radio" name="categories" value="personalUse"></td>
    <td>Personal Use </td>
  </tr>
</table>
<a href="auctionCreatedPage.jsp">
  <input type="submit" value="Put Item Up For Auction"/> <!--Button to "create auction" and store information in SQL database-->
      </a>
       
  </form>
   </body>
   </center>