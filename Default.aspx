<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>

    <!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a> 
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
 
    <script src='js/device.min.js'></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div data-thumb="images/slide01_thumb.jpg" data-src="images/slide01.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/slide02_thumb.jpg" data-src="images/slide02.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="images/slide03_thumb.jpg" data-src="images/slide03.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <div class="brand wow fadeIn">
                <h1 class="brand_name">
                    <a href="./">Cafe</a>
                </h1>
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                <ul class="sf-menu">
                   <li class="active">
                        <a href="Default.aspx">Home</a>
                    </li>
                    <li>
                        <a href="Rgistration.aspx">Registration</a>
                       <%-- <ul>
                            <li>
                                <a href="#">Quisque nulla</a>
                            </li>
                            <li>
                                <a href="#">Vestibulum libero</a>
                                <ul>
                                    <li>
                                        <a href="#">Lorem</a>
                                    </li>
                                    <li>
                                        <a href="#">Dolor</a>
                                    </li>
                                    <li>
                                        <a href="#">Sit amet</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Vivamus eget nibh</a>
                            </li>
                        </ul>--%>
                    </li>
                    <li>
                        <a href="Login.aspx">Member Login</a>
                    </li> <li>
                        <a href="Fpassword.aspx">Forgot Password</a>
                    </li>
                    <li>
                        <a href="ADMIN/Login.aspx">Admin Login</a>
                    </li>
                    <li>
                        <a href="index-4.html">Contacts</a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <section class="well">
            <div class="container">
                <h2><em>Welcome to  </em>Just Eat..</h2>
            </div>            
            <div class="gallery">
                <div class="gallery_col-1">
                   <%-- <a data-fancybox-group="gallery" href="images/page-1_img03_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">--%>
                     <a data-fancybox-group="gallery" href="Product.aspx?id=8" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                        <img data-src="images/page-1_img10.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>BRAK FAST</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                     <a data-fancybox-group="gallery" href="Product.aspx?id=1" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                     <img data-src="images/page-1_img03.jpg" alt="">
                       <div class="gallery_overlay">
                            <div class="gallery_caption">
                                 <p><em>GUJARATI FOOD</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div> 
                    </a>
                   
                    <a data-fancybox-group="gallery" href="Product.aspx?id=3" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                        <img data-src="images/page-1_img05.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>SOUTH INDIAN FOOD</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="Product.aspx?id=4" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img data-src="images/page-1_img06.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>PUNJABI FOOD</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Product.aspx?id=5" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img data-src="images/page-1_img07.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>KATHIYAWADI FOOD</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Product.aspx?id=6" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img data-src="images/page-1_img08.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>SOFT DRINK FOOD</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-3">
               <a data-fancybox-group="gallery" href="Product.aspx?id=9" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/page-1_img11.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>ITALIAN FOOD</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    
                      <a data-fancybox-group="gallery" href="Product.aspx?id=2" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                        <img data-src="images/page-1_img04.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>CHINESS FOOD</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Product.aspx?id=7" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/page-1_img09.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>ICE CREAM</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    
                </div>
            </div>
        </section>
        <section class="well well__offset-1 bg-1">
            <div class="container">
            </div>
        </section>
    </main>

    <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container">
            <ul class="socials">
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
            </div>
        </div>
        <div class="tm" style="color: #FF9933">Developed By : meeraacademy.com</div>
    </footer>
</div>

<script src="js/script.js"></script>
    </form>
</body>
</html>