<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*" %>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>NewsFAQ</title>
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
                          
                        <h2 id="sec1">FAQ</h2>
                        <p>
                        如果有任何有关本系统的问题，希望你可以在这里找到答案。
                        </p>
                        <p>
                        If you have any questions about this website, hope you can find your answers here.
                        </p>
                        <div class="row">
                          <div class="col-md-6">
                            <div class="panel panel-default">
                              <div class="panel-heading"><h3>关于网站 About Website</h3></div>
                              <div class="panel-body">本网站是一个关于哈尔滨工业大学软件学院国际班的综合平台，分为新闻门户平台与校友圈平台两大模块。 
                              门户平台你可以找到关于哈工大软件学院国际合作的相关介绍，同时也可以浏览国际班相关新闻及历届同学在国内外的相关新闻情况。校友圈平台是
                              一个类Twitter的小型内部社交平台，历届国际班同学可以在其上发布状态、图片、视频等社交信息，进行沟通和交流。<br>
                              This Website is an integreted platform about International Class of School of Software in HIT, which consists of two main parts called NewsHome and Alumni Circle. Appearantly, NewsHome is a place where you can find the news about the International Cooperation Programs of School of Software in HIT with some other universities around the world and also some updating news from all the members of the International Class. The Alumni Circle is a small social place where you can post your status, pictures or videos and share them with your classmates for communications.    
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6">
                              <div class="panel panel-default">
                              <div class="panel-heading"><h3>关于用户 About Users</h3></div>
                              <div class="panel-body">第一个版本，暂只支持管理员用户、教师用户和国际班同学用户，其他用户均为浏览用户，即只能进行新闻、学院简介、图片等浏览，
                              而不能进入校友圈使用社交功能。<br>
                               Only the admins, teachers and the classmates of the International Class can experience all the functions now in our first version, while other users can only view some introductions, news or pictures.
                              
                              </div>
                            </div>
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
                      
                      </div>
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