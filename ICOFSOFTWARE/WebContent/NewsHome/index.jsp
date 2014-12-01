<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" import="com.icofsoftware.beans.*" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>International Class of School of Software</title>

    <!-- Bootstrap core CSS -->
    <link href="/ICOFSOFTWARE/NewsHome/css/bootstrap.css" rel="stylesheet">
    
    <!-- Add custom CSS here -->
    <link href="/ICOFSOFTWARE/NewsHome/css/stylish-portfolio.css" rel="stylesheet">
    <link href="/ICOFSOFTWARE/NewsHome/font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>	
    <!-- Side Menu -->
    <a id="menu-toggle" href="#" class="btn btn-primary btn-lg toggle"><i class="fa fa-bars"></i></a>
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand"><a href="http://software.hit.edu.cn">School of Software</a>

            <li>
            <a>Please Log In</a>
            <div class="form-div">
              <form class="form-signin" role="form" action="/ICOFSOFTWARE/LoginServlet" method="post">
                <table> 
                    <tr>
                        <td>
                            <input type="text" name="useremail" class="form-control" value="lgq1990@gmail.com" placeholder="Email address" required="" autofocus="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="userpwd" class="form-control" value="123" placeholder="Password" required="">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <!-- <label> -->
                            <input type="checkbox" value="remember-me"> Remember me
                            <!-- </label> -->
                        </td>
                    </tr>
                </table>
                <!-- <div class="checkbox">  -->
                
                <!-- </div> -->
                <button class="btn btn-default btn-sm" type="submit" name="submit" value="login">Sign In</button>
                <button class="btn btn-default btn-sm" type="button" id="register-bt" onclick="toSignup()">Register</button>
              </form> 
            </div>
            </li>

            </li>
            <li><a href="#top">Home</a>
            </li>
            <li><a href="#about">Introduction</a>
            </li>
            <li><a href="#services">Navigation</a>
            </li>
            <li><a href="#portfolio">Pictures</a>
            </li>
            <li><a href="#contact">Contact</a>
            </li>
            
        </ul>
    </div>
    <!-- /Side Menu -->

    <!-- Full Page Image Header Area -->
    <div id="top" class="header">
        <div class="vert-text">
            <!-- <h1>Start Bootstrap</h1>-->
            <h1 class="white-font"> Welcome to International Class</h1>
            <h2 class="white-font">
                <em>School of Software</em> in HIT<!--
                <em>You</em> Make Them Better--></h2>
            <h2 class="white-font"> 哈工大软件学院国际班</h2>
            <a href="#about" class="btn btn-default btn-lg">Find Out More</a>
            <a id="login-bt" class="btn btn-default btn-lg">Sign in</a>
        </div>
    </div>
    <!-- /Full Page Image Header Area -->

    <!-- Intro -->
    <div id="about" class="intro">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <h2>International Cooperation</h2>
                    <h2>国际合作简介</h2>
                    <p class="lead">HIT School of Software and many famous universities of United States, Ireland, Germany, Britain, France, Sweden, Switzerland, Italy, Japan, Korea and other countries, as well as IBM, Microsoft, Intel, HP, AutoDesk and other well-known international IT companies have signed a cooperation agreement, about cooperation and exchange projects.</p>
                    <p class="lead">哈工大软件学院已先后与美国、爱尔兰、德国、英国、法国、瑞典、瑞士、意大利、日本、韩国等多个国家的著名高校以及IBM、Microsoft、Intel、HP、AutoDesk等国际知名IT公司签订了合作协议，开展合作交流项目。<a target="_blank" href="/ICOFSOFTWARE/NewsGetNewsHomeServlet">Learn More>> </a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- /Intro -->

    <!-- Services -->
    <div id="services" class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <h2></h2>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 col-md-offset-2 text-center">
                    <div class="service-item">
                        <a href="/ICOFSOFTWARE/NewsGetNewsHomeServlet"><i class="service-icon fa fa-home"></i></a>
                        <h4>News Home</h4>
                        <p>Do you want to find out more news or information about the International Class of School of Software in HIT? Click Here!</p>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-group"></i>
                        <h4>Alumnus Circle</h4>
                        <p>Need to know what our alumnus are doing now? Need to make some friends from seniors or Juniors? Click Here!</p>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-search"></i>
                        <h4>Search</h4>
                        <p>Search the information you want to know.</p>
                    </div>
                </div>
                <div class="col-md-2 text-center">
                    <div class="service-item">
                        <i class="service-icon fa fa-envelope"></i>
                        <h4>Email</h4>
                        <p>Do you want to contact us? You can email us from here!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Services -->

    <!-- Callout -->
    <div class="callout">
        <div class="vert-text">
            <h1>What's Next?</h1>
        </div>
    </div>
    <!-- /Callout -->

    <!-- Portfolio -->
    <div id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <h2>Pictures</h2>
                    <h3>国际班图片展示</h3>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-2 text-center">
                    <div class="portfolio-item">
                        <a href="/ICOFSOFTWARE/NewsImgGalleryServlet">
                            <img class="img-portfolio img-responsive" src="/ICOFSOFTWARE/NewsHome/img/aLeader.jpg">
                        </a>
                        <h4>Students of 2014 Graduating Class</h4>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="portfolio-item">
                        <a href="/ICOFSOFTWARE/NewsImgGalleryServlet">
                            <img class="img-portfolio img-responsive" src="/ICOFSOFTWARE/NewsHome/img/aLeader4.jpg">
                        </a>
                        <h4>Students Entertainment</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-2 text-center">
                    <div class="portfolio-item">
                        <a href="/ICOFSOFTWARE/NewsImgGalleryServlet">
                            <img class="img-portfolio img-responsive" src="/ICOFSOFTWARE/NewsHome/img/aLeader5.jpg">
                        </a>
                        <h4>Dean of School</h4>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="portfolio-item">
                        <a href="/ICOFSOFTWARE/NewsImgGalleryServlet">
                            <img class="img-portfolio img-responsive" src="/ICOFSOFTWARE/NewsHome/img/aLeader2.jpg">
                        </a>
                        <h4>Students and Teachers</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Portfolio -->

    <!-- Call to Action -->
        <div class="call-to-action">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <h3>The map below is the <em>accurate Location</em> of our school and some <em>Contact Information</em>.</h3>
                    <!--<a href="#" class="btn btn-lg btn-default">Click Me!</a>-->
                    <a href="#top" class="btn btn-lg btn-primary">Back to Top</a>
                </div>
            </div>
        </div>
    </div>
   
    <!-- /Call to Action -->

    <!-- Map -->
    <div id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Harbin Institute of Technology,+Inc.,+Harbin,+China&amp;aq=0&amp;oq=twitter&amp;sll=126.628932,45.736455&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Harbin Institute of Technology,+Inc.,+Harbin,+China&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Harbin Institute of Technology,+Inc.,+Harbin,+China&amp;aq=0&amp;oq=twitter&amp;sll=126.628932,45.736455&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Harbin Institute of Technology,+Inc.,+Harbin,+China&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        </iframe>
    </div>
    <!-- /Map -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <ul class="list-inline">
                        <li><i class="fa fa-facebook fa-3x"></i>
                        </li>
                        <li><i class="fa fa-twitter fa-3x"></i>
                        </li>
                        <li><i class="fa fa-dribbble fa-3x"></i>
                        </li>
                    </ul>
                    <div class="top-scroll">
                        <a href="#top"><i class="fa fa-circle-arrow-up scroll fa-4x"></i></a>
                    </div>
                    <hr>
                    <p>Copyright &copy; School of Software, Created by Team J.K. 2014</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- /Footer -->

    <!-- JavaScript -->
    <script src="/ICOFSOFTWARE/NewsHome/js/jquery-1.10.2.js"></script>
    <script src="/ICOFSOFTWARE/NewsHome/js/bootstrap.js"></script>

    <!-- Custom JavaScript for the Side Menu and Smooth Scrolling -->
    
    <script>
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>
    $("#login-bt").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    </script>
    <script>

    function toSignup(){
       window.location.href='/ICOFSOFTWARE/NewsHome/index_signup.jsp';
    }
    </script>

    <script>
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    </script>

</body>

</html>
