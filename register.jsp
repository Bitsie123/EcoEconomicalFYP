<%-- 
    Document   : register.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
<!-- REFERENCE
W3Schools online HTML editor (no date) W3Schools Tryit Editor. 
Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_register_form 
-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style Component -->
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: green;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email], input[type=tel] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=email]:focus, input[type=tel]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #f0cb3a;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 70%;
  opacity: 0.9;
  font-size: 18px;
}

.registerbtn:hover {
  background-color: lightgreen;
  font-style: italic;
}

.btn {
    text-align: center;
}

a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}

.signBtn:hover {
  font-style: italic;
}

/* reset button */
.reset {
     background-color: #a7d3fc;
     color: black;
     width: 100px;
     height: 30px;
}

/* REFERENCE 
    W3Schools (no date) CSS :hover selector. 
Available at: https://www.w3schools.com/cssref/sel_hover.php  
*/
.reset:hover {
    background-color: #33ccff;
    font-style: italic;
}

.message {
    color: red;
    font-weight: bold;
    font-size: 25px;
    text-align: center;
    border: 2px solid red;
    margin-left: 180px;
    margin-right: 180px;
    font-style: italic;
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

<!-- REFERENCE
    Sharma, S. (no date) Registration form in JSP, C# Corner. 
    Available at: https://www.c-sharpcorner.com/UploadFile/fd0172/registration-form-in-jsp/ 
-->
<!-- Registration form -->
<form action="insert.jsp" method="post">
  <div class="container">
    <h1 style="text-align: center;">Register Form</h1>
    <p style="text-align: center;">Register to <i style="font-size: 20px; color: #f0cb3a;"><b>EcoEconomical</b></i> to receive special offers on products and receive notifications
            on offers and newly published information</p>
    

<!-- REFERENCE 
    BTech Days (2020) 6. online shopping project in JSP - users home page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=WI9AuiPy2uU&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=7
-->
<!-- Password Validation -->
<% 
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
%>  
<div class="message">
  <!-- Error Message -->
    <span>Passwords did not match! Please Try Again!</span>
</div>
<%}%>

    
    <p style="color: green;"><i>Please fill in your details:</i></p>
    <hr>
    
    <label for="firstname" style="color: blue;"><b>First Name:</b></label>
    <input type="text" placeholder="Enter First Name" name="firstname" id="firstname" minlength="1" maxlength="30" required>
    
    <label for="lastname" style="color: blue;"><b>Last Name:</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastname" id="lastname"  minlength="1" maxlength="30" required>

    <label for="email" style="color: blue;"><b>Email:</b></label>
    <input type="email" placeholder="john@gmail.com" name="email" id="email" minlength="5" maxlength="50" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>

    <label for="address" style="color: blue;"><b>Address:</b></label>
    <input type="text" placeholder="Enter Address" name="address" id="address" minlength="5" maxlength="100" required>
    
    <label for="phone"style="color: blue;"><b>Phone:</b></label>
    <input type="tel" placeholder="08" name="phone" id="phone" minlength="10" maxlength="10" required>
    
    <label for="psw" style="color: blue;"><b>Password:</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" minlength="4" maxlength="10" required value="">

    <label for="psw-repeat" style="color: blue;"><b>Repeat Password:</b></label>
    <input type="password" placeholder="Repeat Password" name="password2" id="password2" minlength="4" maxlength="10" required value="">
    
    <div>
    <input class="reset" type="reset">
    </div>
    
    <hr>
    <div class="btn">
    <p>By creating an account you agree to our Terms & Privacy.</p>
    
<!-- Register button -->
    <button type="submit" class="registerbtn">Confirm Registration</button>
    </div>
  </div>
  
<!-- Sign in Option -->
  <div class="container signin">
      <p>Already have an account? <a href="login.jsp" class="signBtn"><b>Sign in</b></a>.</p>
  </div>
</form>

</body>
</html>
