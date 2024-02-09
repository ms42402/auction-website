<!DOCTYPE html>
<html>
   <head>
      <title>Seller Home Page </title>
   </head>
   <body>
   <center>
   <h1> Welcome to Online Shopping Seller's HomePage!</h1>
       
   <!--This is the seller home page where they can view items that they are currently bidding -->
     

      <p>Click here to put new item up for auction:  
      <a href="sellerCreateAuction.jsp">
         <input type="submit" value=" Put Item up for Auction"/> 
      </a> </p>

      <p>Click here to log out:  
           <a href="logout.jsp"> <input type="submit" value=" Logout & Back to Welcome Page "/> </a>
         
              <form method="post" action="sellerViewPastAuctionSQL.jsp">
              </p>
   <p> Please input in an item ID to see current auction details: <input type= "number" name="item_ID"> 
  <!--     <a href="sellerViewPastAuction.jsp">  -->
         <input type="submit" value=" View Auction"/> 
      </a>
   </p>
   
     </form>
   
   

   </center>
</html>
     
   </body>
</html>