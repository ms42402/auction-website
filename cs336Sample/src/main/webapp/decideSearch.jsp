<!DOCTYPE html>
<html>
   <head>
      <title>Buyer Home Page </title>
   </head>
   <body>
   <h1> How Do You Want to Search items?</h1>
   
   <br/>
       
        <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
   <!--This is the buyer home page where they can view items that are up for auction -->
     
     <a href="inputSearchItem.jsp"> <input type="submit" value=" Search by Any Criteria "/> </a>
     
     
     <br/>
      <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
     
     
     <form method="post" action="sellerViewPastAuctionSQL.jsp">
              </p>
   <p>Search by Item ID <input type= "text" name="item_ID"> 
      <a href="sellerViewPastAuction.jsp">
         <input type="submit" value=" Search "/> 
      </a>
   </p>
   
     </form>
     
     
      <br/>
      <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
     
     
     <form method="post" action="searchByNameSQL.jsp">
              </p>
   <p>Search by Name <input type= "text" name="names"> 
      <a href="sellerViewPastAuction.jsp">
         <input type="submit" value=" Search "/> 
      </a>
   </p>
   
     </form>
     
      
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
 
 <a href="buyerHomePage.jsp">
  <input type="submit" value="Return to Home Page"/>
      </a>
      
      
     


     
   </body>
</html>