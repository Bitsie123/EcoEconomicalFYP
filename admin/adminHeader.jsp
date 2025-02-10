<%-- 
    Document   : adminHeader.jsp
    Author     : 119387806
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/home-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    </head>
    
<!-- REFERENCE 
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_topnav 
-->
<!-- Style components -->
    <style>
        
    /* Nav bar */
    .topnav {
        overflow: hidden;
        background-color: #a7d3fc;
        padding-left: 90px;
        text-align: center;
}

    .topnav a {
        float: left;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
}

    .topnav a:hover {
        background-color: lightgreen;
        color: black;
}
    </style>
    
    <body>
        
<!-- REFERENCE
    BTech Days (2020) 4. online shopping project in JSP - add new product page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=4yT9_rahhbE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=5
-->
    <!-- Admin Header -->
        <center><h2 style="color: #f0cb3a;">Admin Dashboard</h2></center>
        
    <!-- Admin Nav Bar -->
        <div class="topnav">
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            
        <!-- REFERENCE 
            W3Schools (no date) Font Awesome File Type Icons, Font awesome file type icons. 
            Available at: https://www.w3schools.com/icons/fontawesome_icons_filetype.asp
        -->
            <a href="clientsPage.jsp">Clients <i class='fa fa-file-text'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancelled Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            
    <!-- REFERENCE
        BTech Days (2020) 6. online shopping project in JSP - users home page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
        Available at: https://www.youtube.com/watch?v=WI9AuiPy2uU&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=7 
    -->
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
        
    </body>
</html>
