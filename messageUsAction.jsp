<%-- 
    Document   : messageUsAction.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    BTech Days (2020) 15. online shopping project in JSP - message US &amp; about (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=RFSlqlUH3_o&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=17
-->
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" import="java.sql.*"%>

<!-- Retrieve Inputted Data from Contact Form  and Save to Database -->
<% 
// Retrieve Inputted Data from Contact Form
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String body = request.getParameter("body");

    try {
// Save Message to Database
        Connection conn = ConnectionProvider.getCon();
        String sql = "INSERT INTO messages (email, subject, body) VALUES (?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, subject);
        ps.setString(3, body);
        ps.executeUpdate();

// Redirect to Contact Form with Success Message
        response.sendRedirect("indexLoggedIn.jsp?msg=success");
    } catch (Exception e) {
// Redirect to Contact Form with Error Message
        System.out.println(e);
        response.sendRedirect("indexLoggedIn.jsp?msg=error");
  }
%>
