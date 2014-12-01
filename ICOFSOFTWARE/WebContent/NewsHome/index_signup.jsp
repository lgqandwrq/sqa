<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*" %>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>SignUp</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet"> 

        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
  
        <link rel="stylesheet" type="text/css" href="/ICOFSOFTWARE/bootstrap-3.1.1-dist/style.css" />
        
    </head>
    
    <!-- HTML code from Bootply.com editor -->
    
    <body  >
        
    <div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-12 col-xs-12" id="main">
                
                <!-- top nav -->
                <div class="navbar navbar-blue navbar-static-top">  
                      <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                          <span class="sr-only">Toggle</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button>
                        <a href="/ICOFSOFTWARE" class="navbar-brand logo" style="width: 190px">International Class</a>
                    </div>
                    <nav class="collapse navbar-collapse" role="navigation">
                    <!--  <ul class="nav navbar-nav">
                       <li>
                         <a href="#"><i class="glyphicon glyphicon-home"></i> Home</a>
                       </li>
                     </ul> -->
                     <div class="nav navbar-nav navbar-right">
                      
                       <form class="navbar-form" role="form" action="/ICOFSOFTWARE/LoginServlet" method="post">
                           <div class="input-group input-group-sm" >
                              <table>
                                <tbody>
                                  <tr>
                                    <td>
                                      <label class="sr-only" for="useremail">Email address</label>
                                      <input type="email" name="useremail" class="form-control" id="useremail" placeholder="Enter email" >
                                    </td>
                                    <td>
                                      <label class="sr-only" for="userpwd">Password</label>
                                      <input type="password" name="userpwd" class="form-control" id="userpwd" placeholder="Password">
                                    </td>
                                    <td style="vertical-align: middle">
                                       <button type="submit" class="btn btn-default" name="submit" value="login">Sign in</button>
                                    </td>
                                    
                                  </tr>
                                  <tr>
                                      <td>
                                        <div class="checkbox">
                                          <label>
                                            <input type="checkbox"> Remember me
                                          </label>
                                        </div>
                                      </td>
                                  </tr>
                                </tbody>
                              </table>
                           </div>
                       </form>
                       
                     </div>
                    </nav>
                 </div>
                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-8 col-md-offset-2" >
                      
                        <!-- content -->
                        <div class="panel <% if(request.getParameter("regpage_type") == null){ out.print("panel-default"); } else if(request.getParameter("regpage_type").equals("1")){ out.print("panel-success"); } else if(request.getParameter("regpage_type").equals("2")){out.print("panel-danger"); } %>" style="width:100%" >
                           <div class="panel-heading" > <h3> <% if(request.getParameter("regpage_type") == null){ out.print("Activation"); } else if(request.getParameter("regpage_type").equals("1")){ out.print("Activate Success"); } else if(request.getParameter("regpage_type").equals("2")){out.print("Authentication Denied"); } %></h3></div> 
                            <div class="panel-body">
                              <div class="col-sm-4 col-md-offset-1">
                                <img src="img/MainBuilding3.jpeg" class="img-thumbnail" alt="MainBuilding Image">
                              </div>
                              <div class="col-sm-4 col-md-offset-1">
                                <form role="form" action="/ICOFSOFTWARE/LoginServlet" method="post">
                                  <div class="form-group">
                                    <label for="reg_username">Student Number</label>
                                    <input type="text" class="form-control" id="reg_username" name="reg_username" placeholder="Enter Student Number">
                                  </div>
                                  <div class="form-group">
                                    <label for="reg_realname">Realname</label>
                                    <input type="text" class="form-control" id="reg_realname" name="reg_realname" placeholder="Enter Realname">
                                  </div>
                                  <div class="form-group">
                                    <label for="reg_email">Email</label>
                                    <input type="email" class="form-control" id="reg_email" name="reg_email" placeholder="Enter Email">
                                  </div>
                                  <div class="form-group">
                                    <label for="reg_pwd">Password</label>
                                    <input type="password" class="form-control" id="reg_pwd" name="reg_pwd" placeholder="New Password">
                                  </div>
                                  <div>
                                    <label>
                                      <p><h6>By clicking Sign Up, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</h6></p>
                                    </label>
                                  </div>
                                  <button type="submit" class="btn btn-primary bt-lg" name="submit" value="signup">Sign Up</button>
                                </form>
                              </div>
                            </div>
                        </div>                      
                                      
                      
                      <hr>
                      
                      <h5 class="text-center">
                      <a href="#" target="ext">©Copyright Created by J.K. 2014</a>
                      </h5>
                        
                      <hr>
                      
                      
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
          
        </div>
    </div>
</div>



        

        <script type='text/javascript' src="js/jquery.min.js"></script>

        <script type='text/javascript' src="js/bootstrap.min.js"></script>
        
        <!-- JavaScript jQuery code from Bootply.com editor -->
        
        <script type='text/javascript'>
        
        $(document).ready(function() {
        
            /* off-canvas sidebar toggle */

$('[data-toggle=offcanvas]').click(function() {
    $(this).toggleClass('visible-xs text-center');
    $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
    $('.row-offcanvas').toggleClass('active');
    $('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
    $('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
    $('#btnShow').toggle();
});
        
        });
        
        </script>
    </body>
</html>