<%-- 
    Document   : order.jsp
    Author     : 119387806
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="project.dao.ProductDao"%>
<%@page import="project.connection.DbCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="project.model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- REFERENCE
    Sharma, S. (no date) Registration form in JSP, C# Corner. 
    Available at: https://www.c-sharpcorner.com/UploadFile/fd0172/registration-form-in-jsp/ 
-->
<!-- Save data from registration form to Customer Table -->
<%
String email = request.getParameter("email");
String product_id = request.getParameter("product_id");
String quantity = request.getParameter("quantity");
String total = request.getParameter("total");
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
String phone = request.getParameter("phone");

try {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FypDb", "fyp", "fyp");
    String sql = "INSERT INTO cart (email, product_id, quantity, price, total, address, city, state, country, phone, orderDate, deliveryDate, paymentMethod, transactionId, status) VALUES (?, ?, ?, 0, ?, ?, ?, ?, ?, ?, 'Date', 'Date', 'Card', 6, 'n/a')";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, email);
    ps.setInt(2, Integer.parseInt(product_id));
    ps.setInt(3, Integer.parseInt(quantity));
    ps.setInt(5, Integer.parseInt(total));
    ps.setString(6, address);
    ps.setString(7, city);
    ps.setString(8, state);
    ps.setString(9, country);
    ps.setInt(10, Integer.parseInt(phone));
    ps.executeUpdate();
} catch (Exception e) {
    out.println(e);
}
%>

<!-- Style Components -->
<style>
    .main {
        text-align: center;
    }
    
    label {
        font-family: Calibri;
    }
    
    .button {
        background-color: #f0cb3a; 
        border-color: white;
        width: 150px;
        height: 60px;
        font-size: 18px;
    }
            
    .button:hover {
        background-color: orange; 
        font-style: italic;
    }
    
    .btn {
        width: 120px;
        text-decoration: none;
        color: black;
    }
</style>
<body>
    
<!-- Details Section -->
    <div class="main">
    
        <h1 style="font-size: 45px;"><u>Thank you for your Order <%out.println(email);%>!</u></h1>
        <p style="font-size: 22px;"><i>Please Check your Order Details:</i></p>
        
    <!-- REFERENCE 
        W3Docs (no date) How to align labels next to inputs, W3docs. 
        Available at: https://www.w3docs.com/snippets/html/how-to-align-labels-next-to-inputs.html 
    -->
                
        <div> 
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Phone:</b> <%out.println(phone);%></label>
        </div> <br /> 
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Email:</b> <%out.println(email);%></label>
        </div><br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Address:</b> <%out.println(address);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">City:</b> <%out.println(city);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Country:</b> <%out.println(country);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">State:</b> <%out.println(state);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: blue;">Product ID:</b> <%out.println(product_id); %></label>
        </div> <br />

        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: blue;">Quantity:</b> <%out.println(quantity); %></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: blue;">Total:</b> <%out.println(total);%></label>
        </div> <br /> <br />
             
    <!-- Button Back to Homepage -->
    <button class="button"><a class="btn" href="indexLoggedIn.jsp">Back to Homepage</a></button>    
   
    </div>
</body>
</html>