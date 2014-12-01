<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*,java.util.*" %>
<% List<NewsBean> newshome_list = new ArrayList<NewsBean>();
   newshome_list = (ArrayList<NewsBean>)session.getAttribute("NewsCenterInfo_Simple");
%>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>Setting</title>
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
                        <div class="panel <% if(request.getParameter("type") == null){ out.print("panel-default"); } else if(request.getParameter("type").equals("1")){ out.print("panel-danger"); } else if(request.getParameter("type").equals("2")){out.print("panel-success"); } %>" style="width:100%" >
                           <div class="panel-heading" > <h3><% if(request.getParameter("type") == null){ out.print("Account Setting"); } else if(request.getParameter("type").equals("1")){ out.print("Update Failed!"); } else if(request.getParameter("type").equals("2")){out.print("Update Success!"); } %></h3></div> 
                            <div class="panel-body">
                              <div class="col-sm-4 col-md-offset-1">
                                <img src="/ICOFSOFTWARE/upload/<%=((UserBean)session.getAttribute("user")).getFilename() %>" class="img-thumbnail" style="width:200px; height:200px" alt="MainBuilding Image">
                              </div>
                              <div class="col-sm-4 col-md-offset-1">
                                <form role="form" action="/ICOFSOFTWARE/cp" method="post">
                                  <div class="form-group">
                                    <label for="exampleInputStudentNumber">Name</label>
                                    <input type="text" class="form-control" id="studentnumber" disabled=true value="<%=((UserBean)session.getAttribute("user")).getRealname() %>" placeholder="Name">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Password</label>
                                    <input type="password" name="oldp" class="form-control" id="email" placeholder="Current Password">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">New Password</label>
                                    <input type="password" name="newp" class="form-control" id="exampleInputPassword1" placeholder="New Password">
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword2">New Password Again</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Re-enter Password">
                                  </div>
                                  <div>
                                    <label>
                                      <p><h6>If you forget your old password, please go to the register page.</h6></p>
                                    </label>
                                  </div>
                                  <button type="submit" class="btn btn-primary bt-lg">Change Password</button>
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


<!--post modal-->
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã</button>
			Update Status
      </div>
      <div class="modal-body">
          <form class="form center-block">
            <div class="form-group">
              <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div>
          <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
            <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
		  </div>	
      </div>
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