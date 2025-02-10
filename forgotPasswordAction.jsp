<%-- 
    Document   : forgotPasswordAction.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    BTech Days (2020) 3. online shopping project in JSP - forgot password page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=LD2c6RoryDQ&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=4
-->
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
/* Retrieve Inputted Data from Forgot Password Page */
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String newPassword = request.getParameter("newPassword");
    
    int check=0;
    
/* Database Connection */
    try {
        Connection con=ConnectionProvider.getCon();
        Statement st = con.createStatement();
        
    /* REFERENCE
        W3Schools (no date) SQL UPDATE Statement, SQL update statement. 
        Available at: https://www.w3schools.com/sql/sql_update.asp 
    */
        ResultSet rs=st.executeQuery("SELECT * FROM customer WHERE email = '" + email + "' AND address = '" + address + "' AND firstName = '" + firstName + "' "
        + "AND lastName = '" + lastName + "'");
        while(rs.next()){
            check=1;
            
        /* If Inputted Information is Same as Database, New Password is Saved */   
            st.executeUpdate("UPDATE customer SET password = '" + newPassword + "' WHERE email = '" + email + "' AND address = '" + address + "' AND firstName = '" + 
            firstName + "' AND lastName = '" + lastName + "'");
        
        /* Back to Login Page*/   
            response.sendRedirect("login.jsp?msg=passwordChanged");
    }
    if (check == 0) {
            response.sendRedirect("forgotPassword.jsp?msg=invalid");
    }
    } catch (Exception e) {
        System.out.println(e);
    }
%>
