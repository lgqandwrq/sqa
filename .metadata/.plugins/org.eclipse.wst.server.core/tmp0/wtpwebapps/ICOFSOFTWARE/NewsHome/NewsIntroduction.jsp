<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*" %>
<% NewsBean nb_schoolinfo = new NewsBean();
   nb_schoolinfo = (NewsBean)session.getAttribute("NewsSchoolInfo");
%>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>NewsIntroduction</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="NewsHome/css/bootstrap.min.css" rel="stylesheet">

        <link href="NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- CSS code from Bootply.com editor -->
        
        <style type="text/css">
            /* custom template */
html, body {
   height: 100%;
   font-family:verdana,arial,sans-serif;
   color:#555555;
}

.nav {
   font-family:Arial,sans-serif;
   font-size:13px;
}

a {
  color:#222222;
}

a:hover {
  text-decoration:none;
}

hr {
  border-color:#dedede;
}

.wrapper, .row {
   height: 100%;
   margin-left:0;
   margin-right:0;
}

.wrapper:before, .wrapper:after,
.column:before, .column:after {
    content: "";
    display: table;
}

.wrapper:after,
.column:after {
    clear: both;
}

.column {
    height: 100%;
    overflow: auto;
    *zoom:1;
}

.column .padding {
    padding: 20px;
}

.full{
	padding-top:70px;
}

.box {
  	bottom: 0; /* increase for footer use */
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    background-color:#444444;
  /*
    background-image:url('/assets/example/bg_suburb.jpg');
    background-size:cover;
    background-attachment:fixed;
  */
}

.divider {
	margin-top:32px;
}

.navbar-blue {
    border-width:0;
	background-color:#3B5999;
    color:#ffffff;
    font-family:arial,sans-serif;
    top:0;
    position:fixed;
    width:inherit;
}

.navbar-blue li > a,.navbar-toggle  {
   color:#efefef;
}

.navbar-blue .dropdown-menu li a {color:#2A4888;}
.navbar-blue .dropdown-menu li > a {padding-left:30px;}

.navbar-blue li>a:hover, .navbar-blue li>a:focus, .navbar-blue .open, .navbar-blue .open>a, .navbar-blue .open>a:hover, .navbar-blue .open>a:focus {
   background-color:#2A4888;
   color:#fff;
}

#main {
   background-color:#e9eaed;
   padding-left:0;
   padding-right:0;
}
#main .img-circle {
   margin-top:18px;
   height:70px;
   width:70px;
}

#sidebar {
    padding:0px;
	padding-top:15px;
}

#sidebar, #sidebar a, #sidebar-footer a {
    color:#ffffff;
    background-color:transparent;
	text-shadow:0 0 2px #000000;
    padding-left:5px;
}
#sidebar .nav li>a:hover {
    background-color:#393939;
}

.logo {
  display:block;
  padding:3px;
  background-color:#fff;
  color:#3B5999;
  height:28px;
  width:28px;
  margin:9px;
  margin-right:2px;
  margin-left:15px;
  font-size:20px;
  font-weight:700;
  text-align:center;
  text-decoration:none;
  text-shadow:0 0 1px;
  border-radius:2px;
}
#sidebar-footer {
  background-color:#444;
  position:absolute;
  bottom:5px;
  padding:5px;
}
#footer {
  margin-bottom:20px;
}

/* bootstrap overrides */

h1,h2,h3 {
   font-weight:800;
}

.navbar-toggle, .close {
	outline:0;
}

.navbar-toggle .icon-bar {
	background-color: #fff;
}

.btn-primary,.label-primary,.list-group-item.active, .list-group-item.active:hover, .list-group-item.active:focus  {
	background-color:#3B5999;
    color:#fffffe;
}
.btn-default {
    color:#666666;
    text-shadow:0 0 1px rgba(0,0,0,.3);
}
.form-control {
	
}

.panel textarea, .well textarea, textarea.form-control
{
   resize: none;
}
  
.badge{
   color:#3B5999;
   background-color:#fff;
}
.badge:hover, .badge-inverse{
   background-color:#3B5999;
   color:#fff;
}
    
.jumbotron {
  background-color:transparent;
}
.label-default {
  background-color:#dddddd;
}
.page-header {
  margin-top: 55px;
  padding-top: 9px;
  border-top:1px solid #eeeeee;
  font-weight:700;
  text-transform:uppercase;
  letter-spacing:2px;
}

.panel-default .panel-heading {
  background-color:#f9fafb;
  color:#555555;
}

.col-sm-9.full {
    width: 100%;
}

.modal-header, .modal-footer {
	background-color:#f2f2f2;
    font-weight:800;
    font-size:12px;
}

.modal-footer i, .well i {
    font-size:20px;
    color:#c0c0c0;
}

.modal-body {
	padding:0px;
}

.modal-body textarea.form-control
{
   resize: none;
   border:0;
   box-shadow:0 0 0;
}

small.text-muted {
  font-family:courier,courier-new,monospace;
}

/* adjust the contents on smaller devices */
@media (max-width: 768px) {

  .column .padding {
    padding: 7px;
  }

  .full{
	padding-top:20px;
  }

  .navbar-blue {
	background-color:#3B5999;
    top:0;
    width:100%;
    position:relative;
  }

}


/*
 * off canvas sidebar
 * --------------------------------------------------
 */
