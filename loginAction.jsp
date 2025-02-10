<%-- 
    Document   : loginAction.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!-- REFERENCE
    BTech Days (2020) 2. online shopping project in JSP - login page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=sbD37W6X-C0&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=3 
-->
<%
  /* Retrieve Inputted Values */
    String email=request.getParameter("email");
    String password=request.getParameter("password");
  /* Admin email and password */
    if("admin@gmail.com".equals(email) && "admin".equals(password))
    {
    session.setAttribute("email", email);
    response.sendRedirect("admin/adminHome.jsp");
}
else {
    int z=0;
    try
    {
    
    /* Database Connection to Customer (i.e user) Table*/
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from customer where email='" + email + "' and password='" + password + "'");
        while(rs.next()) {
            z=1;
            session.setAttribute("email", email);
            response.sendRedirect("indexLoggedIn.jsp");
            }
        /* Invalid Message */
            if(z==0)
                response.sendRedirect("login.jsp?msg=notexist");
    }
        catch(Exception e){
            System.out.println(e);
            response.sendRedirect("login.jsp?msg=invalid");
    }
}
%>