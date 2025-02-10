<%-- 
    Document   : messagesReceived.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!-- REFERENCE
            BTech Days (2020) 4. online shopping project in JSP - add new product page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
            Available at: https://www.youtube.com/watch?v=4yT9_rahhbE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=5
-->
<!-- Admin Nav Bar -->
<%@include file="adminHeader.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Messages Received</title>

<!-- Style Component -->
<style>
    h3
    {
        color: #f0cb3a;
        text-align: center;
        font-size: 30px;
    }

/* REFERENCE
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_border
*/
    table, th, td {
        border: 1px solid black;
    /* REFERENCE
        MDN Web Docs (no date) Border-spacing - CSS: Cascading style sheets: MDN, CSS: Cascading Style Sheets | MDN. 
        Available at: https://developer.mozilla.org/en-US/docs/Web/CSS/border-spacing
    */
        border-spacing: 1px 0.75rem;
        border: green;
        border-style: groove;
        border-width: 1px;
    }   
    
    td {
        height: 100px;
    }
    
    table {
        width: 1270px;
        margin-left: auto;
        margin-right: auto;
    }

    thead {
        font-size: 20px;
        font-style: italic;
        height: 50px;
    }
    
    .message {
        padding-top: 15px;
        padding-bottom: 15px;
        padding-left: 10px;
        vertical-align: top;
    }
    
    .reply {
        text-align: center;
        text-decoration: underline;
        font-weight: bold;
        color: green;
    }
    
    .reply:hover {
        color: blue;
        text-decoration: none;
        font-style: italic;
        font-size: 20px;
    }
</style>
</head>
<body>
    
<!-- REFERENCE 
    BTech Days (2020) 16. online shopping project in JSP - messages received (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=AMBFy8ph5lM&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=17  
-->
<!-- Page Heading -->
<div style="text-align: center;">
    <h1 style="text-align: center;"><u>Messages Received:</u></h1>
</div><br />
   
<!-- Messages Received Table -->
<table class="center">
        <thead>
          <tr>
            <th scope="col" style="width: 200px; color: green;">Email:</th>
            <th scope="col" style="width: 200px; color: green;">Subject:</th>
            <th scope="col" style="width: 500px; color: blue;">Message:</th>
            <th scope="col" style="width: 100px;  color: #f0cb3a;">Reply:</th>
          </tr>
        </thead>
        <tbody>
       
<!-- Database Connection -->
    <% 
    try
    {   Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from messages");
        while(rs.next())
        {
    %>          
          <tr>
            <td style="text-align: center; color: #f0cb3a;"><b><%=rs.getString(1) %></b></td>
            <td style="text-align: center;"><%=rs.getString(2) %></td>
            <td class="message"><%=rs.getString(3) %></td>
            <td style="text-align: center;"><a href="#" class="reply" onclick="openPopup()">Reply</a></td>
          </tr>
          <% }}
          catch(Exception e){
            System.out.println(e);
}
          %>       
        </tbody>
      </table>

<!-- REFERENCE 
    Tony Teaches Tech (2021) How to do Javascript popups (alert, confirm, prompt examples), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=bNtyTGBtbK4
-->
<!-- Alert Window Pop Up -->
<script>
    function openPopup() {
    // Message Variable
        var message = null;
        message = prompt("Enter Reply: ", "");
        if (message === "") {
            alert("Message Cannot Be Empty!");
    } else if (message === null) {
        window.close();
        return;
    } else {
        alert("Message Sent!");
        window.close();
} }
</script>

</body>
</html>