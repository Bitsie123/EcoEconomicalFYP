<%-- 
    Document   : cart.jsp
    Author     : 119387806
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@page import="project.model.*"%>
<%@page import="project.connection.DbCon"%>
<%@page import="project.dao.*"%>

<!DOCTYPE html>
<html>
<head>
    
<!-- REFERENCE
W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_checkout_form  
-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<% 
/* REFERENCE 
    TechTutorial (2021) 10. E-commerce shopping cart increase and decrease cart product quantity in JSP and Servlet, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=LnEzRzI1kyQ&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=10 
*/
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);

/* REFERENCE 
    TechTutorial (2021) 8. E-commerce shopping cart show all CART products inside cart page in JSP and Servlet, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=vM7TzSBxk3g&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=8    
*/
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null) {
    ProductDao pDao = new ProductDao(DbCon.getCon());
    cartProduct = pDao.getCartProducts(cart_list);
    
/* REFERENCE
   TechTutorial (2021) 9. E-commerce shopping cart calculate total price and item on cart in JSP and Servlet, YouTube. YouTube. 
   Available at: https://www.youtube.com/watch?v=xVgV8S_hMzk&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=9
*/
    double total = pDao.getTotalCartPrice(cart_list);
    request.setAttribute("cart_list", cart_list);
    request.setAttribute("total", total);
    }
%>

<!-- Style Component -->
<style>  
body {
  font-family: Arial;
  font-size: 17px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
  margin-left: auto;
  margin-right: auto;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=tel] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=number] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

select {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;  
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #6dd1fc;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
  height: 60px;
}

