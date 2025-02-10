<%-- 
    Document   : editProductAction.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    BTech Days (2020) 5. online shopping project in JSP - All Products &amp; Edit Products (Eclipse IDE,Tomcat Sever, mysql), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=BTqHmU8cnjk&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=6 
-->
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<!-- REFERENCE 
    Students Tutorial (no date) How to update data from mysql using JSP, Update Data from MySQL Using JSP. 
    Available at: https://www.studentstutorial.com/java-project/jsp-update-data.php 
-->
<!-- Database Connection -->
<%! String driverName = "org.apache.derby.jdbc.ClientDriver";%>
<%!String url = "jdbc:derby://localhost:1527/FypDb";%>
<%!String user = "fyp";%>
<%!String psw = "fyp";%>

<!-- Retrieve Data -->
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String description = request.getParameter("description");
    String category = request.getParameter("category");
    String price = request.getParameter("price");
    String active = request.getParameter("active");
    Connection con = null;
    PreparedStatement ps = null;

try {
    Class.forName(driverName);
    con = DriverManager.getConnection(url,user,psw);

/* REFERENCE 
    JSP if else: How does if else statement work: Example #2 (2022) EDUCBA. 
    Available at: https://www.educba.com/jsp-if-else/   
*/
// Remove Product if Active = 'No'
if (active.equals("No")) {
    String sql = "DELETE FROM products WHERE id=?";
    ps = con.prepareStatement(sql);
    ps.setString(1, id);
    int i = ps.executeUpdate();
if(i > 0) {
// Show Removed Product Message
    response.sendRedirect("allProductEditProduct.jsp?msg=removed");
} } else {
// Update Product in Products Table
    String sql = "UPDATE products SET name=?, description=?, category=?, price=?, active=? WHERE id=?";
    ps = con.prepareStatement(sql);
    ps.setString(1, name);
    ps.setString(2, description);
    ps.setString(3, category);
    ps.setString(4, price);
    ps.setString(5, active);
    ps.setString(6, id);
    int i = ps.executeUpdate();
    
if(i > 0) {
// Show Updated Product Message
    response.sendRedirect("allProductEditProduct.jsp?msg=done");
} else {
// Show Error Message
    response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
}
} catch(SQLException sql) {
    response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>