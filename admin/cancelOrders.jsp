<%-- 
    Document   : cancelOrders.jsp
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
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Cancel Orders</title>

<!-- Style Components -->
<style>   
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
    text-align: center;
    margin-left: auto;
    margin-right: auto;
}

thead {
    font-size: 20px;
    font-style: italic;
    height: 50px;
}
</style>
</head>

<body>

<!-- REFERENCE 
    BTech Days (2020) 18. online shopping project in JSP - cancel or delivered orders (Eclipse IDE,Tomcat Sever, mysql ), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=91cX8S2qjjM&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=19
-->
<div style="text-align: center;">
    <h1 style="text-align: center;"><u>Cancelled Orders:</u></h1>
</div>
<br />

<!-- Cancel Orders Table -->
<table>
    <thead>
          <tr>
            <th style="color: green;" scope="col">Mobile Number:</th>
            <th style="color: green;" scope="col">Product Name:</th>
            <th style="color: green;" scope="col">Quantity:</th>
            <th style="color: green;" scope="col">Sub Total:</th>
            <th style="color: green;" scope="col">Address:</th>
            <th style="color: green; width: 50px;" scope="col">City:</th>
            <th style="color: green; width: 50px;" scope="col">State:</th>
            <th style="color: green; width: 50px;" scope="col">Country:</th>
            <th style="color: green;" scope="col">Order Date:</th>
            <th style="color: green;"scope="col">Expected Delivery Date:</th>
            <th style="color: green;" scope="col">Payment Method:</th>
            <th style="color: blue;" scope="col">T-ID:</th>
            <th style="color: #f0cb3a;" scope="col"><b>Status:</b></th>
          </tr>
    </thead>
    
      <!-- Database Connection -->
        <% 
        try 
        {
            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from cart inner join products on cart.product_id=products.id and cart.orderDate is not NULL and cart.status='Cancelled'");
            while(rs.next())
            {
        %>
        
    <!-- Insert Data into Table -->
        <tr>
          <td style="width: 100px;"><%=rs.getString(10) %></td>
          <td style="width: 150px;"><%=rs.getString(17) %></td>
          <td style="width: 80px;"><%=rs.getString(3) %></td>
          <td style="width: 80px;">€ <%=rs.getString(5) %></td>
          <td style="width: 175px;"><%=rs.getString(6) %></td>
          <td style="width: 100px;"><%=rs.getString(7) %></td>
          <td style="width: 100px;"><%=rs.getString(8) %></td>
          <td style="width: 100px;"><%=rs.getString(9) %></td>
          <td><%=rs.getString(11) %></td>
          <td><%=rs.getString(12) %></td>
          <td><%=rs.getString(13) %></td>
          <td style="color: blue;"><b><%=rs.getString(14) %></b></td>
          <td><%=rs.getString(15) %></td>
        </tr>         
        <% }
} catch(Exception e)
{   
    System.out.println(e);
}

        %>
        </table>

</body>
</html>