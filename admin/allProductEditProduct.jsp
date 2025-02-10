<%-- 
    Document   : allProductEditProduct.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!-- REFERENCE
    BTech Days (2020) 4. online shopping project in JSP - add new product page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=4yT9_rahhbE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=5
-->
<!-- Admin Nav Bar -->
<%@include file="adminHeader.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>

<!-- Style Component -->
<style>
    h3
    {
        color: #f0cb3a;
        text-align: center;
        font-size: 30px;
    }

/* REFERENCE
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_border
*/
    table, th, td {
        border: 1px solid black;
    /* REFERENCE
        MDN Web Docs (no date) Border-spacing - CSS: Cascading style sheets: MDN, CSS: Cascading Style Sheets | MDN. 
        Available at: https://developer.mozilla.org/en-US/docs/Web/CSS/border-spacing
    */
        border-spacing: 1px 0.75rem;
        border: green;
        border-style: groove;
        border-width: 1px;
    }   
    
    td {
        height: 100px;
    }
    
    table {
        width: 1270px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }

    thead {
        font-size: 20px;
        font-style: italic;
        height: 50px;
    }
    
/* REFERENCE
    W3Schools (no date) W3Schools online HTML editor, W3Schools Tryit Editor. 
    Available at: https://www.w3schools.com/css/tryit.asp?filename=trycss_text-decoration_link
*/
    .edit {
        text-decoration: none;
        color: #f0cb3a;
    }
    
    .edit:hover {
        color: darkorange;
        font-style: italic;
        font-size: 17px;
    }
</style>
</head>
<body>
    
<!-- REFERENCE
    BTech Days (2020) 5. online shopping project in JSP - All Products &amp; Edit Products (Eclipse IDE,Tomcat Sever, mysql), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=BTqHmU8cnjk&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=6 
--> 
<!-- Page Heading -->
<div style="text-align: center;">
    <h1 style="text-align: center;"><u>All Products:</u></h1>
</div>

<!-- Edited Product Successful -->
<% 
    String msg=request.getParameter("msg");
    if("done".equals(msg))
    {
%>
<h3 class="alert">!!!Product Successfully Updated!!!</h3>
<%}%>


<!-- Removed Product Successful -->
<%  if("removed".equals(msg))
    {
%>
<h3 class="alert">!!!Product Successfully Removed!!!</h3>
<%}%>


<!-- Edited Product Unsuccessful -->
<%  if("wrong".equals(msg))
    {
%>
<h3 class="alert">!!!Some thing went wrong! Try again!!!</h3>
<%}%>
<br />

<!-- Products Table -->
<table>
        <thead>
          <tr>
            <th scope="col" style="color: blue; width: 30px;">ID</th>
            <th scope="col" style="color: green;">Name</th>
            <th scope="col" style="color: green;">Description</th>
            <th scope="col" style="color: green;">Category</th>
            <th scope="col" style="color: green; width: 50px;">Price</th>
            <th scope="col" style="color: green; width: 70px;">Status</th>
            <th scope="col" style="color: white; background-color: blue; width: 40px;">Edit</th>
          </tr>
        </thead>
        <tbody>
    
<!-- REFERENCE 
    SQL ORDER BY Keyword (no date) W3Schools. 
    Available at: https://www.w3schools.com/sql/sql_orderby.asp
-->
    <!-- Database Connection -->
        <% 
        try {
            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from products order by id");
            while(rs.next())  
            {
        %>
            
        <!-- Database Data -->
          <tr>
            <td style="color: blue;"><b><%=rs.getString(1) %></b></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><a class="edit" href="editProduct.jsp?id=<%=rs.getString(1) %>"><i class='fas fa-pen-fancy'></i>Edit</a></td>
          </tr>
          <%
              }
}
    catch(Exception e){
    System.out.println(e);
}
          %>
        </tbody>
      </table>
        
</body>
</html>