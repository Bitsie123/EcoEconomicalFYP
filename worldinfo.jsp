<%-- 
    Document   : worldinfo.jsp
    Author     : 119387806
--%>

<!-- REFERENCE 
    Free CSS (2022) Boocic Free Website Template | Free CSS Templates | Free CSS. 
    Available at: https://www.free-css.com/free-css-templates/page282/boocic 
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <!-- basic -->
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
            <title>EcoEconomical World Info Page</title>
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
        
<!-- REFERENCE 
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_scroll_to_top  
-->      
        <!-- Top of Page Button -->     
            <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

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
                                <div class="limit-box">
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
         
        <!-- Style Component -->
         <style>
             .worldtitle {
                 font-size: 40px;
                 text-align: center;
             }
             
             .info {
                 text-align:center;
                 font-size: 20px;
             }
             
             .gastitle {
                 font-size: 40px;
                 text-align: center;
                 color: black;
             }
             
             .trendtitle {
                 font-size: 40px;
                 text-align: center;
                 color: black;
             }
             
             .country {
                 font-size: 40px;
                 text-align: center;
                 color: black;
             }
             
             .piechart1 {
                 text-align: center;
             }
            
             .piechart2 {
                 text-align: center;
             }
             
             .graph {
                 text-align: center;
             }
             
             .countrypie {
                 text-align: center;
             }
             
             .greenhousepie {
                 text-align: center;
             }
             
             .greenhouse {
                 font-size: 40px;
                 text-align: center;
                 color: black;
             }
             
             .graphdiv {
                 padding: 20px;
                 margin-left: 100px;
                 margin-right: 100px;
                 text-align: center;
             }
             
             .countrydiv {
                 padding: 20px;
             }

             .left {
                 text-align: left;
                 padding: 10px;
                 margin-left: 30px;
             }
             
             .right {
                 text-align: right;
                 padding: 10px;
                 margin-right: 30px;
                 margin-left: 30px;
                 background-color: #e8eaed;
             }
            
             .row::after {
                content: "";
                clear: both;
                display: table;
            }
            
            .column {
                float: left;
                width: 33.33%;
                padding: 5px;
            }
            
            /*top of page button*/
            #myBtn {
                display: none;
                position: fixed;
                bottom: 20px;
                right: 30px;
                z-index: 99;
                font-size: 18px;
                background-color: blue;
                color: white;
                cursor: pointer;
                padding: 15px;
                border-radius: 4px;
            }

            #myBtn:hover {
                background-color: #d0d6d9;
            }

            .navLink:hover {
                color: #f0cb3a;
                font-style: italic;
            }
            
            hr {
                width: 1250px;
            }
         </style>
         
    <!-- World Data Information Page -->
    <h1 class="worldtitle"><b><u>World Data Information:</u></b></h1>
        <div class="info">
            
        <!-- Introduction -->
            <p style="color: green; margin-left: 100px; margin-right: 100px;">This page displays global emissions graphs by gas, economic sector, and country. 
                It also depicts current global emissions trends.</p>
            <p style="color: green; margin-left: 100px; margin-right: 100px;">It also depicts Ireland's greenhouse gas emissions and its projected future emissions. 
                This demonstrates how damaging harmful emissions can be to our environment and how the planet requires relief from them.</p>
        <br />
        <ul>   
<!-- REFERENCE
    Chris, K. (2022) Dot symbol – bullet point in HTML unicode, freeCodeCamp.org. freeCodeCamp.org. 
    Available at: https://www.freecodecamp.org/news/dot-symbol-bullet-point-in-html-unicode/ 
-->   
        <!-- Bullet Navigation Tabs to Each Section -->
            <li><a href="#gas" class="navLink">&#x2022; Global Emissions by Gas</a></li>
            <li><a href="#economic" class="navLink">&#x2022; Global Emissions by Economic Sector</a></li>
            <li><a href="#trends" class="navLink">&#x2022; Trends in Global Emissions</a></li>
            <li><a href="#country" class="navLink">&#x2022; Emissions by Country</a></li>
            <li><a href="#greenhouse" class="navLink">&#x2022; Greenhouse Gas Emissions and Projections</a></li>
        </ul>
        </div>        
        <br /><br />
        <hr style="background-color: #f0cb3a;">
       
        
