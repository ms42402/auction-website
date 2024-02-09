<!DOCTYPE html>
<html>
   <head>
      <title>Seller Home Page </title>
   </head>
   <body>
   <center>
   <h1> Search for an Item Here:</h1>
       
   <!--This is the seller home page where they can view items that they are currently bidding -->
     <form method="post" action="sellerViewPastAuctionSQL.jsp">


         <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> <!--This line of code just adds spacing between the lines -->
       <strong>Search by Name:  <input type="text" name="names"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       
       Search by Closing Date: <input type="date" name="dates"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       
       Search by Closing Time: <input type="time" name="times"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       Search by Initial Price: <input type="number" name="initial_price"/> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" ></p> 
       MUST Search by ID: <input type="number" name="item_ID" /> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       Search by Increment of Bids:<input type="number" name="increment_of_bids" /> <br/>
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;" > </p> 
       Search by Sub Category:</strong>
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
  <input type="submit" value="Search for Item"/> <!--Button to "create auction" and store information in SQL database-->
      </a>
       
     </form>
   
   

   </center>
</html>
     
   </body>
</html>