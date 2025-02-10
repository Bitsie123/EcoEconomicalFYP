<%-- 
    Document   : deleteClient.jsp
    Author     : 119387806
--%>

<%@page import="project.ConnectionProvider"%>
<!-- REFERENCE
    BTech Days (2020) 5. online shopping project in JSP - All Products &amp; Edit Products (Eclipse IDE,Tomcat Sever, mysql), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=BTqHmU8cnjk&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=6 
-->
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!-- REFERENCE 
    Students Tutorial (no date) How to delete data from mysql using JSP, How to Delete Data from MySQL Using JSP. 
    Available at: https://www.studentstutorial.com/java-project/jsp-delete-data.php 
-->
<!-- Retrieve Data -->
<% 
String email = request.getParameter("email");
try 
{
/* Update Customer Info */
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    int i = st.executeUpdate("delete from customer where email='"+email+"'");
    response.sendRedirect("clientsPage.jsp?msg=done");
}
catch(Exception e)
{
    System.out.println(e);
    response.sendRedirect("clientsPage.jsp?msg=wrong");
}
%>

