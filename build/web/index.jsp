
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TopAgro</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery-2.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>
            .thumbnail {
                    position: relative;
                }

                .caption {
                    position: absolute;
                    top: 35%;
                    left: 0;
                    width: 100%;
                }
            .caption1 {
                    position: absolute;
                    top: 250%;
                    left: 0;
                    width: 100%;
                }
            .caption2 {
                    position: absolute;
                    top: 500%;
                    left: 0;
                    width: 100%;
                }

        </style>
    </head>
    <body> 
        
        <div style="background-color:white">
            <br>
            <nav class="navbar navbar-default navbar-fixed-top  nav-tabs" style="background-color:#e; height:25">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">
                        <span class="glyphicon glyphicon-home" style="font-size:30px">
                        </span><b style="color:black">TopAgro</b></a>
                      
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#home">About Us</a></li>
                    <li><a href="#prod">Product and Services</a></li>
                    <li><a href="#con">Contact Us</a></li>
                   
                    <li><a href="home.jsp">Let's Proceed</a></li>
                </ul>

            </nav>
            <br>
            <div class="page-header text-center">
                <img src="images/img2.png" alt="TopAgro" class="img-rounded" height="80" width="120" style="float:left">
                <h1 style="color:purple; font-size:3em;">
                TopAgro&nbsp;<small style="color:black"><i>Improving farmers Income</i></small></h1>
            </div>
  
                <div class="text-center" id="home">
                         <img src="images/farm2.jpg" class="img-responsive" alt="farm" width="1550" height="200">
                        <div class="caption">
                            <p style="font-size:50px; color:white; margin-top:10%">Our Mission is to Simplify the Agri-Business Experience for Farmers in Rural India.</p>
                            <h4 class="btn-home"><a href="#about1">Learn More</a></h4>
                        </div>
                </div>
                <br><br>
            <section  id="about1">
                <div class="container content">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2><big class="green">About</big><br>&nbsp; <span style="color:#007036;">Top</span><span style="color:#9D231F;">Agro</span></h2>
                            <p class="lead color-grey"><span class="highlight">"Improving Farmers Income"</span></p>
                        </div>

                        <div class="jumbotron col-sm-12" data-wow-delay="0.4s">
                            
                                 <div class="col-sm-12" data-wow-delay="0.4s">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TopAgro is basically project of Agriculture Marketing for encouraging farmers by improving their income and maintaining stability of farm produce in market .In the absence of sound marketing facilities, the farmers have to depend upon local traders and middlemen for the disposal of their farm produce which is sold at throw away price.</p>

                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;So, TopAgro provides service for farmers to sell their produce to whomever they like at their expected price. At TopAgro we are creating a centralized platform for farmers, vendors, middlemen, bulk buyers to buy and sell the farm produce at justified rate. Leading to bring transparency, better price discovery & timely agriculture market.</p>

                        </div>
                        </div>
                    </div>
                    
                </div>
            </section>
              
            <div id="prod">
                <div class="text-center">
                             <img src="images/prod2.jpg" class="img-responsive" alt="farm" width="1550" height="500">
                            <div class="caption1">

                                <p style="font-size:50px; color:white; margin-top:10%">Products & Services</p>
                                <h4 class="btn-home"><a href="#prodserv">Learn More</a></h4>
                            </div>
                </div>
            </div>
            <div  id="prodserv">
            <section>
                <div class="container content">
                    
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2><big class="green">Product & Services</big><br>&nbsp; <span style="color:#007036;">Top</span><span style="color:#9D231F;">Agro</span></h2>
                            <p class="lead color-grey"><span class="highlight">"Improving Farmers Income"</span></p>
                        </div> 
                    </div>
                    <div class="jumbotron">
                        <ul type="circle" class="list-group" style="font-size:1.5em" >
                          <li class="list-group-item">1. Empowering farmers by improving their income </li>
                          <li class="list-group-item">2. Online Auction for vendors across district/state</li>
                          <li class="list-group-item">3. Transferring the produce where there is the shortage of food. </li>
                          <li class="list-group-item"> 4. Providing platform for Vendors to buy produce which is not available in their region. </li>
                          
                        </ul>
                   </div>
                   
                    
                </div>
            </section>
                
            </div>
            
            
            <div class="text-center" id="con">
                         <img src="images/prod.jpg" class="img-responsive" alt="farm" width="1550" height="500">
                        <div class="caption2">
                            
                            <p style="font-size:50px; color:white; margin-top:10%">Contact Us...!</p>
                            <h4 class="btn-home"><a href="#con1">Learn More</a></h4>
                        </div>
            </div>
            <section id="con1">
                <div class="container content">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2><big class="green">Address & Contact</big><br>&nbsp; <span style="color:#007036;">Top</span><span style="color:#9D231F;">Agro</span></h2>
                            <p class="lead color-grey"><span class="highlight">"Improving Farmers Income"</span></p>
                        </div> 
                    </div>
                    <div class="jumbotron">
                    <div class="row">       
                        <div class="col-sm-1 col-md-4">
                            <div class="thumbnail">
                            <img src="images/shubham.jpg" class="img-circle" alt="farm" width="200" height="200" >
                        
                              <div class="caption"><br><br><br><br><br><br>
                                <h3>Pankaj</h3>
                                 <p><small>Email:pankajdhande79@gmail.com</small></p>
                              </div>
                            </div>
                        </div>
                    
                        <div class="col-sm-1 col-md-4">
                        <div class="thumbnail">
                        <img src="images/snehal.jpg" class="img-circle" alt="farm" width="200" height="200" >
                        
                        <div class="caption"><br><br><br><br><br><br><br>
                            <h3>Ravi</h3>
                              <p><small>Email:choudhariravi159@gmail.com</small></p>
                          </div>
                        </div>
                        <%--     <div class="col-sm-1 col-md-4">
                        <div class="thumbnail">
                        <img src="images/snehal.jpg" class="img-circle" alt="farm" width="200" height="200" >
                        
                          <div class="caption"><br><br><br><br><br>
                            <h3>Snehal</h3>
                              <p><small>Email:snehalb5191@gmail.com</small></p>
                          </div>
                        </div>
                     </div>--%>
                </div>
                        
            </div>

                </div>
            </section>
        </div>
    <footer class="text-center footer">TopAgro <i>improvin Farmers Income</i> &copy; 2016, All rights reserved</footer>
   
    </body>
</html>
        
        