.btn:hover {
  background-color: blue;
  font-style: italic;
/* REFERENCE
    W3Schools (no date) Color gradient, Colors Gradient. 
    Available at: https://www.w3schools.com/colors/colors_gradient.asp 
*/
  background: linear-gradient(to bottom right, #6dd1fc 0%, #0000ff 100%);
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

.cart-icon {
    width: 50px;
    height: 40px;
    float: left;
    margin-left: 30px;
    padding-bottom: 8px;
}

th {
    font-size: 20px;
    text-decoration: underline;
}

.carttbl {
    background-color: #f0cb3a;
    text-align: center; 
    margin-left: auto; 
    margin-right: auto;
}

.remove {
    color: black;
    font-style: italic;
}

.remove:hover {
    color: darkolivegreen;
    text-decoration: none;
    font-style: normal;
}

.decrease {
    color: red;
    text-decoration: none; 
    font-size: 38px;
    padding-right: 15px;
}

.decrease:hover {
    color: darkred;
    font-style: italic; 
    font-weight: bold;
}

.increase {
    color: blue;
    text-decoration: none; 
    font-size: 30px;
}

.increase:hover {
    color: darkblue;
    font-style: italic;  
    font-weight: bold;
}

.back {
    color: blue;
    float: right;
    vertical-align: top;
    margin-right: 30px;
    font-size: 25px;
    text-decoration: none;
}
            
.back:hover {
    color: green;
    font-style: italic;
}

/* REFERENCE
    W3Schools (no date) How to - change placeholder color, How To Change Input Placeholder Color.
    Available at: https://www.w3schools.com/howto/howto_css_placeholder.asp 
*/
::placeholder {
  color: black;
  opacity: 0.2;
}
</style>
</head>

<body>   
    
<!-- Heading div -->
<div>
    <h2><img class="cart-icon" src="icon/cart-icon.png">Shopping Cart 
    <a href="products.jsp" class="back"><= Back to Products</a></h2>
</div>


<!-- Cart div -->
  <div class="container" style="background-color: #f0cb3a;">
      
<!-- REFERENCE 
    TechTutorial (2021) 6. E-commerce shopping cart page design using HTML, CSS, bootstrap in JSP Servlet, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=6O-AnDQSvyA&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=6
-->
  <!-- Cart Table -->
    <table class="carttbl">
      <tr>
      <th scope="col" style="width: 180px;">Name: </th>
      <th scope="col" style="width: 100px;">Category: </th>
      <th scope="col" style="width: 100px;">Price: </th>
      <th scope="col" style="width: 100px;">Quantity: </th>
      <th scope="col" style="width: 100px;">Dec/Inc: </th>
      </tr>
         <tbody style=" text-align: center;">
           <tr style="text-align: center;">
               
    <!-- REFERENCE 
        TechTutorial (2021) 8. E-commerce shopping cart show all CART products inside cart page in JSP and Servlet, YouTube. YouTube. 
        Available at: https://www.youtube.com/watch?v=vM7TzSBxk3g&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=8    
    -->
             <% 
             if(cart_list != null){
                for(Cart c:cartProduct){%>
                 <td style="width: 180px;"><%= c.getName() %></td>  
                 <td style="width: 100px;"><%= c.getCategory() %></td>
                 <td name="price" style="width: 100px;"><%= c.getPrice() %></td>
                 <td name="quantity" id="quantity"><input type="text" name="quantity" id="quantity" value="<%= c.getQuantity() %>" readonly style="text-align: center; margin-top: 20px;" required></td>
                 
            <!-- REFERENCE 
                TechTutorial (2021) 10. E-commerce shopping cart increase and decrease cart product quantity in JSP and Servlet, YouTube. YouTube. 
                Available at: https://www.youtube.com/watch?v=LnEzRzI1kyQ&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=10 
            -->
                 <td><a href="quantity-inc-dec?action=dec&id=<%= c.getId()%>" class="decrease">-</a>
                     <a href="quantity-inc-dec?action=inc&id=<%= c.getId()%>" class="increase">+</a>
                 </td>
                 <td>
                     <form action="" method="post">
                         <input type="hidden" name="product_id" id="product_id" value="<%= c.getId() %>" required>
                     </form>
                 </td>
                 
        <!-- REFERENCE
            TechTutorial (2021) 11. E-commerce shopping cart project remove product from the shopping cart in JSP and Servlet, YouTube. YouTube.
            Available at: https://www.youtube.com/watch?v=h_HIU5Q1S6c&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=11
        -->
            <td><a href="remove-from-cart?id=<%= c.getId() %>" class="remove">Remove</a></td>
             </tr>     
                <%
                 }
                 }
             %>
         </tbody>
      </table>

      <hr>
      
<!--  REFERENCE
   TechTutorial (2021) 9. E-commerce shopping cart calculate total price and item on cart in JSP and Servlet, YouTube. YouTube. 
   Available at: https://www.youtube.com/watch?v=xVgV8S_hMzk&amp;list=PLF7Fmglq6SPD9jVwDt-mbYiaewF-pPYZS&amp;index=9
-->
<p style="font-size: 22px; text-align: center;" name="total" id="total"><b>Total:</b> € ${ (total>0)?dcf.format(total):0 }</p>
</div>
    <br />     
         
<!-- Checkout Form --> 
  <div class="col-75">
    <div class="container">

      <form action="order.jsp" method="post">
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            
    <!-- REFERENCE
        Gandy, D. (no date) Fa-Phone · unicode: F095 · created: V2.0 · categories: Web application icons, fa-phone: Font Awesome Icons. 
        Available at: https://fontawesome.com/v4/icon/phone 
    -->
            <label for="fname"><i class="fa fa-phone"></i> Phone Number: </label>
            <input type="number" id="phone" name="phone" placeholder="08" minLength="10" maxLength="10" required>
            <label for="email"><i class="fa fa-envelope"></i> Email: </label>
            
    <!-- REFERENCE
        W3Schools (no date) HTML  pattern attribute, HTML input pattern Attribute. 
        Available at: https://www.w3schools.com/tags/att_input_pattern.asp
    -->
            <input type="text" id="email" name="email" placeholder="john@example.com" minLength="5" maxLength="50" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
            <label for="adress"><i class="fa fa-address-card-o"></i> Address: </label>
            <input type="text" id="adress" name="address" placeholder="7 College Road" minLength="5" maxLength="75" required>
            <label for="city"><i class="fa fa-institution"></i> City: </label>
            <input type="text" id="city" name="city" placeholder="Cork" minLength="2" maxLength="50" required>
            
    <!-- REFERENCE
        Gandy, D. (no date) Fa-Globe · unicode: F0AC · created: V2.0 · categories: Web application icons, fa-globe: Font Awesome Icons. 
        Available at: https://fontawesome.com/v4/icon/globe 
    -->
            <label for="country"><i class="fa fa-globe"></i> Country: </label>
            <input type="text" id="country" name="country" placeholder="Ireland" minLength="2" maxLength="50" onkeydown="return /[a-z]/i.test(event.key)" required>
            <div class="row">
              <div class="col-50">
                <label for="state">State: </label>
                <input type="text" id="state" name="state" placeholder="Cork" minLength="2" maxLength="50" required>
              </div>
            </div>
          </div>         
          
    <!-- Payment div -->
      <div class="col-50">
        <h3>Payment</h3>
            <label for="fname">Accepted Cards:</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
    <!-- REFERENCE 
        Leon GabanLeon Gaban 35.1k109109 gold badges324324 silver badges520520 bronze badges and Kamil KiełczewskiKamil Kiełczewski 81.3k2929 gold badges354354 silver badges328328 bronze badges (1960) How to force input to only allow Alpha Letters?, Stack Overflow. 
        Available at: https://stackoverflow.com/questions/19508183/how-to-force-input-to-only-allow-alpha-letters
    -->
            <label for="cname">Name on Card:</label>
            <input type="text" id="cardName" name="cardname" placeholder="Mr John Doe" minLength="1" maxLength="50" onkeydown="return /[a-z]/i.test(event.key)" required>
            <label for="ccnum">Card Number:</label>
            <input type="number" id="cardNumber" name="cardnumber" placeholder="1111-2222-3333-4444" maxLength="16" required>
            <label for="expmonth">Expiry Month:</label>
            <select>
                <option>January</option>
                <option>February </option>
                <option>March</option>
                <option>April</option>
                <option>May</option>
                <option>June</option>
                <option>July</option>
                <option>August</option>
                <option>September</option>
                <option>October</option>
                <option>November</option>
                <option>December</option>
            </select>
            <div class="row">
              <div class="col-50">
                <label for="expyear">Expiry Year:</label>
                <input type="number" id="expYear" name="expyear" placeholder="2023" maxLength="4" required>
              </div>
              <div class="col-50">
                <label for="cvv">CVV:</label>
                <input type="number" id="cvv" name="cvv" placeholder="123" min="000" max="999" maxLength="3" required>
              </div>
            </div>
          </div>
          
        </div>
          
        <label>
          <input type="checkbox" name="sameadr" class="checkbox"> Shipping address same as billing
        </label>
          
    <!-- Process Order Button -->
        <a href="order.jsp">
            <input type="submit" value="Process Order" class="btn">
        </a>
    
      </form>
    </div>
  </div>

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

