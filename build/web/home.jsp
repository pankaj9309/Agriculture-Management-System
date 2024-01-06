<%-- 
    Document   : home
    Created on : Feb 11, 2023, 8:27:58 PM
    Author     : 91930
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!Doctype html>
<html>
    <head>
        <title>TopAgro</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery-2.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body> 
        
        <div class="container-fluid">
            <br>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-header">
                    <a class="navbar-brand" href="home.jsp">
                        <span class="glyphicon glyphicon-home" style="font-size:40px">
                        </span><b style="color:white">TopAgro </b></a>
                        &nbsp;&nbsp; 
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li<li><a href="#"></a></li>
                    <li><a href="#"></a></li><li><a href="#"></a></li>
                    <li><a href="#"></a></li><li><a href="#"></a></li>
                     <li><a href="#"></a></li><li><a href="#"></a></li><li><a href="#"></a></li>
                    <li><a href="#"></a></li><li><a href="#"></a></li>
                     <li><a href="#"></a></li><li><a href="#"></a></li>
                   <li><a href="#"></a></li> <li><a href="#"></a></li> <li><a href="#"></a></li> <li><a href="#"></a></li>
                   
                        &nbsp;&nbsp;&nbsp;
                  <c:if test="${loginFailed}"> 
                      <script type='text/javascript'>
                               alert('User Name or Password is incorrect....try again!!!')
                                window.history.back();
                                </script>
                  </c:if>
                 <form class="navbar-form navbar navbar-right"  method="post" action="LoginController">
                        <select class="form-control" style="width:100px;" name="role">
                            <option value="farmer">Farmer</option>
                            <option value="vendor">Vendor</option>
                            <option value="admin">Admin</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <div style="float:right">
                            <div class="row">
                                <div class="form-group">
                                  <input type="text" class="form-control" name="uname" placeholder="Username">
                                   <input type="password" class="form-control" name="pass" placeholder="Password">
                                </div>
                                &nbsp;&nbsp;
                                <button type="submit" class="btn btn-info" name="signin">Sign In</button>
                                <a href="register.jsp" class="btn btn-info">Sign Up</a>
                            </div>
                        <!--    <a href="forgotpass.html"><u>Forgot Password?</u></a>-->
                        </div> 
                    </form>
                </ul>

            </nav>
            <br>
            <div class="page-header text-center">
                <img src="images/img2.png" alt="TopAgro" class="img-rounded" height="100" width="130" style="float:left">
                <h1 style="color:purple; font-size:4em;">
                TopAgro&nbsp;<small style="color:black"><i>Improving farmers Income</i></small></h1>
            </div>
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-2 col-lg-2">
                    <p style="font-size: 20px;"><br><span class="glyphicon glyphicon-leaf" style="font-size: 40px;"></span>The Produce You Can Sell Us ~</p><br>   
                    <a href="#grain" class="btn btn-info" style="width:100%">Grains</a><br><br>
                    <a href="#veg" class="btn btn-info" style="width:100%">Vegetables</a><br><br>
                </div>

                <div class="col-xs-9 col-sm-9 col-md-10 col-lg-10   ">
                      <img src="images/4.jpg" alt="Image" height="550" width="1500">   
                </div> 
            </div>

               <div class="jumbotron" id="grain">
                        <h1>Grains</h1>
                        <p>Your Expectation, Our Responsibility !!!</p>
                </div>
            
           <div>
                <div style="width:1000px; margin:190px; background-color:white; margin-top:50px">
                    <div class="row">
                        <div class="col-sm-2 col-md-3">
                            <div class="thumbnail">
                             <img src="images/Grains/wheat.jpg" class="img-thumbnail" alt="Image"> 
                              <div class="caption">
                                <h3>Wheat</h3>
                              </div>
                            </div>
                        </div>
                    
                        <div class="col-sm-1 col-md-3">
                            <div class="thumbnail">
                               <img src="images/Grains/bajra.jpg" class="img-thumbnail" alt="Image">
                              <div class="caption">
                                <h3>Bajara</h3>
                              </div>
                            </div>
                        </div>
                    
                        
                        <div class="col-sm-1 col-md-3">
                        <div class="thumbnail">
                          <img src="images/Grains/rice.jpg" class="img-thumbnail" alt="Image">
                          <div class="caption">
                            <h3>Rice</h3>

                          </div>
                        </div>
                        </div> 
                        
                </div>
                    
                <div class="row">       
                        <div class="col-sm-1 col-md-3">
                            <div class="thumbnail">
                               <img src="images/Grains/makka.jpg" class="img-thumbnail" alt="Image">
                              <div class="caption">
                                <h3>Makka</h3>

                                
                              </div>
                            </div>
                        </div>
                    
                        <div class="col-sm-1 col-md-3">
                            <div class="thumbnail">
                               <img src="images/Grains/jawar.jpg" class="img-thumbnail" alt="Image">
                              <div class="caption">
                              <h3>Jawar</h3>

                              </div>
                            </div>
                        </div>
                    
                    <div class="col-sm-1 col-md-3">
                        <div class="thumbnail">
                          <img src="images/Grains/matar.jpg" class="img-thumbnail" alt="Image">
                          <div class="caption">
                            <h3>Matar</h3>

                          </div>
                        </div>
                     </div>

                  </div> 
                </div>
                
        </div>

    <div class="jumbotron" id="veg">
                        <h1>Vegetables</h1>
                        <p>Your Expectation, Our Responsibility !!!</p>
                </div>
            
        <div>
                <div style="width:1000px; margin:190px; background-color:white; margin-top:50px">
                    <div class="row">
                        <div class="col-sm-2 col-md-3">
                            <div class="thumbnail">
                             <img src="images/vegetables/onion.jpg" class="img-thumbnail" alt="Image"> 
                              <div class="caption">
                                <h3>Onion</h3>
                           
                              </div>
                            </div>
                        </div>
                    
                        <div class="col-sm-1 col-md-3">
                            <div class="thumbnail">
                               <img src="images/vegetables/chilly.jpg" class="img-thumbnail" alt="Image">
                              <div class="caption">
                                <h3>Chilly</h3>

                              </div>
                            </div>
                        </div>
                    
                        
                        <div class="col-sm-1 col-md-3">
                        <div class="thumbnail">
                          <img src="images/vegetables/Brinjal.jpg" class="img-thumbnail" alt="Image">
                          <div class="caption">
                            <h3>Brinjal</h3>

                          </div>
                        </div>
                        </div> 
                        
                        <div class="col-sm-1 col-md-3">
                        <div class="thumbnail">
                          <img src="images/vegetables/carrot.jpg" class="img-thumbnail" alt="Image">
                          <div class="caption">
                            <h3>Carrot</h3>

                          </div>
                        </div>
                        </div> 
                        
                </div>
                    
                <div class="row">       
                        <div class="col-sm-1 col-md-3">
                            <div class="thumbnail">
                               <img src="images/vegetables/ladifingur.jpg" class="img-thumbnail" alt="Image">
                              <div class="caption">
                                <h3>Lady Finger</h3>

                              </div>
                            </div>
                        </div>
                    
                        <div class="col-sm-1 col-md-3">
                            <div class="thumbnail">
                               <img src="images/vegetables/potato.jpg" class="img-thumbnail" alt="Image">
                              <div class="caption">
                                <h3>Potato</h3>

                              </div>
                            </div>
                        </div>
                    
                    <div class="col-sm-1 col-md-3">
                        <div class="thumbnail">
                          <img src="images/vegetables/tomato.jpg" class="img-thumbnail" alt="Image">
                          <div class="caption">
                            <h3>Tomato</h3>

                          </div>
                        </div>
                     </div>

                    <div class="col-sm-1 col-md-3">
                        <div class="thumbnail">
                          <img src="images/vegetables/whitecarrot.jpg" class="img-thumbnail" alt="Image">
                          <div class="caption">
                            <h3>White Carrot</h3>

                          </div>
                        </div>
                     </div>

                  </div> 
                </div>
                
        </div>
        </div>
        <footer class="text-center footer">TopAgro <i>Improving Farmers Income</i> &copy; 2016, All rights reserved</footer>
    </body>  </html>
