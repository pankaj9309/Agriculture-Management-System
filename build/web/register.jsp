.<!Doctype html>
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
            <nav class="navbar navbar-inverse navbar-fixed-top" style="height:55px">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">
                        <span class="glyphicon glyphicon-home" style="font-size:35px">
                        </span><b style="color:white">TopAgro</b></a>
                        &nbsp;&nbsp; 
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.jsp">Home</a></li>
                     &nbsp;&nbsp;&nbsp;
                </ul>

            </nav>
            <br>
            <div class="page-header text-center">
                <img src="images/img2.png" alt="TopAgro" class="img-rounded" height="100"   width="130" style="float:left">
                <h1 style="color:purple; font-size:4em;">
                TopAgro&nbsp;<small style="color:black"><i>Improving farmers Income</i></small></h1>
            </div>
            
            <div class="page-header text-center">
                <h1 style="color:black; font-size:4em;">Register</h1>
            </div>
            
    <form id="reg" name="regform" class="container form-horizontal" method="post" action="RegisterController" onsubmit="return validateform()" >
                      <div class="form-group row">
                        <label for="inputname" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-4 col-md-4">
            <input type="text" class="form-control" name ="fname" id="fname" placeholder="First Name" required="required">
                        </div>
                        <div class="col-sm-4 col-md-4">
            <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" required="required">
                        </div>
                      </div>
                
                    <div>    
                        <label for="inputname" class="col-sm-2 control-label">Gender</label>
                        <div class="col-md-10">
                                <div class="radio">
                             <input type="radio" name="gen" id="optionsRadios1" value="male">
                                   Male
                                </div>
                                <div class="radio">
                                    <input type="radio" name="gen" id="optionsRadios2" value="female">
                                    Female
                                </div>
                        </div>
                     </div>
                <br>
                <br><br>
                      <div class="form-group">
                        <label for="inputnumber" class="col-sm-2 control-label">Mobile No. </label>
                        <div class="col-sm-8">
    <input type="text" class="form-control"  name="mob" id="inputnumber" placeholder="Mobile Number" required="required">
                            
                        </div>
                      </div>
                    
                 <div class="form-group">
                        <label for="inputnumber" class="col-sm-2 control-label">Role </label>
                        <div class="col-sm-8">
                          <select class="form-control" name="role" style="width:100px;">
                            <option value="farmer">Farmer</option>
                            <option value="vendor">Vendor</option>
                        </select>
                        </div>
                      </div>
                
                    <div class="form-group">
                        <label for="inputname" class="col-sm-2 control-label">Address</label>
                        <div class="col-sm-8">
                          <textarea class="form-control" rows="3" name="address" required="required"></textarea>
                        </div>
                      </div>
          
                    <div class="form-group">
                        <label for="inputusername" class="col-sm-2 control-label">Username</label>
                        <div class="col-sm-8">
         <input type="text" class="form-control" name="uname" id="inputusername" placeholder="Username" required="required">
                        </div>
                      </div>
                
                      <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-8">
                     <input type="password" class="form-control" name="pass" id="inputPassword" placeholder="Password" required="required">
                        </div>
                      </div>
                    
                    <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">Retype Password</label>
                        <div class="col-sm-8">
            <input type="password" class="form-control" name="retype" id="inputPassword" placeholder="Retype Password" required="required">
                        </div>
                      </div>
                        
                      <div class="form-group row">
                            <div class="col-md-offset-2 col-md-3">
                              <button type="submit" class="btn btn-success" name="submit">Register</button>
                                
                            </div>
                         
                      </div>
                    </form>
        </div>
         <script>
    
            
            function validateform()
            {
                var fname=document.regform.fname.value;
                 var lname=document.regform.lname.value; 
                var password=document.regform.pass.value; 
                 var firstpassword=document.regform.pass.value;  
                  var secondpassword=document.regform.retype.value;   
                  var no=document.regform.mob.value;
                  
              if ((fname==null || fname=="") && (lname==null || lname==""))
                {  
                  alert("Please Enter the Name");  
                  return false;  
                }
              else if(password.length<6){  
                    alert("Password must be at least 6 characters long.");  
                    return false;  
                } 
                else if(no.length<10 || no.length>10){  
                    alert("Mobile number must be 10 digit only.!");  
                    return false;  
                } 
              else if(firstpassword==secondpassword){  
                       return true;  
                  }  
                  else{  
                      alert("password must be same!");  
                      return false;  
                    }  
             }  
            
        </script>
    
            <footer class="text-center footer">TopAgro <i>improvin Farmers Income</i> &copy; 2016, All rights reserved</footer>
    </body> 
    </html>