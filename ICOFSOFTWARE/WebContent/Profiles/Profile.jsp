<!DOCTYPE html>
<%@page import="com.icofsoftware.service.AlumniService"%>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*,java.util.*" %>
<% 
String sid = request.getParameter("uid");
int aid = 0;
try{
	aid = Integer.parseInt(sid);
}catch(Exception eme){
	aid = ((UserBean)session.getAttribute("user")).getId();
}
Alumni al = AlumniService.getAlumniById(aid);
%>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>Profile</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="/ICOFSOFTWARE/NewsHome/css/bootstrap.min.css" rel="stylesheet">

        <link href="/ICOFSOFTWARE/NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <link href="/ICOFSOFTWARE/NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- CSS code from Bootply.com editor -->
        <link rel="stylesheet" type="text/css" href="/ICOFSOFTWARE/bootstrap-3.1.1-dist/style.css" />
    </head>
    
    <!-- HTML code from Bootply.com editor -->
    
    <body  >
        
    <div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <%@include file="../Template/SideBarNews.html" %>
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	 <%@include file="../Template/TopNavNews.html" %>
                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-9">
                        <div class="panel panel-default" style="width:100%" >
                           <div class="panel-heading" > <h3>Profile</h3></div> 
                            <div class="panel-body">
                              <div class="col-sm-4">
                                <form role="form">
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" class="form-control" value="<%=al.getName() %>" disabled="disabled"  id="email" placeholder="Name">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Email</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" value="<%=al.getEmail() %>" disabled="disabled"  placeholder="Email">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword2">Class Type / Enroll Year</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1"  value="<%=al.getClasstype() %> / <%=al.getEnrollyear() %>" disabled="disabled" placeholder="Class Type / Enroll Year">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword2">Current Country / City</label>
                                    <input type="text" disabled class="form-control" id="exampleInputPassword1" value="<%=al.getCurcountry() %> / <%=al.getCurcity() %>"  placeholder="Current Country / City">
                                  </div>
                                  <div class="form-group">
                                    <label for="slkdfieru">He/She is Now</label>
                                     <div id="slkdfieru" disabled class="btn-group" data-toggle="buttons">
									  <label  onclick=""  class="btn btn-default <% if(al.isWork()){out.print("active");} %> ">
									    <input type="radio" disabled name="options" id="option1"> Working
									  </label>
									  <label onclick="" class="btn btn-default <% if(!al.isWork()){out.print("active");} %>">
									    <input type="radio" disabled name="options" id="option2"> Studying
									  </label>
								    </div>
                                  </div>

                                  <div class="form-group" id="schoolname" <% if(al.isWork()){out.print("style='display:none'");} %> >
                                    <label for="exampleInputPassword2">School Name</label>
                                    <input type="text" disabled class="form-control" id="exampleInputPassword1" value="<%=al.getSname() %>" placeholder="School Name">
                                  </div>
                                  <div class="form-group" id="companyname" <% if(!al.isWork()){out.print("style='display:none'");} %>  >
                                    <label for="exampleInputPassword2">Company Name</label>
                                    <input type="text" disabled class="form-control" id="exampleInputPassword1"  value="<%=al.getCname() %>" placeholder="Company Name">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword2">Description</label>
                                    <input type="text" disabled class="form-control" id="exampleInputPassword1" value="<%=al.getDescription() %>" placeholder="Description">
                                  </div>
                                </form>
                              </div>
                              <div class="col-sm-4 col-md-offset-1">
                                <img  src="/ICOFSOFTWARE/upload/<%=al.getFilename() %>" style="width:150px; height:150px" class="img-thumbnail" alt="MainBuilding Image">
                                
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
        

        <script type='text/javascript' src="/ICOFSOFTWARE/NewsHome/js/jquery.min.js"></script>

        <script type='text/javascript' src="/ICOFSOFTWARE/NewsHome/js/bootstrap.min.js"></script>







        
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