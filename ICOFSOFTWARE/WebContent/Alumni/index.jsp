<%@ page language="java" contentType="text/html; charset=utf8" import="com.icofsoftware.beans.*,java.util.*,com.icofsoftware.service.*" pageEncoding="utf8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>Alumni Page -- School of Sofware in HIT</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../bootstrap-3.1.1-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="/ICOFSOFTWARE/NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- CSS code from Bootply.com editor -->
        
        <link rel="stylesheet" type="text/css" href="res/style.css" />
		<script type='text/javascript' src="../bootstrap-3.1.1-dist/js/jquery-1.11.0.min.js"></script>
        <script type='text/javascript' src="../bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
        
        <link href="video-js/video-js.css" rel="stylesheet">
		<script src="video-js/video.js"></script>
		<script>
		  videojs.options.flash.swf = "/ICOFSOFTWARE/Alumni/video-js/video-js.swf"
		</script>
		<script src="audiojs/audio.min.js"></script>
		<script>
		  audiojs.events.ready(function() {
		    var as = audiojs.createAll();
		  });
		</script>
		<style>
	      .audiojs { width: 340px }
	      .audiojs .play-pause { width:25px; height:40px; padding: 4px 0px 0px 0px; }
	      .audiojs p { width: 25px; height: 20px; margin: 0px 0px 0px 0px; }
	      .audiojs .scrubber { width: 190px }
	    </style>
    </head>
    
    
    <body>
        
        <div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <%@include file="../Template/SideBarAlumni.html" %>
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	<%@include file="../Template/TopNavAlumni.html" %>
                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->
                        
                        <!-- top content -->
                        <div class="row">
                        	<div class="col-sm-12">
                       		 <div class="panel panel-default"> 
                       		 	<div class="panel-body">
                                   <form class="form-horizontal" role="form" action="sendmsg" method="post" enctype="multipart/form-data">
                                   		<p class="lead">What's New</p>
                                   		<input type="text" id="ftype" name="ftype" style="display:none" value="0"></input>
                                    
                                     <div class="form-group" style="padding:14px;">
                                      <textarea class="form-control" name="msgcontent" placeholder="What do you want to share?"></textarea>
                                    </div>
                                    <button class="btn btn-lg btn-primary pull-right" type="submit">Post</button>
                                    
                                    <ul class="list-inline">
                                    
									<li><i onclick="ffiletext.accept='image/*';ffiletext.click();ftype.value=1" class="glyphicon glyphicon-camera" style="font-size: 20px;color: #c0c0c0;cursor:pointer;"></i></li>                                    
									<li><i onclick="ffiletext.accept='image/*';ffiletext.click();ftype.value=2" class="glyphicon glyphicon-picture" style="font-size: 20px;color: #c0c0c0;cursor:pointer;"></i></li>
                                    <li><i onclick="ffiletext.accept='audio/*';ffiletext.click();ftype.value=3" class="glyphicon glyphicon-music" style="font-size: 20px;color: #c0c0c0;cursor:pointer;"></i></li>
                                    <li><i onclick="ffiletext.accept='video/*';ffiletext.click();ftype.value=4" class="glyphicon glyphicon-film" style="font-size: 20px;color: #c0c0c0;cursor:pointer;"></i></li>
                                    <li><i class="glyphicon glyphicon-map-marker" style="font-size: 20px;color: #c0c0c0;cursor:pointer;"></i></li>
                                    
                                    <li><input type="file" id="ffiletext" name="ffiletext" style="display:none" onchange="fshowname.innerHTML=this.value"></input>
                                    <span id="fshowname" style="font-size: 10px;color: #c0c0c0;"></span>
                                    </li>
                                    </ul>
                                  </form>
                                </div>
                              </div>
                            </div>
                        </div>
                        
                        <%
                        String pagetype= request.getParameter("type");
                        int ptype = 0;
                        if (pagetype != null) {
                        	ptype = Integer.parseInt(pagetype);
                        }
                        String f = request.getHeader("user-agent");
                        List<Msg> list = MsgService.getMsgList(0, ptype, session.getAttribute("user"), f); %>
                        
                        <!-- status list -->                      
                      	<div class="row">
                          
                         <!-- main col left --> 
                         <div class="col-md-5 col-sm-12 col-xs-12">
                           
                           <% for (int i=0;i<list.size();i++) {
                        	   Msg msg = list.get(i);
                           		if (i%2==0) {
                           %>
                              <div class="panel panel-default">
                                  <div class="panel-heading" style="height: 60px">
	                                 <!-- Message Title -->
	                                 <a href="#" class="pull-right"><%=msg.getDateString() %><% if(ptype==1){ %><i class="glyphicon glyphicon-remove"></i><% } %></a> 
								    <a class="pull-left" href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=msg.getAid() %>" style="margin-top: -7px">
								    <img class="img-responsive img-circle" style="width: 50px; height: 50px; display:inline; margin-bottom: 10px; margin-top: 0px" src="/ICOFSOFTWARE/upload/<%=AlumniService.getFileNameById(msg.getAid()) %>" alt="Portrait"/>
								    <h4 style="display:inline;"><%=AlumniService.getNameById(msg.getAid())%></h4>
								  	</a>
							     </div>
                                 <div class="panel-body">
                                  
                                  <!-- Message Body: Media-->
                                  <% if(msg.getFiletype()==1||msg.getFiletype()==2) {%>
                                  <p><img src="../upload/<%=msg.getFilename() %>" class="img-responsive" alt="Responsive image"></p>
                                  <% } %>
                                  <% if(msg.getFiletype()==3) {%>
                                  <p align="center"><audio src="/ICOFSOFTWARE/upload/<%=msg.getFilename() %>" preload="auto"></audio></p>
                                  <% } %>
                                  <% if(msg.getFiletype()==4) {%>
                                  <p align="center">
									<video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered"
									  controls preload="auto" width="255" height="200"
									  poster="http://video-js.zencoder.com/oceans-clip.png"
									  data-setup='{"example_option":true}'>
									 <source src="/ICOFSOFTWARE/upload/<%=msg.getFilename() %>" type='video/mp4' />
									</video>
								  </p>
                                  <% } %>
                                  
                                    <!-- Message Body -->
                                    <p id="msgreply<%=msg.getMid() %>"><%=msg.getContent() %></p>
                                    
                                    <hr />
                                    
                                    <!-- Comments -->
                                      <% for(int j =0;j<msg.clist.size();j++){
                                    	Comment c = msg.clist.get(j);  
                                      %>
                                      
	                                      <div>
	                                      <!-- Image -->
	                                      <a class="pull-left" href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=c.getAid() %>" style="margin-left: 20px">
										    <img class="img-responsive img-circle" style="width: 35px; height: 35px; display:inline; margin-bottom: 10px; margin-top: 0px" src="/ICOFSOFTWARE/upload/<%=AlumniService.getFileNameById(c.getAid()) %>" alt="Portrait"/>
										  </a>
	                                      
	                                       <!-- Sender & Content -->
		                                      <p style="margin: 4px;font-size: 10px; display: inline" >
		                                       <a href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=c.getAid() %>"><%=AlumniService.getNameById(c.getAid()) %>:</a>
		                                       <% if(c.getToaid()>0) { %> To <a href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=c.getToaid() %>"><%=AlumniService.getNameById(c.getToaid()) %></a>:&nbsp;<% } %>
		                                       <%=c.getContent() %>
		                                      </p>
		                                      <button class="btn btn-default btn-sm pull-right" name="reply" onclick="msgreplay<%=msg.getMid() %>.toaid.value=<%=c.getAid() %>;
		                                      msgreplay<%=msg.getMid() %>.content.placeholder='To <%=AlumniService.getNameById(c.getAid()) %>'">Reply</button>
	                                      
	                                       <!-- Date -->
	                                          <p style="font-size: 10px; margin-left: 40px; margin-bottom: 0px">
		                                      <%=c.getDateString() %> &nbsp;
		                                      </p>
	                                      
	                                      <!-- Reply -->

	                                    </div>
		                                <hr style="margin-bottom: 10px; margin-top: 10px; margin-left: 20px"/>
		                                <% } %>                                      
                                     
                                      
                                    <!-- Apply An Comment -->
                                    <form name="msgreplay<%=msg.getMid() %>" action="comment?mid=<%=msg.getMid()  %>&aid=<%=((UserBean)session.getAttribute("user")).getId() %>" method="post">
                                    <div class="input-group">
                                      <div class="input-group-btn">
                                      <button <%=msg.getZanString() %> name="favor<%=msg.getMid() %>" class="btn btn-default" onclick="favor<%=msg.getMid() %>.disabled=true;var xmlhttp=new XMLHttpRequest();xmlhttp.open('GET','/ICOFSOFTWARE/favormsg?mid=<%=msg.getMid()  %>',true);xmlhttp.send();"><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;Favor</button>
                                      </div>
                                      
                                      <input name="toaid" type="text" style="display:none" value="0">
                                      <input name="content" type="text" class="form-control" placeholder="Add a comment..">
                                      <div class="input-group-btn">
                                      <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-comment"></i></button>
                                      </div>
                                    </div>
                                    </form>
                                    
                                  </div>
                               </div>
                           <%
                           	} }
                           %>
                          </div>
                          
                          <!-- main col right -->
                          <div class="col-md-7 col-sm-12 col-xs-12">
                           <%
                           	for (int i=0;i<list.size();i++) {
                                                   	   Msg msg = list.get(i);
                                                      		if (i%2==1) {
                           %>
                               <div class="panel panel-default">
                                  <div class="panel-heading" style="height: 60px">
	                                 <!-- Message Title -->
	                                 <a href="/ICOFSOFTWARE/deletemsg?aid=<%=msg.getAid() %>&mid=<%=msg.getMid() %>" class="pull-right"><%=msg.getDateString() %><% if(ptype==1){ %><i class="glyphicon glyphicon-remove"></i><% } %></a> 
								    <a class="pull-left" href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=msg.getAid() %>" style="margin-top: -7px">
								    <img class="img-responsive img-circle" style="width: 50px; height: 50px; display:inline; margin-bottom: 10px; margin-top: 0px" src="/ICOFSOFTWARE/upload/<%=AlumniService.getFileNameById(msg.getAid()) %>" alt="Portrait"/>
								    <h4 style="display:inline;"><%=AlumniService.getNameById(msg.getAid())%></h4>
								  	</a>
							     </div>
                                 <div class="panel-body">
                                  
                                  <!-- Message Body: Media-->
                                  <% if(msg.getFiletype()==1||msg.getFiletype()==2) {%>
                                  <p><img src="../upload/<%=msg.getFilename() %>" class="img-responsive" alt="Responsive image"></p>
                                  <% } %>
                                  <% if(msg.getFiletype()==3) {%>
                                  <p align="center"><audio src="/ICOFSOFTWARE/upload/<%=msg.getFilename() %>" preload="auto"></audio></p>
                                  <% } %>
                                  <% if(msg.getFiletype()==4) {%>
                                  <p align="center">
									<video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered"
									  controls preload="auto" width="375" height="277"
									  poster="http://video-js.zencoder.com/oceans-clip.png"
									  data-setup='{"example_option":true}'>
									 <source src="/ICOFSOFTWARE/upload/<%=msg.getFilename() %>" type='video/mp4' />
									</video>
								  </p>
                                  <% } %>
                                  
                                    <!-- Message Body -->
                                    <p id="msgreply<%=msg.getMid() %>"><%=msg.getContent() %></p>
                                    
                                    <hr />
                                    
                                    <!-- Comments -->
                                      <% for(int j =0;j<msg.clist.size();j++){
                                    	Comment c = msg.clist.get(j);  
                                      %>
                                      
	                                      <div>
	                                      <!-- Image -->
	                                      <a class="pull-left" href="#" style="margin-left: 20px">
										    <img class="img-responsive img-circle" style="width: 35px; height: 35px; display:inline; margin-bottom: 10px; margin-top: 0px" src="/ICOFSOFTWARE/upload/<%=AlumniService.getFileNameById(c.getAid()) %>" alt="Portrait"/>
										  </a>
	                                      
	                                       <!-- Sender & Content -->
		                                      <p style="margin: 4px;font-size: 10px; display: inline" >
		                                       <a href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=c.getAid() %>"><%=AlumniService.getNameById(c.getAid()) %>:</a>
		                                       <% if(c.getToaid()>0) { %> To <a href="/ICOFSOFTWARE/Profiles/Profile.jsp?uid=<%=c.getToaid() %>"><%=AlumniService.getNameById(c.getToaid()) %></a>:&nbsp;<% } %>
		                                       <%=c.getContent() %>
		                                      </p>
		                                      <button class="btn btn-default btn-sm pull-right" name="reply" onclick="msgreplay<%=msg.getMid() %>.toaid.value=<%=c.getAid() %>;
		                                      msgreplay<%=msg.getMid() %>.content.placeholder='To <%=AlumniService.getNameById(c.getAid()) %>'">Reply</button>
	                                      
	                                       <!-- Date -->
	                                          <p style="font-size: 10px; margin-left: 40px; margin-bottom: 0px">
		                                      <%=c.getDateString() %> &nbsp;
		                                      </p>
	                                      
	                                      <!-- Reply -->

	                                    </div>
		                                <hr style="margin-bottom: 10px; margin-top: 10px; margin-left: 20px"/>
		                                <% } %>                                      
                                     
                                      
                                    <!-- Apply An Comment -->
                                    <form name="msgreplay<%=msg.getMid() %>" action="comment?mid=<%=msg.getMid()  %>&aid=<%=((UserBean)session.getAttribute("user")).getId() %>" method="post">
                                    <div class="input-group">
                                      <div class="input-group-btn">
                                      <button <%=msg.getZanString() %> name="favor<%=msg.getMid() %>" class="btn btn-default" onclick="favor<%=msg.getMid() %>.disabled=true;var xmlhttp=new XMLHttpRequest();xmlhttp.open('GET','/ICOFSOFTWARE/favormsg?mid=<%=msg.getMid()  %>',true);xmlhttp.send();"><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;Favor</button>
                                      </div>
                                      
                                      <input name="toaid" type="text" style="display:none" value="0">
                                      <input name="content" type="text" class="form-control" placeholder="Add a comment..">
                                      <div class="input-group-btn">
                                      <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-comment"></i></button>
                                      </div>
                                    </div>
                                    </form>
                                    
                                  </div>
                               </div>
                           <% } } %>
                          </div>
                       </div><!--/row-->
                       
                      
                      <hr>
                      
                      <h4 class="text-center">
                      <a href="#" target="ext">Support by wangrq and lgq ©Copyright 2013</a>
                      </h4>
                        
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