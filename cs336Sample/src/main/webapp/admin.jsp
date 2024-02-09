<!DOCTYPE html>
<html>
    <head>
        <title> Buying UI </title>
    </head>
    <center>
        <body>
            <h1> ADMIN </h1>
            <form action="createCustomerRep.jsp" method="POST">
            <p><strong>Create an Customer Representative Account:</strong></p>
            <p><strong> ID: </strong><input type="number" name="repUser"/> </p>
            </form>
            <p><Strong>Sales Reports:</Strong></p>
            <p>Total Earnings:<button type = "button" onclick "total.jsp">Submit</button> </p>
            <form action = "earningsPer.jsp" method = "POST">
            <p>Earnings Per Item: </strong><input type="text" name="itemId"/></p>
            </form>
            <p>Best Selling Items: <button type = "button" onclick "bestselling.jsp">Submit</button></p>
            <p>Best Buyers: <button type = "button" onclick "bestBuyers.jsp">Submit</button></p>
        </body>
    </center>
</html>