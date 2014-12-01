<!DOCTYPE html>
<%@page import="com.icofsoftware.service.AlumniService"%>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*,java.util.*" %>
<% 
Alumni al = AlumniService.getAlumniById(((UserBean)session.getAttribute("user")).getId());
%>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>Edit</title>
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
                        <div class="panel <% if(request.getParameter("type") == null){ out.print("panel-default"); } else if(request.getParameter("type").equals("2")){ out.print("panel-success"); } else if(request.getParameter("type").equals("1")){out.print("panel-danger"); } %>" style="width:100%" >
                           <div class="panel-heading" > <h3> <% if(request.getParameter("type") == null){ out.print("Profile Edit"); } else if(request.getParameter("type").equals("2")){ out.print("Update Success!"); } else if(request.getParameter("type").equals("1")){out.print("Update Failed! Please follow the format"); } %></h3></div> 
                            <div class="panel-body">
                            
                            <form role="form" action="/ICOFSOFTWARE/as" method="post" enctype="multipart/form-data">
                              <div class="col-sm-4">
                                
                                  <div class="form-group">
                                    <label for="exampleInputStudentNumber">Student Number</label>
                                    <input type="text" class="form-control" id="studentnumber" value="<%=al.getStuno() %>" disabled="disabled" placeholder="Student Number">
                                  </div>
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
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="country"  value="<%=al.getCurcountry() %> / <%=al.getCurcity() %>"  placeholder="Current Country / City">
                                  </div>
                                  <div class="form-group">
                                    <label for="slkdfieru">I'm Now</label>
                                     <div id="slkdfieru" class="btn-group" data-toggle="buttons">
									  <label  onclick="schoolname.style.display='none'; companyname.style.display='';sorc.value=2"  class="btn btn-default <% if(al.isWork()){out.print("active");} %> ">
									    <input type="radio" name="options" id="option1"> Working
									  </label>
									  <label onclick="companyname.style.display='none'; schoolname.style.display='';sorc.value=1" class="btn btn-default <% if(!al.isWork()){out.print("active");} %>">
									    <input type="radio" name="options" id="option2"> Studying
									  </label>
								    </div>
                                  </div>

                                  <div class="form-group" id="schoolname" <% if(al.isWork()){out.print("style='display:none'");} %> >
                                    <label for="exampleInputPassword2">School Name</label>
                                    <input type="text" style="display:none" name="sorc" value="<% if(al.isWork()) {out.print("2");} else{out.print("1");}%>"></input>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="sname" value="<%=al.getSname() %>" placeholder="School Name">
                                  </div>
                                  <div class="form-group" id="companyname" <% if(!al.isWork()){out.print("style='display:none'");} %>  >
                                    <label for="exampleInputPassword2">Company Name</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="cname"  value="<%=al.getCname() %>" placeholder="Company Name">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword2">Description</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="des"  value="<%=al.getDescription() %>" placeholder="Description">
                                  </div>
                                  <button type="submit" class="btn btn-primary bt-lg">Update Profile</button>
                               
                              </div>
                              <div class="col-sm-4 col-md-offset-1">
                                <img  src="/ICOFSOFTWARE/upload/<%=((UserBean)session.getAttribute("user")).getFilename() %>"  onclick="ffiletext.accept='image/*';ffiletext.click();" style="cursor:pointer;width:150px; height:150px" class="img-thumbnail" alt="MainBuilding Image">
                                <input type="file" id="ffiletext" name="ffiletext" style="display:none" onchange="loadingtext.innerHTML=this.value"></input>
                                <h6 id="loadingtext">Click Image to Change</h6>
                              </div>
                               </form>
                               
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