<!-- REFERENCE
    Global Greenhouse Gas Emissions Data (no date) EPA. Environmental Protection Agency. 
    Available at: https://www.epa.gov/ghgemissions/global-greenhouse-gas-emissions-data 
-->       
<!-- Emissions by Gas -->
<h2 class="gastitle" id="gas" style="padding-top: 15px;">Global Emissions by Gas</h2>
    <div class="piechart1" id="piechart">
        <img src="images/gas emissions.png" style="width: 300px; height: 300px;"><br /><br />
    </div>
  
<div>
    <div class="left">
        <p style="font-size: 20px; color: black;" id="co2"><i><u>Carbon Dioxide (Co2) :</u></i></p>
        <p  style="padding-top: 10px;">The primary source of CO2 is the use of fossil fuels. Co2 can also be emitted as a result of direct human-caused impacts on forestry and other land use, 
            such as deforestation, land clearing for agriculture, and soil degradation. Similarly, land can remove CO2 from the atmosphere through reforestation, 
            soil improvement, and other activities.</p>
    </div> <br />
    
    <div class="right">
        <p style="font-size: 20px; color: black;"><i><u>Methane (CH4) :</u></i></p>
        <p style="padding-top: 10px;">CH4 emissions are caused by agricultural activities, waste management, energy use, and biomass burning.</p>
    </div> <br />
    
    <div class="left">
        <p style="font-size: 20px; color: black;"><i><u>Nitrous Oxide (N2O) :</u></i></p>
        <p style="padding-top: 10px;">The primary source of N2O emissions is agricultural activity, such as fertiliser use. N2O is also produced by the combustion of fossil fuels.</p>
    </div> <br />
    
      
    <div class="right">
        <p style="font-size: 20px; color: black;"><i><u>Fluorinated Gases :</u></i></p>
        <p style="padding-top: 10px;">A Emissions of F-gases, which include hydrofluorocarbons (HFCs), perfluorocarbons (PFCs), and sulphur hexafluoride, are caused by industrial processes, 
            refrigeration, and the use of a variety of consumer products (SF6).</p>
    </div> 
</div>
<br /><br />
<hr style="background-color: blue;">
      

<!-- Emissions by Economic Sector -->
<h2 class="gastitle" id="economic" style="padding-top: 15px;">Global Emissions by Economic Sector</h2>

<div class="piechart2" id="piechart">
    <img src="images/economic.png" style="width: 300px; height: 300px;"><br /><br />
</div>
        
<div>
    <div class="left">
        <p style="font-size: 20px; color: black;"><i><u>Electricity and Heat :</u></i></p>
        <p style="padding-top: 10px;">(25% of global greenhouse gas emissions in 2010): The largest single source of global greenhouse gas emissions is the combustion of coal, natural gas, 
            and oil for electricity and heat.</p>
    </div> <br />
    
    <div class="right">
        <p style="font-size: 20px; color: black;"><i><u>Industry :</u></i></p>
        <p style="padding-top: 10px;">(21% of 2010 global greenhouse gas emissions): Greenhouse gas emissions from industry 
           Greenhouse gas emissions from industry are primarily caused by fossil fuels burned on-site at facilities for energy (21% of global greenhouse gas 
           emissions in 2010). This sector also includes emissions from non-energy-consuming chemical, metallurgical, and mineral transformation processes, as well 
           as emissions from waste management activities. (It should be noted that emissions from industrial electricity use are excluded and are instead covered by 
           the Electricity and Heat Production sector.)</p>
    </div> <br />
    
    <div class="left">
        <p style="font-size: 20px; color: black;"><i><u>Agriculture, Forestry and Other Land Use :</u></i></p>
        <p style="padding-top: 10px;">24% of global greenhouse gas emissions in 2010): Agriculture (cultivation of crops and livestock) and deforestation account for the majority of greenhouse 
            gas emissions from this sector. This figure excludes the CO2 that ecosystems remove from the atmosphere by sequestering carbon in biomass, dead organic 
            matter, and soils, which accounts for about 20% of emissions from this sector.</p>
    </div> <br />
    
      
    <div class="right">
        <p style="font-size: 20px; color: black;"><i><u>Transportation :</u></i></p>
        <p style="padding-top: 10px;">(14% of global greenhouse gas emissions in 2010): This sector's greenhouse gas emissions are primarily due to the use of fossil fuels in road, rail, air, and
            maritime transportation. Almost all of the world's transportation energy (95%) is derived from petroleum-based fuels, primarily gasoline and diesel.</p>
    </div> <br />
    
    <div class="left">
        <p style="font-size: 20px; color: black;"><i><u>Buildings :</u></i></p>
        <p style="padding-top: 10px;">(6% of global greenhouse gas emissions in 2010): Greenhouse gas emissions from this sector are caused by onsite energy generation and the combustion of 
            fuels for heating or cooking in homes. (Note: Emissions from building electricity use are excluded and are instead covered by the Electricity and Heat 
            Production sector.)</p>
    </div> <br />
    
    <div class="right">
        <p style="font-size: 20px; color: black;"><i><u>Other Energy :</u></i></p>
        <p style="padding-top: 10px;">(10% of global greenhouse gas emissions in 2010): This source of greenhouse gas emissions includes all emissions from the Energy sector that are not 
            directly related to the production of electricity or heat, such as fuel extraction, refining, processing, and transportation.</p>
    </div> 
