<%-- 
    Document   : login.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Login Page</title>
    
<!-- REFERENCE 
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_social_login 
-->
<!-- Style Components -->
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
}

* {
    box-sizing: border-box;
}   
     
.container {
    position: relative;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px 0 30px 0;
} 
    
input,
.btn {
    text-align: center;
    width: 100%;
    padding: 12px;
    border: none;
    border-radius: 4px;
    margin: 5px 0;
    opacity: 0.85;
    display: inline-block;
    font-size: 17px;
    line-height: 20px;
    text-decoration: none;
}

input:hover,
.btn:hover {
    opacity: 2;
    font-style: italic;
}

.fb {
    background-color: #3B5998;
    color: white;
}

.twitter {
    background-color: #55ACEE;
    color: white;
}

.google {
    background-color: #dd4b39;
    color: white;
}

/* style the submit button */
input[type=submit] {
    background-color: #04AA6D;
    color: white;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
    font-style: italic;
}

/* Two-column layout */
.col {
    float: left;
    width: 50%;
    margin: auto;
    padding: 0 50px;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* vertical line */
.vl {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    border: 2px solid #ddd;
    height: 175px;
}

/* text inside the vertical line */
.vl-innertext {
    position: absolute;
    top: 50%;
    transform: translate(-50%, -50%);
    background-color: #f1f1f1;
    border: 1px solid #ccc;
    border-radius: 50%;
    padding: 8px 10px;
}

/* hide some text on medium and large screens */
.hide-md-lg {
    display: none;
}

/* bottom container */
.bottom-container {
    text-align: center;
    background-color: #666;
    border-radius: 0px 0px 4px 4px;
}

/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 650px) {
  .col {
    width: 100%;
    margin-top: 0;
  }
  /* hide the vertical line */
  .vl {
    display: none;
  }
  /* show the hidden text on small screens */
  .hide-md-lg {
    display: block;
    text-align: center;
  }
}

.logodiv {
    text-align: center;
}

.logo {
    height: 175px;
    width: 300px;
}

h3 {
    color: #f0cb3a; 
    text-align: center;
    font-size: 50px;
}

/* REFERENCE
    W3Schools (no date) How to - change placeholder color, How To Change Input Placeholder Color.
    Available at: https://www.w3schools.com/howto/howto_css_placeholder.asp 
*/
::placeholder {
  color: black;
  opacity: 0.3;
}
</style>
    </head>
    
    <body>
        
<!-- Logo Image -->
    <div class="logodiv">
    <img class="logo" src="images/logo.png">
    </div>
    
    <!-- Login Page -->
    <h1 style="text-align: center;">Login Form</h1>
        <p style="text-align: center;"><i>Please enter in your account details to Login:</i><p>
            
            
<!-- REFERENCE
    BTech Days (2020) 2. online shopping project in JSP - login page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=sbD37W6X-C0&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=3 
-->      
    <!-- Login action -->
        <div class="whysignLogin">
            <%
                String msg=request.getParameter("msg");
                if("notexist".equals(msg))
                {
            %>
            <h3>!!! Incorrect Username / Password! Please Try Again !!!</h3>
            <%}%>
            
            <% if("invalid".equals(msg)){
            %>
            <h3>!!! Something Went Wrong! Please Try Again !!!</h3>
            <%}%>
            
            
    <!-- REFERENCE
        BTech Days (2020) 3. online shopping project in JSP - forgot password page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
        Available at: https://www.youtube.com/watch?v=LD2c6RoryDQ&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=4
    -->
        <!-- Password Successfully Changed -->
            <% if("passwordChanged".equals(msg)){
            %>
            <h3>!!! Password Changed Successfully! Please Login !!!</h3>
            <%}%>    
        </div>  
            
    <!-- Login form -->
        <div class="container"  style="background-color: #a7d3fc;">
               <form action="loginAction.jsp" method="post">
                   
                   <div class="row">                      
                       <!-- Login with other social media platforms -->
                       <div class="col">
                           <a href="https://www.facebook.com/" class="fb btn">
                               <i class="fa fa-facebook fa-fw"></i>
                               Login with Facebook
                           </a><br /><br />
                           <a href="https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoiZW4ifQ%3D%3D%22%7D" class="twitter btn">
                               <i class="fa fa-twitter fa-fw"></i>
                               Login with Twitter
                           </a><br /><br />
                           <a href="https://accounts.google.com/ServiceLogin/signinchooser?service=accountsettings&continue=https%3A%2F%2Fmyaccount.google.com%3Futm_source%3Daccount-marketing-page%26utm_medium%3Dgo-to-account-button&ifkv=AWnogHfSnhZDSsjL_oXwcdLz-ygAl_6io4Q2iZAK01gHsZ0eoYc1cIt5NB4g613TkS__xXSkSFQyxA&flowName=GlifWebSignIn&flowEntry=ServiceLogin" class="google btn">
                               <i class="fa fa-google fa-fw"></i>
                               Login with Google+
                           </a><br /><br />
                       </div>
                       
                    <!-- Login manually -->
                       <div class="col">
                            <input type="email" name="email" placeholder="Enter Email" minlength="5" maxlength="40" required><br /><br />
                            <input type="password" name="password" placeholder="Enter Password" minlength="4" maxlength="10" required><br /><br />
                            <input id="loginbtn" type="submit" value="Login">
                       </div>
                   </div>
               </form>
            </div>
        <br />
            
        <!-- Sign up and Forgotten password section -->
            <div class="botton-container">
                <div class="row">
                    <div class="col">
                        <a href="register.jsp" class="btn" id="signUpbtn" style="background-color: #f0cb3a; color: black; height: 50px; font-size: 20px;">Sign Up</a>
                    </div>
                    <div class="col">
                        <a href="forgotPassword.jsp" class="btn" style="background-color: #f0cb3a; color: black; height: 50px; font-size: 20px;">Forgot Password?</a>
                    </div>
                </div>
            </div>
 
    </body>
</html>
