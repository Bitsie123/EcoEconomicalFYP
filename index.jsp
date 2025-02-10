<%-- 
    Document   : index.jsp
    Author     : 119387806
--%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
    
<!-- REFERENCE 
    Free CSS (2022) Boocic Free Website Template | Free CSS Templates | Free CSS. 
    Available at: https://www.free-css.com/free-css-templates/p age282/boocic 
-->   
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>EcoEconomical</title>
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
        .btnsend {
            background-color: #6dd1fc;
            border: none;
            color: white;
            padding: 16px 32px;
            text-align: center;
            font-size: 16px;
            opacity: 1;
            transition: 0.3s;
        }

        .btnsend:hover {
            opacity: 0.6;
            font-style: italic;
        }
        
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}
        #myBtn {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 30px;
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
        
        .message {
            text-align: center;
            font-size: 25px;
            font-style: italic;
        }
    </style>   
    
    <!-- body -->
    <body class="main-layout">
        
    <!-- REFERENCE 
        W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
        Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_scroll_to_top  
    -->
        <!-- Top of Page Button -->     
            <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
        
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="header">
                <div class="container" style="margin-left: 5px;">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo"> <a href="#about"">EcoEconomical</a> </div>
                                </div>
                            </div>
                        </div>
                        
                    <!-- Navigation bar -->
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area" style="width: 1000px;">
                                <div>
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li class="active"> <a href="" style="font-style: italic;">Home</a> </li>
                                            <li> <a href="#about">About</a> </li>
                                            <li> <a href="#service">Services</a> </li>
                                            <li> <a href="#blog">Blog</a> </li>
                                            <li> <a href="#contact">Contact</a> </li>
                                            <li> <a href="products.jsp">Products</a> </li>
                                            <li> <a href="login.jsp">Login</a> </li>
                                            <li> <a href="cart.jsp">Cart</a> </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- end header -->
        </header>
        
    <!-- Background image slide -->
        <section class="slider_section">
            <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img style="width:1400px; height: 550px;" src="images/ecopic.png" alt="environment">
                        <div class="container">
                            <div class="carousel-caption relative">
                                <h1><i>Change your world for the better!</i></h1>
                                <br />
                                <p style="text-align: center; color: white; font-size: 22px;"><b>It's time that we all did our part to lessen global warming 
                                       whilst saving our money.</b></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    <!-- About section  -->
     <p id="about"></p>
        <div class="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2 style="color: green;">About Us</h2>
                            <span><i>EcoEconomical</i> is a mock-up Irish company where people can buy environmentally friendly and sustainable products 
                                while also calculating how much Co2 emissions come from their electrical appliances and their electricity costs.
                                Our goal is to reduce our carbon footprint and persuade people to do their part to combat climate change.</span>
                        </div>
                    </div>
                </div>
            </div>
            
        <!-- About mini section -->
            <div class="container-fluid">
                <div class="row flexcss">
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                        <div class="about-box">
                            <h3>Our World is Dying:</h3>
                            <p>Our carbon footprint harms the environment in a variety of ways: it is the primary cause of human-caused 
                                climate change, it contributes to urban air pollution, it causes toxic acid rain, it contributes to coastal 
                                and ocean acidification, and it accelerates the melting of glaciers and polar ice. </p>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                        <div class="about-img">

                            <figure><img src="images/img1.jpg" alt="img"/></figure>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- end about -->


    <!-- Services section--> 
        <div id="service" class="service">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2 style="color: black;">Services</h2>
                            <span>View our data analytics, sign up for special product offers, and read news about our current world's environment. 
                                Use our <b style="font-size: 18px; color: blue;"><i>Eco Calculator</i></b> to not only calculate the cost of using your electrical appliances, but also to see how much emissions 
                                they produce.</span><br />
                        </div>
                    </div>
                </div>
            </div>

        <!-- Services offered section -->
            <div class="container margin-r-l">
                <div class="row">
                    
                <!-- Data section -->
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 thumb">
                        <div class="service-box">
                            <figure>
                                <a href="images/worlddata.jpg" rel="ligthbox">
                                    <img  src="images/worlddata.jpg" class="zoom img-fluid "  alt="">
                                </a>
                                <span class="hoverle">
                                    <a href="worldinfo.jsp" rel="ligthbox">Data</a>
                                </span>  
                            </figure>
                        </div>
                    </div>
                
                <!-- Calculator section -->
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 thumb">
                        <div class="service-box">
                            <figure>
                                <a href="images/calculator.png" rel="ligthbox">
                                    <img  src="images/calculator.png" class="zoom img-fluid "  alt="">
                                </a>
                                <span class="hoverle">
                                    <a href="calculator.jsp" rel="ligthbox">Calculator</a>
                                </span>
                            </figure>
                        </div>
                    </div>
                    
                <!-- Register section -->
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 thumb">
                        <div class="service-box">
                            <figure>
                                <a href="images/register.png" rel="ligthbox">
                                    <img  src="images/register.png" class="zoom img-fluid "  alt="">
                                </a>
                                <span class="hoverle">
                                    <a href="register.jsp" rel="ligthbox">Register</a>
                                </span>
                            </figure>
                        </div>
                    </div>  
                </div>
            </div>
            <!-- end services -->
            
        <!-- Blog section -->
            <div id="blog" class="blog">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="titlepage">
                                <h2 style="color: green;">Our Blog</h2>
                                <span>View what this website has accomplished and what action is required to help our world.</span> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- WHO blog -->
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="blog-box">
                                <figure><img src="images/blog-img1.jpg" style="width: 500px; height: 250px;" alt="#"/>
                                    <span style='background-color: #6dd1fc;'>10 August 2022</span>
                                </figure>
                                <div class="travel">
                                    <span style='color: green;'>Post By :  World Health Organisation</span> 
                                </div>
                                <h3>New Helper Alert</h3>
                                <p>There appears to be a new website out there that calculates how much emissions are coming out of people's
                                    household appliances and showing ways in which to reduce them. This is greatly helping ease the strain on our
                                    earth's atmosphere and lowering our carbon footprint, making air cleaner to breathe.
                                </p>
                            </div>
                        </div>
                        
                        <!-- EPA blog -->
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="blog-box">
                                <figure><img src="images/blog-img2.jpg" style="width: 500px; height: 250px;" alt="#"/>
                                    <span style='background-color: #6dd1fc;'>10 November 2022</span>
                                </figure>
                                <div class="travel">
                                    <span style='color: green;'>Post By : Environmental Protection Agency</span> 
                                </div>
                                <h3>Action is Urgent</h3>
                                <p>The world is crippling by the second as we know it. Our Co2 emissions have grown by 90%
                                    since 1970. We need to come together and do what we can before it is too late to rectify our
                                    mistake.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end our blog -->
            
            
        <!-- Contact form -->
            <div id="contact" class="contact" style="background-color: green;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="titlepage">
                                <h3>Contact Us</h3>
                                <% 
                                   String msg=request.getParameter("msg");
                                   if("error".equals(msg))
                                   {
                                   %>  
                                <div class="message">
                                  <!-- Error Message -->
                                    <span style="color: #f0cb3a;">* Message Not sent! Please Try Again! *</span>
                                </div>
                                    <%}%>
                                    
                                    <%
                                    if("success".equals(msg))
                                    {
                                    %> 
                                <div class="message">
                                  <!-- Success Message -->
                                    <span style="color: #f0cb3a;">* Message Sent! We'll Get Back to You! *</span>
                                </div>
                                    <%}%>
                                <br />
                                    <p style="color: white;"> Send us a message and we'll get back to you!</p>
                            </div>
                        </div>
                    </div>
                    
            <!-- REFERENCE
                BTech Days (2020) 15. online shopping project in JSP - message US &amp; about (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
                Available at: https://www.youtube.com/watch?v=RFSlqlUH3_o&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=17
            -->
                    <!-- Input area for Contact Form -->
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 offset-md-3">
                            <form action="messageUsAction.jsp#contact" method="post" class="contact">                    
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <input class="contactus" id="email" name="email" placeholder="Email" type="text" minlength="5" maxlength="30" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                                        </div>
                                        <div class="col-sm-12">
                                            <input class="contactus" id="subject" name="subject" placeholder="Subject" type="text" minlength="1" maxlength="35" required>
                                        </div>
                                        <div class="col-sm-12" style="text-align: center;">
                                            <label style="font-size: 16.5px;"><i>Message :</i></label>
                                        <textarea class="textarea" id="body" name="body" type="text" placeholder="Message" minlength="5" maxlength="1000" required></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-12" style="text-align: center;">
                                        <button type="submit" class="btnsend">Send</button>
                                    </div>
                            </form>
                        </div>
                </div>
            </div>
        </div>
        <!-- end contact --> 
        
        
        <!-- footer --> 
            <div class="footer" style="background-color: #a7d3fc;">
                <div class="container" style="height: 225px; background-color: #a7d3fc; margin-left: 375px;">
                    <div class="row">
                        <div class="col-lg-2 col-md-6 col-sm-12 width">
                            <div class="address">          
                                
        <!-- REFERENCE 
            Random address in Irelandreport (no date) Random. 
            Available at: https://www.bestrandoms.com/random-address-in-ie?quantity=1
        -->
                            <h3>Address:</h3>
                                <i><img src="icon/icon1.jpg" style="width:30px; height: 30px;">Main St. Cork</i>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 width">
                            <div class="address">
                                <h3>Number:</h3>
                                <i><img src="icon/icon2.png" style="width:40px; height: 30px;">061-383262</i>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 width">
                            <div class="address">
                                <h3>Email:</h3>
                                <i><img src="icon/icon3.png"  style="width:40px; height: 30px;">eco@eir.net</i>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 width">
                            <div class="address">
                                <h3>Social Media:</h3>
                                <ul class="contant_icon">
                                    <li><img src="icon/fb.png" alt="icon"/></li>
                                    <li><img src="icon/tw.png" alt="icon"/></li>
                                    <li><img src="icon/lin(2).png" alt="icon"/></li>
                                    <li><img src="icon/instagram.png" alt="icon"/></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- end footer -->
        
        <!-- JavaScript files--> 
        <script src="js/jquery.min.js"></script> 
        <script src="js/popper.min.js"></script> 
        <script src="js/bootstrap.bundle.min.js"></script> 
        <script src="js/jquery-3.0.0.min.js"></script> 
        <script src="js/plugin.js"></script> 
        
        <!-- sidebar --> 
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script src="js/custom.js"></script>
        
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
