<%-- 
    Document   : availableproduce
    Created on : Feb 12, 2023, 12:36:51 AM
    Author     : 91930
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="src.dbconnect.DerbyDBConnect" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                   <nav class="navbar navbar-inverse navbar-fixed-top ">
                <div class="navbar-header">
                    <a class="navbar-brand" href="afterlogin2.jsp">
                        <span class="glyphicon glyphicon-home" style="font-size:40px">
                        </span><b style="color:white">TopAgro</b></a>
                        &nbsp;&nbsp; 
                </div>
                <ul class="nav navbar-nav navbar-right">
                    
                     <li class="active"> 
                        <div style="color:yellow; font-size:30px; col"> 
                             Welcome ${username}
                         </div>  
                      </li>
                      <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <li class="active"><a href="afterlogin2.jsp">Home</a></li>
                    <!-- <li><a href="logout.php">logout</a></li>-->
                        &nbsp;&nbsp;&nbsp;
                </ul>

            </nav>
            <br>
            <div class="page-header text-center">
                <img src="images/img2.png" alt="TopAgro" class="img-rounded" height="100"   width="130" style="float:left">
                <h1 style="color:purple; font-size:4em;">
                TopAgro&nbsp;<small style="color:black"><i>Improving farmers Income</i></small></h1>
            </div>


            <table class="table table-hover table-bordered" style="border:4px ridge">
                <tr>
                          <th class="info"> Produce Name </th> 
                          <th class="info"> Quality </th> 
                          <th class="info"> Quantity Available </th> 
                          <th class="info"> Market Price (Per Kg)</th> 
                </tr> 
                        
                    <% ResultSet rs = (ResultSet) request.getAttribute("avData");
                    while ( rs.next()){ %>
                    <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getString(4) %></td>
             

                   
                    </tr>
                     <%}%>
                                 
 

            </table>

           <button type="button" class="btn btn-info" data-target="#order" data-toggle="collapse" >
           Place Order Now</button>
           <%
                               
                    DerbyDBConnect dbcon = new DerbyDBConnect();
                    if(dbcon.getConnection() == null)
                        dbcon.setupConnection();

            ResultSet rs1=dbcon.fetchValueFromTable("select fname,lname,mobilenumber,area from vendor where uname='"+ session.getAttribute("uname")+"'");
           while ( rs1.next()){ 
           %>
                <form class="collapse"  method="post" action="VendorOrderController" name="orderform" id="order" >
                <div class="row">

                    <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3" style="background-color:#eee;margin-bottom:70px" >
                        <div class="page-header">
                            <h1 class="text-center" style="color:blue">Place Orders</h1>
                        </div>
                        
                        <div class="form-group">
                            <label>Name:</label>
                            <%= rs1.getString(1)+" "+rs1.getString(2) %>
                        </div>

                        <div class="form-group">
                            <label>Mobile Number:</label>
                           <%= rs1.getString(3) %>
                        </div>
                        <div class="form-group">
                            <label>Address:</label>
                            <%= rs1.getString(4) %>
                        </div>
                            <%}%>

                        <div class="form-group col-sm-4 col-md-2 input-group">
                            <label>Produce:</label>
                             <select class="form-control" style="width:200px;" name="productname">
                                    <option value="Wheat">Wheat</option>
                                    <option value="Rice">Rice</option>
                                    <option value="Bajara">Bajara</option>
                                    <option value="Matar">Matar</option>
                                    <option value="Makka">Makka</option>
                                    <option value="Jawar">Jawar</option>
                                    <option value="Onion">Onion</option>
                                    <option value="Tomato">Tomato</option>
            1                       <option value="Chilly">Chilly</option>
                                    <option value="Lady Finger">Lady finger</option>
                                    <option value="Carrot">Carrot</option>
                                    <option value="White Carrot">White Carrot</option>
                                    <option value="Potato">Potato</option>
                                    <option value="Brinjal">Brinjal</option>
                                </select>    
                        </div>
                  

                        <div class="form-group">
                            <label>Quantity:</label>
                             <div class="col-sm-4 col-md-2 input-group">
                            <input type="text" class="form-control" style="width:200px;" placeholder="Quantity" name="quantity" required="required">
                            <span class="input-group-addon">Kg</span>
                     
                        </div>
                            <br>
                             <div class="form-group col-sm-4 col-md-2 input-group">
                            <label>Quality::</label>
                                <select class="form-control" style="width:200px;" name="quality">
                                    <option value="Normal">Normal</option>
                                    <option value="Good">Good</option>
                                    <option value="Best">Best</option>
                                </select>
                              </div>      

                        </div>

                       


                        <div class="text-center">
                            <button type="submit" name="ord" class="btn btn-success btn-lg"   >Order Now</button>
                        </div>    
                     
            </form>

    </div>
    </body>
</html>