</div>
<br /><br />


<!-- Trend in Global Emissions -->
<h2 class="trendtitle" id="trends" style="background-color: #f0cb3a; color: white; padding-top: 15px;">Trends in Global Emissions</h2>
    <div class="graph" style="background-color: #f0cb3a;">
        <img src="images/graph1.png" style="width: 500px; height: 375px;"><br /><br />
    </div>
<div class="graphdiv">
    <p>Since 1900, global carbon emissions from fossil fuels have increased significantly. Co2 emissions have increased by approximately 90% since 1970, 
        with emissions from fossil fuel combustion and industrial processes accounting for approximately 78% of the total increase in greenhouse gas emissions 
        from 1970 to 2011. The second-largest contributors have been agriculture, deforestation, and other land-use changes.</p>
</div><br />


<!-- Emissions by Country -->
<h2 class="country" id="country" style="background-color: #e8eaed; padding-top: 15px;">Emissions by Country</h2>
    <div class="countrypie" style="background-color: #e8eaed;">
        <img src="images/country.png" style="width: 300px; height: 300px;">
        <br />
    </div>
<div class="countrydiv" style="background-color: #e8eaed;">
    <p>China, the United States, the European Union, India, the Russian Federation, and Japan were the top carbon dioxide (CO2) emitters in 2014. CO2 emissions 
        from fossil fuel combustion, cement manufacturing, and gas flaring are all included in these figures. These sources account for a sizable portion of total 
        global CO2 emissions.<p> <br />
    <p style="padding-bottom: 15px;">These estimates exclude emissions and sinks associated with changes in land use. Changes in land use, on the other hand, can have a significant impact: 
        estimates indicate that net global greenhouse gas emissions from agriculture, forestry, and other land use were more than 8 billion metric tonnes of CO2
        equivalent, or about 24% of total global greenhouse gas emissions. [3] Changes in land use associated with human activities absorb CO2 in areas such as the 
        United States and Europe, partially offsetting emissions from deforestation in other regions.</p>
</div><br /><br /><hr style="background-color: yellow;">


<!-- Greenhouse Gas Emissions Ireland -->
<h2 class="greenhouse" id="greenhouse" style="padding-top: 15px;">Greenhouse Gas Emissions Ireland</h2>
<!-- REFERENCE
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_images_side_by_side 
-->
<!-- Images Div -->
<div class="row">
  <div class="column">
    <img src="images/green1.png" style="width: 100%; height: 614px;">
  </div>
  <div class="column">
    <img src="images/green2.png" style="width: 100%; height: 614px;">
  </div>
  <div class="column">
    <img src="images/green3.png" style="width: 100%; height: 614px;">
  </div>
</div>

<!-- REFERENCE 
    W3Schools online HTML editor (no date) W3Schools Online Web Tutorials. 
    Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_scroll_to_top  
-->   
<!-- Scroll to Top of Page Button Function -->
    <script>
            let mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function() {scrollFunction()};

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            }   else {
                mybutton.style.display = "none";
        }
    }

// When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
    }   
    </script>
    
</body>
</html>
