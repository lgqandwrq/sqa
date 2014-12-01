<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*" %>
<% UserBean admin = new UserBean();
   admin = (UserBean)session.getAttribute("user");
%> 
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>AdminAlumniImport</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="/ICOFSOFTWARE/NewsHome/css/bootstrap.min.css" rel="stylesheet"> 

        <link href="/ICOFSOFTWARE/NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- html editor -->
        <!-- <link rel="stylesheet" type="text/css" href="NewsHome/wysihtml/lib/css/bootstrap.min.css"></link>  -->
    <!--     <link rel="stylesheet" type="text/css" href="NewsHome/wysihtml/lib/css/prettify.css"></link>
        <link rel="stylesheet" type="text/css" href="NewsHome/wysihtml/lib/css/wysiwyg-color.css"></link>
        <link rel="stylesheet" type="text/css" href="NewsHome/wysihtml/src/bootstrap-wysihtml5.css"></link> -->

        <link rel="stylesheet" type="text/css" href="/ICOFSOFTWARE/bootstrap-3.1.1-dist/style.css" />
        <!-- html editor -->
        <!-- CSS code from Bootply.com editor -->
        
    </head>
    
    <!-- HTML code from Bootply.com editor -->
    
    <body  >
        
    <div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <%@include file="../Template/SideBarAdmin.html" %>
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
                <%@include file="../Template/TopNavAdmin.html" %>
                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->
                        <div class="panel <% if(request.getParameter("regpage_type") == null){ out.print("panel-default"); } else if(request.getParameter("regpage_type").equals("1")){ out.print("panel-success"); } else if(request.getParameter("regpage_type").equals("2")){out.print("panel-danger"); } %>" style="width:70%" >
                          <div class="panel-heading" > <h3>Import Alumni 学生信息导入</h3> <h4><% if(request.getParameter("regpage_type") == null){ out.print(""); } else if(request.getParameter("regpage_type").equals("1")){ out.print("Import Success"); } else if(request.getParameter("regpage_type").equals("2")){out.print("Wrong Input! Please Check"); } %></h4></div>
                            <div class="panel-body">
                              <a href="#">发布人：<%=admin.getRealname()%></a> 
                              <div class="clearfix"></div>
                              <br>
                              <form role="form" action="/ICOFSOFTWARE/AlumniImportServlet" method="post">
                                <div>
                                  <label>
                                    ********************************<br>
                                    *Please follow the format:<br>

                                    *Student No, Student Name, Enroll Year,Program<br>
                                    *for example:<br><br>
                                    *13S137033, Renquan Wang, 2013,HIT-LiU<br>
                                    *13S137034, Guanqun Li, 2013,HIT-LiU<br><br>
                                    *Tips: Use Excel, save as .csv File<br>
                                    ********************************
                                  </label>
                                </div>
                                <div class="form-group">
                                  <label>Content</label><br>
                                  <textarea  name="alumnicontent" class="form-contrl" rows="15" cols="80" id="alumnicontent" placeholder="Enter Content" style="width:85%"> </textarea> 
                                </div>
                                <!-- <div class="form-group">
                                  <label for="exampleInputFile">File input</label>
                                  <input type="file" id="exampleInputFile">
                                  <p class="help-block">Example block-level help text here.</p>
                                </div>
                                <div class="checkbox">
                                  <label>
                                    <input type="checkbox"> Check me out
                                  </label>
                                </div> -->
                                <button type="submit" class="btn btn-primary" name="submit" value="import">Submit</button>
                              </form>
                            </div>
                        </div>                      
                                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">
                            
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