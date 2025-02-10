<%-- 
    Document   : products.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    TechTutorial (2021) 5. E-commerce shopping cart project show all product in home page using JSP Servlet and mysql, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=8gNf7eAMApM&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=5
-->
<%@page import="project.model.*"%>
<%@page import="project.connection.DbCon"%>
<%@page import="project.dao.ProductDao"%>

<!-- REFERENCE 
    Free CSS (2022) Boocic Free Website Template | Free CSS Templates | Free CSS. 
    Available at: https://www.free-css.com/free-css-templates/page282/boocic 
-->  
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<%@page import="java.util.*"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!-- REFERENCE
    TechTutorial (2021) 5. E-commerce shopping cart project show all product in home page using JSP Servlet and mysql, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=8gNf7eAMApM&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=5
-->
<!-- Database Connection -->
<% 
ProductDao pd = new ProductDao(DbCon.getCon());
List<Product> products = pd.getAllProducts();

/* REFERENCE 
    TechTutorial (2021) 8. E-commerce shopping cart show all CART products inside cart page in JSP and Servlet, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=vM7TzSBxk3g&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=8    
*/
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null) {
    request.setAttribute("cart_list", cart_list);
    }
%>

<!DOCTYPE html>
<html>
<head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>EcoEconomical Products Page</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>

<!-- Style Component -->
    <style>
        #myBtn {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 4px;
            z-index: 99;
            font-size: 18px;
            background-color: blue;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 4px;
        }

        #myBtn:hover {
            background-color: #d0d6d9;
        }
    </style>
    
    
<!-- REFERENCE
    w3schools CSS Tutorial (no date) CSS tutorial. 
    Available at: https://www.w3schools.com/css/default.asp 
-->
<!-- Style tab for Products Page Title and Table-->
    <style>
        .producttitle {
            font-size: 40px;
            text-align: center;  
        } 
        
        .title {
            font-size: 18px;
        }
        
        .product {
            text-align: center;
            border: #8de329;
            border-style: groove;
            border-width: 10px;
        }
        
        .producttbl {
            width: 1250px;
            height: 2000px;
            float: left;
            margin-left: 40px;
            margin-right: auto;
        }
        
        .productimg {
            float: left;
        }
        
        .cartbtn {
            text-align: center;
            width: 100px;
            height: 50px;
            font-size: 15px;
        }
        
        .cartbtn:hover {
            color: blue;
            font-weight: bold;
            font-style: italic;
            font-size: 16px;
        }
        
        .cart {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 300px;
            border: 3px solid #73AD21;
            text-align: center;
            overflow-x:scroll
        }
        
        h3
        {
            color: yellow;
            text-align: center;
            font-size: 30px;
        }
        
        table {
            border-collapse: separate;
            border-spacing: 0 15px;
            border: #8de329;
            border-style: groove;
            border-width: 2.5px;
            border-top-width: 1px;
        }
    </style>
    
    <body>       

<!-- REFERENCE 
    BTech Days (2020) 6. online shopping project in JSP - users home page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=WI9AuiPy2uU&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=7
-->
<% 
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>     
<h3 class="alert">!!!Product added successfully!!!</h3>
<%}%>

<%
if("exist".equals(msg))
{
%> 
<h3 class="alert">!!!Product already exists in your cart! Quantity  increased!!!</h3>
<%}%>

<%
if("invalid".equals(msg))
{
%> 
<h3 class="alert">!!!Something Went Wrong! Please Try Again!!!</h3>
<%}%>


