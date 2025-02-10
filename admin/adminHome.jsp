<%-- 
    Document   : adminHome.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!-- REFERENCE
    BTech Days (2020) 4. online shopping project in JSP - add new product page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=4yT9_rahhbE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=5
-->   

<!-- Admin Nav Bar File -->
<%@include file="adminHeader.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
    </head>
    
    <body>
        <div style="text-align: center;">
            <h1><u>Admin HomePage:</u></h1>
            <p style="font-size: 25px; color: red;"><i><b>^ Please use the above navigation bar to complete your tasks ^</b></i></p>
        </div>
        <br />
        
        <!-- Admin Homepage Main -->
        <div>
            <p style="padding-left: 20px;">At <i style="font-size: 20px; color: #f0cb3a;">EcoEconomical</i> our primary goals are to provide our employees with a positive working 
                environment and to ensure that all of the orders and messages that come in from our clients 
                are handled in a timely manner.</p> <br /><br />
            
            <p style="text-align: right; padding-right: 60px;">We aim to do all our assigned tasks efficiently and become the best version of ourself 
                that we can be.</p> <br /><br />
            
            <p style="padding-left: 20px;">If you have any inquiries, you are more than welcome to visit the Human Resources 
                department, and you are also welcome to take some time off for yourself if needs be.</p> <br />
            
            <p style="text-align: center; font-size: 45px; color: green;">Time to Change Our World for the Better!</p> <br />
        </div>
    </body>
</html>
