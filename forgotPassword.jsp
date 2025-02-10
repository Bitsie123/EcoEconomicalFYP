<%-- 
    Document   : forgotPassword.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/signup-style.css">
        <title>Forgot Password</title>
    </head>

<!-- Style Components -->
    <style>
        h3 {
            color: green; 
            text-align: center;
            font-size: 50px;
        }
    
        .loginbtn {
            width: 200px;
            height: 30px;
            background-color: #33ccff;
            border-style: solid;
        }
        
/* REFERENCE 
    W3Schools (no date) CSS :hover selector. 
    Available at: https://www.w3schools.com/cssref/sel_hover.php  

    W3Schools (no date) Color gradient, Colors Gradient. 
    Available at: https://www.w3schools.com/colors/colors_gradient.asp
*/
        .loginbtn:hover {
            background: linear-gradient(to bottom right, #33ccff 0%, #66ffff 100%);
            font-style: italic;
        }
        
        input {
            font-size: 15px;
            height: 30px;
            width: 500px;
        }
        
        .show {
            height: 10px;
        }
        
        .button {
            background-color: #f0cb3a; 
            border-color: white;
            width: 120px;
            height: 40px;
            font-size: 18px;
        }
            
        .button:hover {
            background-color: orange; 
            font-style: italic;
        }
    </style>
    
    <body>
        
      <!-- Reset Password Page -->
        <div id="container" style="text-align: center;">
            <h1 style="font-size: 45px;"><u>Reset Password</u></h1>
          <p style="font-style: italic;">Please enter in the following details in order to reset your password:</p><br />
          
           <div class="signup">  
               
            <!-- REFERENCE
                BTech Days (2020) 3. online shopping project in JSP - forgot password page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
                Available at: https://www.youtube.com/watch?v=LD2c6RoryDQ&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=4
            -->
               <!-- Reset Password Form -->
               <form action="forgotPasswordAction.jsp" method="post">
                   <input type="email" name="email" placeholder="Enter Email" minlength="5" maxlength="50" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br/><br />
                   
                   <input type="text" name="firstName" placeholder="Enter First Name" minlength="2" maxlength="50" required><br/><br />
                   
                   <input type="text" name="lastName" placeholder="Enter Last Name" minlength="2" maxlength="50" required><br/><br />
                   
                   <input type="text" name="address" placeholder="Enter Address" minlength="5" maxlength="100" required><br/><br />
                   
                   <input type="password" name="newPassword" placeholder="Enter in new password" id="newPassword" minlength="4" maxlength="10" required><br/><br />
                   <input type="submit" value="Save" class="button">
               </form>
               <br />
               
            <!-- Login button -->
            <p><i><u>OR</u></i> if you want to try login again, click below;</p>
               <a href="login.jsp">
                   <button class="loginbtn">Login</button>
               </a>
           </div>
            
        <!-- Forgot Password Action -->
           <div class="whyforgotPassword" style="margin-top: -28px; margin-bottom: 0px;">           
            <%
                String msg=request.getParameter("msg");
                if("invalid".equals(msg))
                {
            %>
            <h3>!!! Something Went Wrong! Please Try Again !!!</h3>
                <%}%>
            </div>  
        </div> 

</body>
</html>