<!-- REFERENCE 
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_scroll_to_top  
--> 
<!-- Top of Page Button -->     
            <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
        
        <header> 
          <!-- header inner -->
            <div class="header">
                <div class="container" style="margin-left: 5px;">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo"> <a href="#">EcoEconomical</a> </div>
                                </div>
                            </div>
                        </div>
                        
                    <!-- Navigation Bar -->
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area" style="width: 1000px;">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li> <a href="index.jsp">Home</a> </li>
                                            <li class="active"> <a href="" style="font-style: italic;">Products</a></li>
                                            <li> <a href="cart.jsp">Cart</a> </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end header inner --> 
        </header> <br /><br />   
        
        <!-- Product page title -->
        <h1 class="producttitle"><b><u>Products We Offer:</u></b></h1>
        <p style="text-align: center; font-style: italic; color: green;">Take a look at our environmentally friendly and sustainable products that will meet all of your daily needs!</p>
        <br />

        <!-- Product Table Info -->
        <div class="producttbl"> 
              
    <!-- product 1 -->
        <table class="product1" border="2" style="text-align: center;">
            
            <tr class="title">    
                <td style="width:200px; color:#f0cb3a"><b><i>Name :</i></b></td>
                <td style="width:750px; color:#f0cb3a"><b><i>Description :</i></b></td>
                <td style="width:150px; color:#f0cb3a"><b><i>Category :</i></b></td>
                <td style="width:70px; color:#f0cb3a"><b><i>Price :</i></b></td>
                <td style="width:150px; color:#f0cb3a"><b><i>Add To Cart</i></b></td>
            </tr>

<!-- REFERENCE
    TechTutorial (2021) 5. E-commerce shopping cart project show all product in home page using JSP Servlet and mysql, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=8gNf7eAMApM&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=5
-->   
  <!-- Code to Retrieve Data from products Table in Database -->
    <%  
    if( !products.isEmpty()) {
        for(Product p:products) {
   %>
        <tr class="product" id="item1">
        <!-- REFERENCE 
            W3Schools (no date) HTML hidden attribute, HTML Global hidden Attribute. 
            Available at: https://www.w3schools.com/tags/att_global_hidden.asp 
        -->
                <td hidden><b><%=p.getId() %></b></td>
                <td><%=p.getName() %></td>
                <td style="font-size: 12px;"><%=p.getDescription() %></td>
                <td><%=p.getCategory() %></td>
                <td>€<%=p.getPrice() %></td>
                
        <!-- REFERENCE
            TechTutorial (2021) 7. E-commerce shopping cart how to add product in the cart using JSP Servlet, YouTube. YouTube. 
            Available at: https://www.youtube.com/watch?v=Iut0z6AQzZI&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=7
        -->
            <!-- Add to Cart Button -->
            <td><a href="add-to-cart?id=<%= p.getId() %>" class="cartbtn">Add To Cart
               <!-- REFERENCE 
                    Gandy, D. (no date) FA-cart-plus · unicode: F217 · created: V4.3 · categories: Web application icons, fa-cart-plus: Font Awesome Icons. Font Awesome. 
                    Available at: https://fontawesome.com/v4/icon/cart-plus 
               -->
                    <i class="fa fa-cart-plus" aria-hidden="true"></i></a></td>
        </tr>
        <%} 
} %>

   </table>
    </div>
          <br /> 
         
<!-- REFERENCE 
    Collyer, A. (2022) 16 energy-saving products under £50 – reduce your utility bills this winter, 
    Ideal Home. Ideal Home. 
    Available at: https://www.idealhome.co.uk/buying-guide-reviews/energy-saving-products-303249  
-->   
        <!-- Product images div -->
            <div class="productimg" style="margin-left: 20px;">
                <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/long-life.png"> <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/aerator.png"> <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/ionic-head.png"> <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/cylinder-jacket.png"> <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/valve-head.png"> <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/clothes-drier.png"> <br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/stick-on-light.png"> <br /><br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/space-heater.png"> <br /><br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/reflectors.png"> <br /><br /><br />
                <img style="width: 80px; height: 80px;"src="product-image/kettle.png">
            </div>

            
<!-- REFERENCE 
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_scroll_to_top  
-->   
 <!-- Top of Page Button Function -->
    <script>
            let mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function() {scrollFunction()};

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            }   else {
                mybutton.style.display = "none";
        }
    }

// When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
    }     
    </script>
    
    </body>   
</html>
