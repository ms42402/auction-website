<!DOCTYPE html>
<html>
    <head>
        <title> Buying UI </title>
    </head>
    <center>
        <body>
           
            <h1> ADMIN </h1>
            <p><strong>Create an Customer Representative Account:</strong></p>
            
             <form method="post" action="createCustomerRep.jsp">
            
            <p><strong> ID: </strong><input type="number" name="repUser"/> </p>
            <a href="createCustomerRep.jsp">
  <input type="submit" value="New Customer Rep"/> <!--Button to "create auction" and store information in SQL database-->
      </a>
       
            
            </form>
            
            <p><Strong>Sales Reports:</Strong></p>
            <p>Total Earnings: </p>
            <a href="total.jsp">
                <input type="submit" value=" Submit"/>
                  </a>
                  
                  
            <form action = "earningsPer.jsp" method = "POST">
            <p>Earnings Per Item: </strong><input type="text" name="itemId"/></p>
            </form>
            <p>Best Selling Items:</p>
            <a href="bestselling.jsp">
                <input type="submit" value=" Submit"/>
                  </a>
            <p>Best Buyers:</p>
            <a href="bestBuyers.jsp">
                <input type="submit" value=" Submit"/>
                  </a>
                  <br>
                  	<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
                   <a href="logout.jsp"> <input type="submit" value=" Logout & Back to Welcome Page "/> </a>
        </body>
    </center>
</html>