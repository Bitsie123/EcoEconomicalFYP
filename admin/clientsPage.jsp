<%-- 
    Document   : clientsPage.jsp
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


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clients Page</title>
    </head>
    
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
        font-size: 16px;
    } 
    
    table {
        width: 1270px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }
    </style>
    <body>

<!-- Heading -->
<div style="text-align: center;">
    <h1 style="text-align: center;"><u>Registered Clients:</u></h1>
</div>      
    
<!-- Removed Client Successful -->
<% 
    String msg=request.getParameter("msg");
    if("done".equals(msg))
    {
%>
<h3 class="alert">!!!Client Successfully Removed!!!</h3>
<%}%>

<!-- Removed Client Unsuccessful -->
<%  if("wrong".equals(msg))
    {
%>
<h3 class="alert">!!!Some thing went wrong! Try again!!!</h3>
<%}%>
<br />

<!-- Clients Table -->
<table style="text-align: center;">
        <thead>
          <tr>
            <th scope="col" style="color: green;">First Name</th>
            <th scope="col" style="color: green;">Last Name</th>
            <th scope="col" style="color: blue;">Email</th>
            <th scope="col" style="color: green;">Address</th>
            <th scope="col" style="color: green;">Phone</th>
            <th scope="col" style="color: white; background-color: blue;">Remove</th>
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
            ResultSet rs=st.executeQuery("select * from customer order by email");
            while(rs.next())  
            {
        %>
            
        <!-- Database Data -->
          <tr>
            <td name="firstName"><%=rs.getString(1) %></td>
            <td name="lastName"><%=rs.getString(2) %></td>
            <td name="email"><%=rs.getString(3) %></td>
            <td name="address"><%=rs.getString(4) %></td>
            <td name="phone"><%=rs.getString(5) %></td>
            
        <!-- REFERENCE 
            Students Tutorial (no date) How to delete data from mysql using JSP, How to Delete Data from MySQL Using JSP. 
            Available at: https://www.studentstutorial.com/java-project/jsp-delete-data.php 
        -->
            <td><a class="edit" href="deleteClient.jsp?email=<%=rs.getString("email") %>"><i class='fas fa-pen-fancy'></i>Remove</a></td>
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
