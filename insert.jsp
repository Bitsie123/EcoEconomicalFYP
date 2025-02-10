<%-- 
    Document   : insert.jsp
    Author     : 119387806
--%>

<!-- REFERENCE
    Sharma, S. (no date) Registration form in JSP, C# Corner. 
    Available at: https://www.c-sharpcorner.com/UploadFile/fd0172/registration-form-in-jsp/ 
-->
<%@ page language="java" import="java.sql.*"%>

<!-- Save data from registration form to Customer Table -->
<%

    String firstname = request.getParameter("firstname");

    String lastname = request.getParameter("lastname");

    String email = request.getParameter("email");

    String address = request.getParameter("address");

    String phone = request.getParameter("phone");

    String password = request.getParameter("password");
    
    String password2 = request.getParameter("password2");
    
/* REFERENCE 
    JSP if else: How does if else statement work: Example #2 (2022) EDUCBA. 
    Available at: https://www.educba.com/jsp-if-else/   
*/
  // Password Validation
    if (password.equals(password2)) {
    
      // Save Customer to Customer Table
        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");

            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FypDb", "fyp", "fyp");

            PreparedStatement ps = con.prepareStatement("INSERT INTO customer VALUES(?,?,?,?,?,?)");

            ps.setString(1, firstname);

            ps.setString(2, lastname);
        
            ps.setString(3, email);

            ps.setString(4, address);
            
            ps.setString(5, phone);

            ps.setString(6, password);

            ps.executeUpdate();

        } catch (Exception e) {
        out.println(e);
        } 
        
   // Redirect and Show Error Message
} else {
    response.sendRedirect("register.jsp?msg=invalid");
    }
%>

<!-- Style Component -->
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
        width: 120px;
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
    <br />
        <h1 style="font-size: 45px;"><u>Welcome to EcoEconomical <%out.println(email);%>!</u></h1>
        <p style="font-size: 22px; font-style: italic;"><i>Please Check your Details:</i></p>
        <br />
        
    <!-- REFERENCE 
        W3Docs (no date) How to align labels next to inputs, W3docs. 
        Available at: https://www.w3docs.com/snippets/html/how-to-align-labels-next-to-inputs.html 
    -->
        <div> 
            <label style="display: inline-block; text-align: center;"><b style="color: green;">First Name:</b> <%out.println(firstname);%></label>
        </div> <br /> 
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Last Name:</b> <%out.println(lastname);%></label>
        </div><br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Email:</b> <%out.println(email);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Address:</b> <%out.println(address);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Phone:</b> <%out.println(phone);%></label>
        </div> <br />
        
        <div>
            <label style="display: inline-block; text-align: center;"><b style="color: green;">Password:</b> <%out.println(password);%></label>
        </div> <br /><br />

        
  <!-- Button Back to Registration Form -->
    <button class="button"><a class="btn" href="login.jsp">Back to Login</a></button>    
   
    </div>
</body>
</html>