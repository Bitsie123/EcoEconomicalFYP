<%-- 
    Document   : ordersReceived.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    BTech Days (2020) 17. online shopping project in JSP - orders received page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=W9qEj2XBYTE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=18 
-->
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
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Orders Received</title>

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
        width: 1350px;
        margin-left: auto;
        margin-right: auto;
    }

    thead {
        font-size: 20px;
        font-style: italic;
        height: 50px;
    }

    .button {
        text-decoration: none;
        color: #f0cb3a;
    }

    .button:hover {
        color: darkorange;
        font-style: italic;
        font-size: 17px;
    } 
</style>
</head>

<body>  
    
<!-- Orders Page -->
<!-- Page Heading -->
<div style="text-align: center;">
    <h1 style="text-align: center;"><u>Orders Received:</u></h1>
</div>
       
<!-- REFERENCE
    BTech Days (2020) 17. online shopping project in JSP - orders received page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=W9qEj2XBYTE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=18 
-->
<% 
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">!!!Order Cancelled!!!</h3>
<%}%>

<% 
if("delivered".equals(msg))
{
%>
<h3 class="alert">!!!Order Delivered!!!</h3>
<%}%>

<% 
if("invalid".equals(msg))
{
%>
<h3 class="alert">!!!Some thing went wrong! Try Again!!!</h3>
<%}%>
<br />

<!-- Orders Table -->
<table id="customers" style="text-align: center;">
    <thead>
        <tr>
          <th style="color: green;" scope="col">Mobile Number:</th>
          <th style="color: green;" scope="col">Product Name:</th>
          <th style="color: green;" scope="col">Quantity:</th>
          <th style="color: green;" scope="col">Sub Total:</th>
          <th style="color: green;" scope="col">Address:</th>
          <th style="color: green;" scope="col">City:</th>
          <th style="color: green;" scope="col">State:</th>
          <th style="color: green;" scope="col">Country:</th>
          <th style="color: green;" scope="col">Order Date:</th>
          <th style="color: green;" scope="col">Expected Delivery Date:</th>
          <th style="color: green;" scope="col">Payment Method:</th>
          <th style="color: blue;" scope="col">T-ID:</th>
          <th style="color: #f0cb3a;" scope="col">Status:</th>
          <th style="color: white; background-color: blue;" scope="col">Cancel order <i class='fas fa-window-close'></i></th>
          <th style="color: white; background-color: blue;" scope="col">Order Delivered <i class='fas fa-dolly'></i></i></th>
        </tr>
    </thead>   
          
    <!-- Database Connection -->
        <% 
        try
        {
            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
        /* REFERENCE 
            W3Schools (no date) SQL INNER JOIN Keyword, SQL inner join keyword. 
            Available at: https://www.w3schools.com/sql/sql_join_inner.asp
        */
            ResultSet rs=st.executeQuery("select * from cart inner join products on cart.product_id=products.id and cart.orderDate is not NULL and cart.status='n/a'");
            while(rs.next())
            {
        %>
        
        <!-- Insert Data into Table -->
        <tr>
          <td style="width: 100px;"><%=rs.getString(10) %></td>
          <td style="width: 150px;"><%=rs.getString(17) %></td>
          <td style="width: 80px;"><%=rs.getString(3) %></td>
          <td style="width: 80px;">€ <%=rs.getString(5) %> </td>
          <td style="width: 175px;"><%=rs.getString(6) %></td>
          <td style="width: 100px;"><%=rs.getString(7) %></td>
          <td style="width: 100px;"><%=rs.getString(8) %></td>
          <td style="width: 100px;"><%=rs.getString(9) %></td>
          <td><%=rs.getString(11) %></td>
          <td style="width: 150px;"><%=rs.getString(12) %></td>
          <td style="width: 100px;"><%=rs.getString(13) %></td>
          <td style="color: blue; width: 40px;"><b><%=rs.getString(14) %></b></td>
          <td style="width: 60px;"><%=rs.getString(15) %></td>
          <td style="width: 100px;"><a class="button" href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel <i class='fas fa-window-close'></i></a></td>
          <td style="width: 100px;"><a class="button" href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered <i class='fas fa-dolly'></i></i></a></td>
        </tr>    
        <% }
        }
        catch(Exception e)
        { System.out.println(e);
        } %>
        </table>

</body>
</html>
