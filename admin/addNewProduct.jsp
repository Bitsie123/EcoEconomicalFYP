<%-- 
    Document   : addNewProduct.jsp
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

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/addNewProduct-style.css">
        <title>Add New Product Page</title>
    </head>
    
    <body>
        
    <!-- Style Component -->
        <style>
            .input-style {
                font-size: 15px;
                width: 500px;
                height: 30px;
                font-family: Calibri;
            }
            
            .input-description {
                font-size: 15px;
                width: 500px;
                height: 80px;
                font-family: Calibri;
            }
            
            form {
                padding-left: 40px;
            }
            
            .btn {
                padding-left: 180px;
                font-style: normal;
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
                font-size: 22px;
            }
        </style>      
        
    <!-- Assigned Product ID to Add -->
        <% 
        int id=11;
        try {
            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select max(id) from products");
            while(rs.next())
            {
                id=rs.getInt(1);
                id=id+1;
            }
            }
        catch(Exception e)
        {}
        %>
    
        
    <!-- Add New Product Page -->
    <h1 style="text-align: center;"><u>Add New Product:</u></h1>
    
<!-- REFERENCE
    BTech Days (2020) 4. online shopping project in JSP - add new product page (Eclipse IDE,Tomcat Sever, mysql database), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=4yT9_rahhbE&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=5
-->
    <!-- Product Saved Successful -->
        <% 
        String msg=request.getParameter("msg");
        if("done".equals(msg))
        {
        %>
        <h3 class="alert" style="text-align: center; color: #f0cb3a; font-size: 30px;" >!!!Product Added Successfully!!!</h3>
        <%}%>
        
    <!-- Product Saved Unsuccessful -->
        <%
        if("wrong".equals(msg))
        {
        %>
        <h3 class="alert" style="text-align: center; color: #f0cb3a; font-size: 30px;">!!!Something Went Wrong! Please Try Again!!!</h3>
        <%}%>
    
    <!-- Add New Product Form -->
    <form action="addNewProductAction.jsp" method="post">
        <h3 style="color: green; font-size: 25px; margin-left: 170px;">Product ID: <%out.println(id); %></h3>
        <input type="hidden" name="id" value="<%out.println(id); %>">
        
        
    <!-- New Product Information -->
        <div>
            <h3><i>Enter Name:</i></h3>
            <input class="input-style" type="text" name="name" placeholder="Enter Name" minLength="3" maxLength="50" required >
            <br /><br />
            <hr>
        </div>

        <div>
            <h3><i>Enter Description:</i></h3>
            <textarea class="input-description" type="text" name="description" placeholder="Enter Description" minLength="5" maxLength="255" required ></textarea>
            <br /><br />
            <hr>
        </div>
        
        <div>
            <h3><i>Enter Category:</i></h3>
            <input class="input-style" type="text" name="category" placeholder="Enter Category" minLength="3" maxLength="30" required >
            <br /><br />
            <hr>
        </div>

        <div>
            <h3><i>Enter Price:</i></h3>
            <input class="input-style" type="number" name="price" placeholder="Enter Price" maxLength="5" step="any" required >
            <br /><br />
            <hr>
        </div>

        <div>
            <h3><i>Active:</i></h3>  
            <select class="input-style" name="active" readonly>
                <option value="Yes">Yes</option>
            </select>
            <br /><br />
        </div>
        <br />
    
    <!-- Save Button -->
    <div class="btn">
        <button class="button"><i class='far fa-arrow-alt-circle-right'> Save </i></button>
    </div>
  </form>

<!-- REFERENCE 
    Mr. Web Designer (2022) Maxlength attribute not working for input type = number in HTML? here's the Javascript solution!, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=DDUdZNCuwtU
-->
<!-- Input Box Type Number Validation (JavaScript Function) -->
    <script>
        document.querySelectorAll('input[type=number]').forEach(input =>{
            input.oninput = () =>{
                if(input.value.length > input.maxLength) input.value = input.value.slice(0, input.maxLength);
            };
        });
    </script> 
    
</body>
</html>