@media screen and (max-width: 768px) {
  .row-offcanvas {
    position: relative;
    -webkit-transition: all 0.25s ease-out;
    -moz-transition: all 0.25s ease-out;
    transition: all 0.25s ease-out;
  }

  .row-offcanvas-left.active {
    left: 33%;
  }

  .row-offcanvas-left.active .sidebar-offcanvas {
    left: -33%;
    position: absolute;
    top: 0;
    width: 33%;
    margin-left: 5px;
  }

  #sidebar, #sidebar a, #sidebar-footer a {
    padding-left:3px;
  }
}
        </style>
    </head>
    
    <!-- HTML code from Bootply.com editor -->
    
    <body  >
        
    <div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
              
              	<ul class="nav">
          			<li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a></li>
            	</ul>
               
                <ul class="nav hidden-xs" id="lg-menu">
                    <li class="active"><a href="NewsHome.html"><i class="glyphicon glyphicon-home"></i> Home</a></li>
                    <li><a href="NewsGetSchoolInfoServlet"><i class="glyphicon glyphicon-list-alt"></i> Introduction of School</a></li>
                    <li><a href="NewsMSE.html"><i class="glyphicon glyphicon-list"></i> MSE+X</a></li>
                    <li><a href="NewsCenter.html"><i class="glyphicon glyphicon-globe"></i> News Center</a></li>
                    <li><a href="NewsPicture.html"><i class="glyphicon glyphicon-picture"></i> Picture Gallery</a></li>
                    <li><a href="NewsFQA.html"><i class="glyphicon glyphicon-info-sign"></i> FQA</a></li>
                    <li><a href="NewsHome.html"><i class="glyphicon glyphicon-refresh"></i> Refresh</a></li>
                </ul>
                <ul class="list-unstyled hidden-xs" id="sidebar-footer">
                    <li>
                      <a href="http://www.software.hit.edu.cn"><h5>@School of Software</h5> <!--<i class="glyphicon glyphicon-heart-empty"></i> Bootply--></a>
                    </li>
                </ul>
              
              	<!-- tiny only nav-->
              <ul class="nav visible-xs" id="xs-menu">
                    <li><a href="NewsHome.html" class="text-center"><i class="glyphicon glyphicon-home"></i></a></li>
                    <li><a href="NewsGetSchoolInfoServlet" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
                    <li><a href="NewsMSE.html" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
                    <li><a href="NewsCenter.html" class="text-center"><i class="glyphicon glyphicon-globe"></i></a></li>
                    <li><a href="NewsPicture.html" class="text-center"><i class="glyphicon glyphicon-picture"></i></a></li>
                    <li><a href="NewsFQA.html" class="text-center"><i class="glyphicon glyphicon-info-sign"></i></a></li>
                    <li><a href="NewsHome.html" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
                </ul>
              
            </div>
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	<div class="navbar navbar-blue navbar-static-top">  
                    <div class="navbar-header">
                      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle</span>
                        <span class="icon-bar"></span>
          				<span class="icon-bar"></span>
          				<span class="icon-bar"></span>
                      </button>
                      <a href="/" class="navbar-brand logo" style="width: 60px">News</a>
                  	</div>
                  	<nav class="collapse navbar-collapse" role="navigation">
                    <form class="navbar-form navbar-left">
                        <div class="input-group input-group-sm" style="max-width:360px;">
                          <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term" style="width: 100%">
                          <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                          </div>
                        </div>
                    </form>
                    <ul class="nav navbar-nav">
                      <li>
                        <a href="#"><i class="glyphicon glyphicon-home"></i> Home</a>
                      </li>
                      
                      <li>
                        <a href="#postModal" role="button" data-toggle="modal"><i class="service-icon fa fa-group"></i> Friend Circle</a>
                      </li>
                      <!--
                      <li>
                        <a href="#"><span class="badge">badge</span></a>
                      </li>
                      -->
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Visitor</a>
                        <ul class="dropdown-menu">
                          <li><a href=""><i class="glyphicon glyphicon-pencil"></i> Edit </a></li>
                          <li><a href=""><i class="glyphicon glyphicon-cog"></i> Settings </a></li>
                          <li><a href=""><i class="glyphicon glyphicon-off"></i> Log out </a></a></li>
                        </ul>
                      </li>
                    </ul>
                  	</nav>
                </div>
                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->                      
                      	<div class="row">
                          
                         <!-- main col left --> 
                         <!-- <div class="col-sm-5"> -->
                              <div class="panel panel-default">
                                 <div class="panel-heading"> <h4><%=nb_schoolinfo.getTitle()%></h4></div> <!-- <a href="#" class="pull-right">View all</a>-->
                                  <div class="panel-body">
                                    <img src="NewsHome/img/HIT-MainBuilding.jpg" class="img-circle pull-right"> <a href="#">发布人：<%=nb_schoolinfo.getUsername()%>     发布时间：<%=nb_schoolinfo.getPostdate() %></a> 
                                    <div class="clearfix"></div>
                                    <%=nb_schoolinfo.getContent()%>
                                    <!--
                                    <hr>
                                    <ul class="list-unstyled"><li><a href="http://www.bootply.com/templates">Dashboard</a></li><li><a href="http://www.bootply.com/templates">Darkside</a></li><li><a href="http://www.bootply.com/templates">Greenfield</a></li></ul>
                                    -->
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