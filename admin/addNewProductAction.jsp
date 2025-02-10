<%-- 
    Document   : addNewProductAction.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    BTech Days (2020) 4. online shopping project in JSP - add new product page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=4yT9_rahhbE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=5
-->       
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<!-- Retrieve Inputted Data from addNewProduct.jsp and Save to Database -->
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String description=request.getParameter("description");
    String category=request.getParameter("category");
    String price=request.getParameter("price");
    String active=request.getParameter("active");
    
/* Save Inputted Info to Products Table */
try {
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into products values (?,?,?,?,?,?)");
    ps.setString(1, id);
    ps.setString(2, name);
    ps.setString(3, description);
    ps.setString(4, category);
    ps.setString(5, price);
    ps.setString(6, active);
    ps.executeUpdate();
    
    response.sendRedirect("addNewProduct.jsp?msg=done");
    }
catch(Exception e)
{
    response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>
