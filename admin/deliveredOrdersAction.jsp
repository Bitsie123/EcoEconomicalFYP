<%-- 
    Document   : deliveredOrdersAction.jsp
    Author     : 119387806
--%>

<!-- REFERENCE 
    BTech Days (2020) 17. online shopping project in JSP - orders received page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=W9qEj2XBYTE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=18
-->
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!-- Database Connection -->
<% 
String id=request.getParameter("id");
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("update cart set status='Delivered' where product_id="+id);
    response.sendRedirect("ordersReceived.jsp?msg=delivered");
}
catch(Exception e)
{
    System.out.println(e);
    response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>
