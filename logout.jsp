<%-- 
    Document   : logout.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    BTech Days (2020) 6. online shopping project in JSP - users home page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=WI9AuiPy2uU&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=7 
-->
<!-- Back to Login Page -->
<%
   session.invalidate();
   response.sendRedirect("login.jsp");
%>
