<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*,java.util.*" %>
<% List<NewsBean> nb_mseinfolist = new ArrayList<NewsBean>();
   nb_mseinfolist = (ArrayList<NewsBean>)session.getAttribute("NewsMSEInfo");
%>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>NewsMSE</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="NewsHome/css/bootstrap.min.css" rel="stylesheet">

        <link href="NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        
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
                     
                        <!-- content -->                      
                      	<div class="row">
                          
                         <!-- main col left --> 
                        
                         <div class="col-sm-5">
                             <%for(int i = 0;i < nb_mseinfolist.size();i ++) {%>
                             <%if(i%2 == 0) {%>
                              <div class="panel panel-default">
                                 <div class="panel-heading"><a href="NewsGetViewAllServlet?newsid=<%=nb_mseinfolist.get(i).getNid()%>" class="pull-right">View all</a> <h4><%=nb_mseinfolist.get(i).getTitle()%></h4>
                                 </div>
                                  <div class="panel-body">
                                    <a href="#">Poster:<%=nb_mseinfolist.get(i).getUsername()%>    Date:<%=nb_mseinfolist.get(i).getPostdate() %></a>
                                    <div class="clearfix"></div>
                                    <p><br></p>
                                    <%=nb_mseinfolist.get(i).getContent().substring(0,500)%>
                                    <p>...</p>
                                  </div>
                              </div>
                           <%}}%>
                        </div>
                          
                        <!-- main col right -->
                         
                        <div class="col-sm-7">
                               <%for(int i = 0;i < nb_mseinfolist.size();i ++) {%>
                               <%if(i%2 == 1) {%>
                               <div class="panel panel-default">
                                 <div class="panel-heading"><a href="NewsGetViewAllServlet?newsid=<%=nb_mseinfolist.get(i).getNid()%>" class="pull-right">View all</a> <h4><%=nb_mseinfolist.get(i).getTitle()%></h4></div>
                                  <div class="panel-body">
                                    <p><a href="#">Poster:<%=nb_mseinfolist.get(i).getUsername()%>     Date:<%=nb_mseinfolist.get(i).getPostdate() %></a></p>
                                    <div class="clearfix"></div>
                                    <p><br></p>
                                    <%=nb_mseinfolist.get(i).getContent().substring(0,500)%>
                                    <p>...</p>
                                  </div>
                               </div>
                               <%}}%>
                         </div>
                       </div><!--/row-->
                      
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
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
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
        

        <script type='text/javascript' src="NewsHome/js/jquery.min.js"></script>

        <script type='text/javascript' src="NewsHome/js/bootstrap.min.js"></script>





        
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