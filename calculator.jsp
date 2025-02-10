<%-- 
    Document   : calculator.jsp
    Author     : 119387806
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<!-- REFERENCE 
    Free CSS (2022) Boocic Free Website Template | Free CSS Templates | Free CSS. 
    Available at: https://www.free-css.com/free-css-templates/page282/boocic 
--> 
    <head>
         <!-- basic -->
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
            <title>EcoEconomical Eco Calculator</title>
            <meta name="keywords" content="">
            <meta name="description" content="">
            <meta name="author" content="">
        <!-- bootstrap css -->
            <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
            <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
            <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
            <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
            <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
            <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <body>
     
    <!-- Style Component -->
        <style>
            .heading {
                text-align: center;
            }
            
            .title {
                font-size: 40px;
                text-align: center; 
            }  
            
            input {
                width: 80px;
            }
            
            p {
                color: #f0cb3a;
                font-style: italic;
                padding: 2px;
            }
            
            .btn {
                color: white;
                width: 120px;
                background-color: #f0cb3a;
                padding: 10px;
            }
            
            .btn:hover {
                color: blue;
                font-weight: bold;
                font-style: italic;               
    /* REFERENCE
        W3Schools (no date) Color gradient, Colors Gradient. 
        Available at: https://www.w3schools.com/colors/colors_gradient.asp 
    */
                background: linear-gradient(to bottom right, #f0cb3a 40%, #ffffcc 117%);
            }
            
            td {
                color: green;
                padding: 8px;
                text-align: left;
            }
            
            .result {
                width: 120px;
                text-align: center;
    /* REFERENCE 
        W3Schools (no date) CSS Rounded Corners, CSS Rounded corners. 
        Available at: https://www.w3schools.com/css/css3_borders.asp
    */
                border-radius: 12px;
                border: 1px solid black;
            }
            
            .carbonIntro {
                font-style: normal;
                font-size: 13.5px;
                margin-left: 30px;
                color: blue;
            }
        </style>
        
      <!-- header -->
        <header>
          <!-- header inner -->
            <div class="header">
                <div class="container" style="margin-left: 5px;">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo"> <a href="#">EcoEconomical</a> </div>
                                </div>
                            </div>
                        </div>
                        
                    <!-- Navigation bar -->
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area" style="width: 1000px;">
                                <div>
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li> <a href="index.jsp">Home</a> </li>
                                            <li> <a href="products.jsp">Products</a> </li>
                                            <li> <a href="cart.jsp">Cart</a> </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- end header -->
        </header><br /><br /> 
        
  <!-- Calculator Page Heading -->
    <div class="heading">
        <h1 class="title"><b><u>Eco Calculator:</u></b></h1>
          <p style="color: green;">Please enter the information below to calculate your Carbon Footprint as well as your Electricity costs.</p>
          <p style="color: green;">The majority of the information can be found on your most recent electricity bill.</p>
    </div>    
  
  
<form>
<!-- Carbon Footprint Section -->
  <h2 style="margin-left: 30px;"><u>Carbon Footprint [per month]</u></h2>
     <div id="carbon">
         <p class="carbonIntro">Enter your energy consumption for each type and click the <i>Calculate</i> button.</p>
<!-- REFERENCE 
    Carbon Footprint Ltd using RADsite CMS (https://www.radsite.co.uk/) (no date) Carbon calculator, Carbon Footprint Calculator. 
    Available at: https://www.carbonfootprint.com/calculator.aspx  
-->
      <!-- Electricity Div -->
        <div class="column" style="margin-left: 60px; float:left">
            <p>Electricity :</p>           
            
    <!-- REFERENCE 
        Benjamin, M. (1962) Allow 2 decimal places in , Stack Overflow. 
        Available at: https://stackoverflow.com/questions/34057595/allow-2-decimal-places-in-input-type-number           
    -->
            <input  type="number" id="electricity" min="0" max="1000" step="any" maxLength="6">
            <p>kWh at a factor of </p>
            <input type="number" id="factor" min="0" max="1000" step="any" maxLength="6">
            <p>kgCO2e/kWh.</p>
        </div> 
     
    
      <!-- Gas Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Natural Gas :</p>
            <input type="number" id="gas" min="0" max="1000" step="any" maxLength="6">
            <select id="gasCombo">
                <option value="1">kWh</option>
                
    <!-- REFERENCE 
        Joe Sexton Joe is the creator of Inch Calculator and has over 20 years of experience in engineering and construction. He holds several degrees and certifications. Full bio (2022) Kilowatt-hours to therms conversion, Inch Calculator. 
        Available at: https://www.inchcalculator.com/convert/kilowatt-hour-to-therm
    -->
                <option value="0.034121">therms</option>
            </select>
        </div>
    
      <!-- Oil Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Heating Oil :</p>
            <input type="number" id="oil" min="0" max="1000" step="any" maxLength="6">
            <select id="oilCombo">
                <option value="1">kWh</option>
                
    <!-- REFERENCE 
        Administrator (2022) LPG gas unit conversion values: Kg, litres, MJ, kwh &amp; m³, ELGAS. 
        Available at: https://www.elgas.com.au/blog/389-lpg-conversions-kg-litres-mj-kwh-and-m3/#:~:text=Convert%20LPG%20kWh%20to%20litres%3A%201%20kWh%20%3D%200.145%20L%20of%20LPG 
    -->
                <option value="0.145">litres</option>
                
    <!-- REFERENCE 
        ConvertUnits (no date) Convert kwh to ton - conversion of measurement units, unit conversion. 
        Available at: https://www.convertunits.com/from/kWh/to/ton
    -->
                <option value="0.0008604206500956">metric Tons</option>
                
    <!-- REFERENCE 
        U.S Department of Energy (no date) Fuel conversion factors to gasoline gallon equivalents, State &amp; Alternative Fuel Provider Fleets: Fuel Conversion Factors to Gasoline Gallon Equivalents. 
        Available at: https://epact.energy.gov/fuel-conversion-factors         
    -->
                <option value="0.031">US gallons</option>
            </select>
        </div>
    
      <!-- Coal Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Coal :</p>
            <input type="number" id="coal" min="0" max="1000" step="any" maxLength="6">
            <select id="coalCombo">
                <option value="1">kWh</option>
                <option value="0.0008604206500956">metric Tons</option>
            </select>
        </div>
      
      <!-- LPG Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>LPG (Liquid Petroleum Gas) :</p>
            <input type="number" id="lpg" min="0" max="1000" step="any" maxLength="6">
            <select id="lpgCombo">
                <option value="1">kWh</option>
                <option value="0.145">litres</option>
                <option value="0.0008604206500956">metric Tons</option>
                <option value="0.031">US gallons</option>
            </select>
        </div>
    
      <!-- Propane Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Propane :</p>
            <input type="number" id="propane" min="0" max="1000" step="any" maxLength="6">
            <select id="propaneCombo">
                <option value="1">litres</option>
                
    <!-- REFERENCE 
        Convert liters to gallons (no date) UnitConverters.net. 
        Available at: https://www.unitconverters.net/volume/liters-to-gallons.htm 
    -->
                <option value="0.2641720524">US gallons</option>
            </select>
        </div>
    </div> <br /><br /><br /><br /><br /><br />       
      
<!-- Electricity Section -->
    <h2 style="margin-left: 30px;"><u>Electricity & Appliance Consumption</u></h2>
    <div id="electricity" style="text-align: center;">
        
<!-- REFERENCE
    RapidTables (no date) Energy Cost Calculator, Energy cost calculator. 
    Available at: https://www.rapidtables.com/calc/electric/energy-cost-calculator.html 
-->
      <!-- Country Div -->
        <div class="column" style="margin-left: 60px; float:left;">
            <p>Select Country :</p>
            <select id="countryCombo" style="height: 30px;">
    <!-- REFERENCE
        Published by Statista Research Department and 3, M. (2023) Residential Electricity Prices Worldwide 2022, Statista. 
        Available at: https://www.statista.com/statistics/263492/electricity-prices-in-selected-countries/ 
    -->
          <!-- kWh Value in Euro -->
                <option value="0.31">Ireland</option>
                <option value="0.44">UK</option>
                <option value="0.17">US</option>
                <option value="0.20">France</option>
                <option value="0.43">Italy</option>
                <option value="0.35">Spain</option>
                <option value="0.49">Germany</option>
                <option value="0.50">Denmark</option>
            </select>
        </div> 
        
    <!-- Appliances Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Appliance :</p>
            
    <!-- REFERENCE 
        Moloney, E. (2021) Carbon Footprint 101: The household appliances that use the most energy and cost you the most money, independent. Independent.ie. 
        Available at: https://www.independent.ie/news/carbon-footprint-101-the-household-appliances-that-use-the-most-energy-and-cost-you-the-most-money-40755164.html
               
        Hunter, A. and Poljak, M. (2023) How much power (electricity) does a toaster use?, Home Hacker DIY. 
        Available at: https://www.homehackerdiy.com/how-much-power-electricity-does-a-toaster-use/
    -->
        <!-- kWh Value in Hours (minimum value) -->
            <select id="applianceCombo" style="height: 30px;">
                <option value="1.16667">Dishwasher</option>
                <option value="1.16667">Washing Machine</option>
                <option value="0.333333">Kettle</option>
                <option value="6">Radiator</option>
                <option value="0.333333">Microwave</option>
                <option value="0.333333">Oven</option>
                <option value="0.333333">Stove</option>
                <option value="10">Light bulb</option>
                <option value="0.333333">Clothes Dryer</option>
                <option value="1">Air Conditioner</option>
                <option value="4">Laptop/Computer</option>
                <option value="0.833333">Games Console</option>
                <option value="4">Television</option>
                <option value="0.5">Toaster</option>
                <option value="1.16667">Water Heater</option>
            </select>
        </div>
    
      <!-- Power Consumption Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Power Consumption :</p>
            <input type="number" id="power" min="0" max="1000" step="any" maxLength="6">
            <select id="powerCombo">
                <option value="1">kWh (kWh)</option>
                <option value="1000">Watts (W)</option>
            </select>
        </div>
    
      <!-- Hours of Use per day Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Hours of Use Per Day :</p>
            <input type="number" id="hourDay" min="0" max="1000" step="any" maxLength="6">
        </div>
      
      <!-- Energy Consumed Per Day Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>Energy Consumed Per Day :</p>
            <input type="number" id="energyDay" min="0" max="1000" step="any" maxLength="6">
        </div>
    
      <!-- 1 kilowatt-hour (kWh) cost Div -->
        <div class="column" style="margin-left: 60px; float: left;">
            <p>1 kilowatt-hour (kWh) cost [cent] :</p>
            <input type="number" id="cost" min="0" max="1000" step="any" maxLength="6">
        </div>
    </div> <br /><br /><br /><br />
  
    
<!-- REFERENCE 
    Mr. Web Designer (2022) Maxlength attribute not working for input type = number in HTML? here's the Javascript solution!, YouTube. YouTube. 
    Available at: https://www.youtube.com/watch?v=DDUdZNCuwtU
-->
<!-- Input Box Validation (JavaScript Function) -->
    <script>
        document.querySelectorAll('input[type="number"]').forEach(input =>{
            input.oninput = () =>{
                if(input.value.length > input.maxLength) input.value = input.value.slice(0, input.maxLength);
            };
        });
    
/* REFERENCE
    Techbrood (no date) Input text maxlength property, Input Text maxLength Property | JS Reference, DOM Reference | TechbrooD.com. 
    Available at: https://techbrood.com/en/jsref?p=prop-text-maxlength
*/
        document.getElementById("totalFootprint").maxLength = "8";
        document.getElementById("applianceEmission").maxLength = "8";
        document.getElementById("costPerDay").maxLength = "5";
        document.getElementById("costPerMonth").maxLength = "5";
        document.getElementById("costPerYear").maxLength = "5";
    </script>
    
    
<!-- Button Div -->
    <div style="text-align: center;">
        <input type="button" value="Calculate" onclick="calculate()" class="btn" href="#results">
        <input type="reset" value="Reset" class="btn">
    </div> <br />   
  
<!-- Results Table Div -->  
  <div id="results">
    <table style="margin-left: auto; margin-right: auto;">
        <!-- Carbon Footprint -->
            <tr>
                <td>Total House Footprint:</td>
                <td><input id="totalFootprint" type="number" class="result" readonly="readonly" step="any" maxLength="8"></td>
                <td>tonnes of Co2e Per Year</td>
            </tr>
            <tr>
                <td>Biggest Contributor:</td>
                <td><input id="biggestContributor" type="text" class="result" readonly="readonly"></td>
            </tr>
            <tr>
                <td>Appliance Emission:</td>
                <td><input id="applianceEmission" type="number" class="result" readonly="readonly" step="any" maxLength="8"></td>
                <td>kgs of Co2e Per Hour</td>
            </tr>

        <!-- Appliance Cost -->
             <tr>
                <td>Energy Cost Per Day:</td>
                <td><input id="costPerDay" type="number" class="result" readonly="readonly" step="any" maxLength="8"></td>
            </tr>
            <tr>
                <td>Energy Cost Per Month:</td>
                <td><input id="costPerMonth" type="number" class="result" readonly="readonly" step="any" maxLength="8"></td>
            </tr>
            <tr>
                <td>Energy Cost Per Year:</td>
                <td><input id="costPerYear" type="number" class="result" readonly="readonly" step="any" maxLength="8"></td>
            </tr>
    </table>
      <br />
  </div>
</form>

<!-- JavaScript Functions -->
<script>
/* REFERENCE
    Jason ShaftJason Shaft 6511 gold badge22 silver badges88 bronze badges and Kevin PimentelKevin Pimentel 2 (1965) Javascript - multiply two input fields together and display, Stack Overflow. 
    Available at: https://stackoverflow.com/questions/48820896/javascript-multiply-two-input-fields-together-and-display
*/
   function calculate() {
     // Carbon Footprint Functions:
        // Electricity Function
            var electricity = parseInt(document.getElementById("electricity").value);
            var factor = parseInt(document.getElementById("factor").value);
            
        // Electricity Result
            var result1 = electricity * factor;           
          
        // Gas Function
            var gas = document.getElementById("gas").value;
            var gasCombo = document.getElementById("gasCombo").value;
            
        // Gas Result
            var result2 = gas * gasCombo;   
            
        // Heating Oil Function
            var oil = document.getElementById("oil").value;
            var oilCombo = document.getElementById("oilCombo").value;
            
        // Heating Oil Result
            var result3 = oil * oilCombo;   
            
        // Coal Function
            var coal = document.getElementById("coal").value;
            var coalCombo = document.getElementById("coalCombo").value;
           
        // Coal Result
            var result4 = coal * coalCombo;
            
        // LPG Function
            var lpg = document.getElementById("lpg").value;
            var lpgCombo = document.getElementById("lpgCombo").value;
           
        // LPG Result
            var result5 = lpg * lpgCombo;    
          
        // Propane Function
            var propane = document.getElementById("propane").value;
            var propaneCombo = document.getElementById("propaneCombo").value;
           
        // Propane Result
            var result6 = propane * propaneCombo;
  
            
/* REFERENCE
    Just Energy (2022) Calculating your carbon footprint, Just Energy. 
    Available at: https://justenergy.com/blog/how-to-calculate-your-carbon-footprint/ 
*/
        // Footprint Result Output (adding all results together)
            var result7 = result1 + result2 + result3 + result4 + result5 + result6;
          
            document.getElementById("totalFootprint").value = result7;
    
  
/* REFERENCE
    Www.techonthenet.com (no date) JavaScript: Math max() function, Javascript: Math Max() function. 
    Available at: https://www.techonthenet.com/js/math_max.php
*/
        // Finding Biggest Contributor Function:
            var maxResult = Math.max(result1, result2, result3, result4, result5, result6);

/* REFERENCE
    W3Schools (no date) JavaScript if, else, and else if, JavaScript if else else if. 
    Available at: https://www.w3schools.com/js/js_if_else.asp
*/
        if (maxResult === result1) {
            document.getElementById("biggestContributor").value = "Electricity";
        } else if (maxResult === result2) {
            document.getElementById("biggestContributor").value = "Gas";
        } else if (maxResult === result3) {
            document.getElementById("biggestContributor").value = "Oil";
        } else if (maxResult === result4) {
            document.getElementById("biggestContributor").value = "Coal";
        } else if (maxResult === result5) {
            document.getElementById("biggestContributor").value = "LPG";
        } else if (maxResult === result6) {
            document.getElementById("biggestContributor").value = "Propane";
        } else {
            document.getElementById("biggestContributor").value = "0";
}


  // Electricity Cost and Appliance Emission Functions:
            var countryCombo = document.getElementById("countryCombo").value;
            var applianceCombo = document.getElementById("applianceCombo").value;
            var power = document.getElementById("power").value;
            var powerCombo = document.getElementById("powerCombo").value;
            var hourDay = document.getElementById("hourDay").value;
            var energyDay = document.getElementById("energyDay").value;
            var cost = document.getElementById("cost").value;       
           
/* REFERENCE
    RapidTables (no date) Energy Cost Calculator, Energy cost calculator. 
    Available at: https://www.rapidtables.com/calc/electric/energy-cost-calculator.html 
*/
        // Appliance Emission Function:
          // kWh result
            var res1 = (countryCombo * applianceCombo) * (power * powerCombo); 
            
    /* REFERENCE
        Carbon and usage calculation methods (2022) Carbonfund. 
        Available at: https://carbonfund.org/calculation-methods/ 
    */
          // kgs of Co2 result
            var applianceResult = res1 * 0.371;
            
            document.getElementById("applianceEmission").value = applianceResult;
            
        // Electricity Cost Function
            var res2 = ((power * powerCombo) * energyDay) * (hourDay / 1000); 
            
            var res3 = res2 * (cost / 100);
            
            document.getElementById("costPerDay").value = res3;
            
        // Cost Per Month
            var res4 = res3 * 30;
            document.getElementById("costPerMonth").value = res4;
            
        // Cost Per Year
            var res5 = res4 * 12;
            document.getElementById("costPerYear").value = res5;
           
    /* REFERENCE 
        W3Schools (no date) HTML dom element scrollintoview, HTML DOM Element scrollIntoView() Method. 
        Available at: https://www.w3schools.com/jsref/met_element_scrollintoview.asp 
    */
        // Scroll to Results Table
            const resultsDiv = document.getElementById('results');
            resultsDiv.scrollIntoView();
    }  
</script>

</body>
</html>