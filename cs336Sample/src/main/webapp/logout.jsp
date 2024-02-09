

<%

session.invalidate();
//session.getAttribute("bids");   //this will throw an error
response.sendRedirect("homePage.jsp");
 
%>