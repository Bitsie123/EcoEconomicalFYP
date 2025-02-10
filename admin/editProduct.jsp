<%-- 
    Document   : editProduct.jsp
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
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Edit Product</title>

</head>
<body>
    
<!-- REFERENCE
    BTech Days (2020) 5. online shopping project in JSP - All Products &amp; Edit Products (Eclipse IDE,Tomcat Sever, mysql), YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=BTqHmU8cnjk&amp;list=PLdRq0mbeEBmwJhUtz6R9ISdOn68UE7ohZ&amp;index=6 
--> 
<!-- Back to All Products Page -->
<div>
    <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back to Products </i></a></h2>
    <h1 style="text-align: center; margin-right: 290px;"><u>Edit Product:</u></h1>
</div>
<br />

<!-- Retrieve Saved Product Info -->
<% 
    /* Retrieve Clicked ID Information */
    String id=request.getParameter("id");
    try
    {
    
    /* Database Connection */
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from products where id="+id+"");
        while(rs.next())
        {
%>


<!-- Style Components -->
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
                height: 150px;
                font-family: Calibri;
            }
            
            form {
                padding-left: 40px;
            }
            
            .btn {
                padding-left: 180px;
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
            
            .back {
                color: green;
                float: left;
                padding-left: 40px;
                padding-top: 2px;
                font-size: 30px;
            }
            
            .back:hover {
                color: blue;
                font-style: italic;
            }
</style>


<!-- Edit Product Form -->
<form action="editProductAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id);%>">
    
<div class="left-div">
    <h3><i>Edit Name:</i></h3>
    <input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" maxLength="50" required>
<br /><br /><hr>
</div>

<div class="right-div">
    <h3><i>Edit Description:</i></h3>
    <textarea class="input-description" type="text" name="description" maxLength="255" required><%=rs.getString(3) %></textarea>
<br /><br /><hr>
</div>

<div class="right-div">
    <h3><i>Edit Category:</i></h3>
    <input class="input-style" type="text" name="category" value="<%=rs.getString(4) %>"  maxLength="30" required>
<br /><br /><hr>
</div>

<div class="left-div">
    <h3><i>Edit Price:</i></h3>
    <input class="input-style" type="number" name="price" value="<%=rs.getString(5) %>" maxLength="5" step="any" required> 
<br /><br /><hr>
</div>

<div class="right-div">
    <h3><i>Active:</i></h3>
    <select class="input-style" name="active">
        <option value="Yes">Yes</option>
        <option value="No">No</option>
    </select>
</div>
<br /><br />

<!-- Save button -->
 <div class="btn">
    <button class="button"><i class='far fa-arrow-alt-circle-right'> Save </i></button>
 </div>
</form>

<%       
}
}
catch(Exception e)
{
    System.out.println(e);
}
%>

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
