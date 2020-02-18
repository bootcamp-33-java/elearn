<%-- 
    Document   : theory_list
    Created on : Feb 14, 2020, 1:24:52 PM
    Author     : BWP
--%>

<%@page import="java.util.List"%>
<%@page import="models.Theory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Course - News</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles/news_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/news_responsive.css">
        <style>.act-btn{
                background:green;
                display: block;
                width: 50px;
                height: 50px;
                line-height: 50px;
                text-align: center;
                color: white;
                font-size: 30px;
                font-weight: bold;
                border-radius: 50%;
                -webkit-border-radius: 50%;
                text-decoration: none;
                transition: ease all 0.3s;
                position: fixed;
                right: 30px;
                bottom:30px;
            }
            .act-btn:hover{background: blue}
        </style>
    </head>
    <% // //script plate
        if (session.getAttribute("theorys") == null) {
            response.sendRedirect("theory_list");
        } else {
            List<Theory> theorys = (List<Theory>) session.getAttribute("theorys");
    %>
    <body>
        <div class="super_container">
            <!-- Header -->
            <%@include file="header_student.jsp" %>

            <!-- Menu -->
            <div class="menu_container menu_mm">

                <!-- Menu Close Button -->
                <div class="menu_close_container">
                    <div class="menu_close"></div>
                </div>

                <!-- Menu Items -->
                <div class="menu_inner menu_mm">
                    <div class="menu menu_mm">
                        <ul class="menu_list menu_mm">
                            <li class="menu_item menu_mm"><a href="index.html">Home</a></li>
                            <li class="menu_item menu_mm"><a href="#">About us</a></li>
                            <li class="menu_item menu_mm"><a href="courses.html">Courses</a></li>
                            <li class="menu_item menu_mm"><a href="elements.html">Elements</a></li>
                            <li class="menu_item menu_mm"><a href="#">News</a></li>
                            <li class="menu_item menu_mm"><a href="contact.html">Contact</a></li>
                        </ul>

                        <!-- Menu Social -->

                        <div class="menu_social_container menu_mm">
                            <ul class="menu_social menu_mm">
                                <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
                            </ul>
                        </div>

                        <div class="menu_copyright menu_mm"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                    </div>

                </div>

            </div>

            <!-- Home -->

            <div class="home">
                <div class="home_background_container prlx_parent">
                    <div class="home_background prlx" style="background-image:url(images/news_background.jpg)"></div>
                </div>
                <div class="home_content">
                    <h1>THEORY</h1>
                </div>
            </div>

            <!-- News -->

            <div class="news">
                <div class="container">
                    <div class="row">

                        <!-- News Column -->

                        <div class="col-lg-12">
                            <div class="news_posts">
                                <!-- News Post -->
                                <!--LOOP AWAL-->
                                <% for (Theory t : theorys) {%>
                                <div class="news_post">
                                    <div class="news_post_image">
                                        <img src="images/news_1.jpg" alt="https://unsplash.com/@dsmacinnes">
                                    </div>
                                    <div class="news_post_top d-flex flex-column flex-sm-row">
                                        <div class="news_post_date_container">
                                            <div class="news_post_date d-flex flex-column align-items-center justify-content-center">
                                                <div>18</div>
                                                <div>dec</div>
                                            </div>
                                        </div>
                                        <div class="news_post_title_container">
                                            <div class="news_post_title">
                                                <a href="news_post.html"><%=t.getTheoryTitle()%></a>
                                            </div>
                                            <div class="news_post_meta">
                                                <span class="news_post_author"><a href="#">By Christian Smith</a></span>
                                                <span>|</span>
                                                <span class="news_post_comments"><a href="#">3 Comments</a></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="news_post_text">
                                        <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum. Etiam eu purus nec eros varius luctus. Praesent finibus risus facilisis ultricies.</p>
                                    </div>
                                    <div class="news_post_button text-center trans_200">
                                        <a href="theory_detail?id=<%=t.getId()%>">Read More</a>
                                    </div>
                                </div>
                                <% } %>
                                <!--LOOP END NANTI-->
                            </div>

                            <!-- Page Nav -->

                            <div class="news_page_nav">
                                <ul>
                                    <li class="active text-center trans_200"><a href="#">01</a></li>
                                    <li class="text-center trans_200"><a href="#">02</a></li>
                                    <li class="text-center trans_200"><a href="#">03</a></li>
                                </ul>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <% if (session.getAttribute("role").equals("Trainer")) {%>
            <a href="addtheory" class="act-btn">
                +
            </a>
            <% }%>

            <!-- Footer -->

            <footer class="footer">
                <div class="container">

                    <!-- Newsletter -->

                    <div class="newsletter">
                        <div class="row">
                            <div class="col">
                                <div class="section_title text-center">
                                    <h1>Subscribe to newsletter</h1>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col text-center">
                                <div class="newsletter_form_container mx-auto">
                                    <form action="post">
                                        <div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-center">
                                            <input id="newsletter_email" class="newsletter_email" type="email" placeholder="Email Address" required="required" data-error="Valid email is required.">
                                            <button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">Subscribe</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Footer Content -->
                    <%@include file="footer_student.jsp" %>

                </div>

                <script src="js/jquery-3.2.1.min.js"></script>
                <script src="styles/bootstrap4/popper.js"></script>
                <script src="styles/bootstrap4/bootstrap.min.js"></script>
                <script src="plugins/greensock/TweenMax.min.js"></script>
                <script src="plugins/greensock/TimelineMax.min.js"></script>
                <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
                <script src="plugins/greensock/animation.gsap.min.js"></script>
                <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
                <script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
                <script src="plugins/easing/easing.js"></script>
                <script src="js/news_custom.js"></script>

                </body>
                <% }
                    session.removeAttribute("theorys");
                %>
                </html>
