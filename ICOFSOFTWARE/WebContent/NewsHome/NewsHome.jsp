<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*,java.util.*" %>
<% List<NewsBean> newshome_list = new ArrayList<NewsBean>();
   newshome_list = (ArrayList<NewsBean>)session.getAttribute("NewsCenterInfo_Simple");
%>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <title>NewsHome</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="NewsHome/css/bootstrap.min.css" rel="stylesheet">

        <link href="NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">

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
                        <div class="panel panel-default">
                        <div class="row">
                            <div class="jumbotron text-center" style="background-image: url(NewsHome/img/HIT-MainBuilding-mini.jpg)">
                              
                             <h2 style="color:white">International Class</h2>
                              <p style="color:white">国际班</p>
                              <p><a class="btn btn-large btn-default" href="NewsImgGalleryServlet" target="ext">More...</a></p>
                            </div>
                            
                            <!-- <div class="row"> -->
                            <table>
                              <tr>
                                <td class="col-lg-6" style="vertical-align: top">
                                  <!-- <div class="col-lg-6"> -->
                                <h4>Introduction of School</h4>
                                <p>&nbsp&nbsp&nbsp&nbsp哈尔滨工业大学(Harbin Institute of Technology，HIT)是国家重点支持的九所高校之一，于1956年在我国最早成立了计算机专业，拥有一流的计算机科学与技术学科，有一支实力雄厚的师资队伍，为创办一流软件学院奠定了坚实基础。作为国家示范性软件学院之一，哈工大软件学院面向软件产业需求，充分利用哈工大的综合资源，秉承“规格严格，功夫到家”的优良传统，依托计算机学科的综合优势，坚持“国际化，工业化，高质量，高速度”的办学理念，本着“高起点，高标准，高质量”的原则，“求实创新，探索进取”，创办一流的软件学院，营造一流的办学环境，建设一流的工业化师资队伍，培育一流的软件产业人才...<br><a href="NewsGetSchoolInfoServlet">Learn More...</a></p>
                                <!-- </div> -->
                                </td>
                                <td class="col-lg-6" style="vertical-align: top">
                                  <h4>News Center</h4>
                                <% if(newshome_list.size()>5) {%>
                                <% for(int i = 0; i < 5; i++) {%>
                                <a href="NewsGetViewAllServlet?newsid=<%=newshome_list.get(i).getNid()%>"><p><%=newshome_list.get(i).getTitle()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=newshome_list.get(i).getPostdate()%></p></a><br>
                                <%} } else{ %>
                                <% for(int i = 0;i < newshome_list.size();i ++) {%>
                                <a href="NewsGetViewAllServlet?newsid=<%=newshome_list.get(i).getNid()%>"><p><%=newshome_list.get(i).getTitle()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=newshome_list.get(i).getPostdate()%></p></a><br>

                                <%}}%>
                                </td>
                              </tr>
                              <tr>
                                <td class="col-lg-6" style="vertical-align: top">
                                <h4>"MSE+X" Program</h4>
                                <p>&nbsp&nbsp&nbsp&nbsp哈尔滨工业大学软件学院分别与法国、德国、爱尔兰、日本的多所大学合作，建立了跨国联合培养班，共同培养“跨学科，双边对等招生，联合培养，融合文化”的“MSE+X”软件工程硕士研究生，为学生建立了国际化学习环境，实现学生跨国工业实习，并采用“三导师制”，使学生受到国内大学、国外大学、外企导师指导，保证学生培养、工业实习与学位论文能够满足国际化办学要求，实现了跨国联合培养，联合答辩，联合授予双方学位...<br><a href="NewsGetMSEInfoServlet">Learn More...</a></p>
                                </td>
                                <td class="col-lg-6" style="vertical-align: top">
                                   <h4>FAQ</h4>
                                <p>About Website<br>About Users</p>
                                <br><a href="NewsGetFAQServlet">Learn More...</a>
                                </td>
                              </tr>
                            </table>
                              <!-- <div class="col-lg-6">
                                <h4>Introduction of School 学院简介</h4>
                                <p>&nbsp&nbsp&nbsp&nbsp哈尔滨工业大学(Harbin Institute of Technology，HIT)是国家重点支持的九所高校之一，于1956年在我国最早成立了计算机专业，拥有一流的计算机科学与技术学科，有一支实力雄厚的师资队伍，为创办一流软件学院奠定了坚实基础。作为国家示范性软件学院之一，哈工大软件学院面向软件产业需求，充分利用哈工大的综合资源，秉承“规格严格，功夫到家”的优良传统，依托计算机学科的综合优势，坚持“国际化，工业化，高质量，高速度”的办学理念，本着“高起点，高标准，高质量”的原则，“求实创新，探索进取”，创办一流的软件学院，营造一流的办学环境，建设一流的工业化师资队伍，培育一流的软件产业人才...<br><a href="NewsGetSchoolInfoServlet">Learn More...</a></p>
                                
                                <h4>"MSE+X" Program MSE+X项目</h4>
                                <p>&nbsp&nbsp&nbsp&nbsp哈尔滨工业大学软件学院分别与法国、德国、爱尔兰、日本的多所大学合作，建立了跨国联合培养班，共同培养“跨学科，双边对等招生，联合培养，融合文化”的“MSE+X”软件工程硕士研究生，为学生建立了国际化学习环境，实现学生跨国工业实习，并采用“三导师制”，使学生受到国内大学、国外大学、外企导师指导，保证学生培养、工业实习与学位论文能够满足国际化办学要求，实现了跨国联合培养，联合答辩，联合授予双方学位...<br><a href="NewsGetMSEInfoServlet">Learn More...</a></p>
                              </div> -->
                              
                             <!--  <div class="col-lg-6">
                                <h4>News Center 新闻中心</h4>
                                <% if(newshome_list.size()>5) {%>
                                <% for(int i = 0; i < 5; i++) {%>
                                <a href="NewsGetViewAllServlet?newsid=<%=newshome_list.get(i).getNid()%>"><p><%=newshome_list.get(i).getTitle()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=newshome_list.get(i).getPostdate()%></p></a><br>
                                <%} } else{ %>
                                <% for(int i = 0;i < newshome_list.size();i ++) {%>
                                <a href="NewsGetViewAllServlet?newsid=<%=newshome_list.get(i).getNid()%>"><p><%=newshome_list.get(i).getTitle()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=newshome_list.get(i).getPostdate()%></p></a><br>

                                <%}}%>
                                
                                <h4>FAQ</h4>
                                <p>About Website 关于平台<br>About Users 关于用户</p>
                                <br><a href="NewsGetFAQServlet">Learn More...</a>
                              </div> -->
                            <!-- </div> -->
                        </div>
                      </div>
                       <!--  </div> -->
                       <!--  <div class="row" id="footer">    
                          <div class="col-sm-6">
                            
                          </div>
                        </div> -->
                      
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