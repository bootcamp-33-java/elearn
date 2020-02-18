<%-- 
    Document   : forum_details
    Created on : Feb 16, 2020, 4:14:40 PM
    Author     : TUF FX504
--%>

<%@page import="models.EmpAction"%>
<%@page import="models.Forum"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="styles/news_post_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/news_post_responsive.css">

    <% // //script plate
        if (session.getAttribute("forumdetailsession") == null) {
            response.sendRedirect("forumdetail");
        } else {
            Forum forum = (Forum) session.getAttribute("forumdetailsession");
            List<EmpAction> empa = (List<EmpAction>) session.getAttribute("commentsession");

    %>
    <body>        
        <!-- Header -->
        <%@include file="header_student.jsp"%>
        <div class="super_container">
            <!-- Header -->
            <div class="logo_container">
                <div class="logo">
                    <img src="images/logo.png" alt="">
                    <span>Forum</span>
                </div>
            </div>


            <!-- Home -->



            <!-- News -->

            <div class="news">
                <div class="container">
                    <div class="row">

                        <!-- News Column -->

                        <div class="col-lg-12">

                            <!-- News Post -->
                            <!--LOOP AWAL-->

                            <div class="news_post">

                                <div class="news_post_top d-flex flex-column flex-sm-row">
                                    <div class="news_post_date_container">
                                        <div class="news_post_date d-flex flex-column align-items-center justify-content-center">
                                            <div>18</div>
                                            <div>dec</div>
                                        </div>
                                    </div>
                                    <div class="news_post_title_container">
                                        <div class="news_post_title">
                                            <a href=""><%=forum.getTopic()%></a>
                                        </div>
                                        <div class="news_post_meta">
                                            <span class="news_post_author"><a href="#">By </a></span>
                                            <span>|</span>
                                            <span class="news_post_comments"><a href="#">3 Reply</a></span>
                                            <span>|</span>
                                            <span class="news_post_comments"><a href="#">+1 Rate</a></span>
                                        </div>
                                        <div class="news_post_text">
                                            <p><%=forum.getForumDescription()%></p>
                                        </div>
                                    </div>
                                </div>




                            </div>

                        </div>

                        <!--LOOP END NANTI-->


                        <!-- Page Nav -->

                        <!-- Comments -->
                        <div class="news_post_comments">
                            <div class="comments_title">Comments</div>
                            <ul class="comments_list">
                                <% for (EmpAction ea : empa) {%>
                                <!-- Comment -->
                                <li class="comment">
                                    <div class="comment_container d-flex flex-row">
                                        <div>
                                            <div class="comment_image">
                                                <img src="images/comment_1.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="comment_content">
                                            <div class="comment_meta">
                                                <span class="comment_name"><a href="#"><%=ea.getEmployee().getName()%></a></span>
                                                <span class="comment_separator">|</span>
                                                <span class="comment_date"><%=ea.getActionDate()%></span>
                                                <span class="comment_separator">|</span>
                                                <span class="comment_reply_link"><a href="#">Reply</a></span>
                                            </div>
                                            <p class="comment_text"><%=ea.getActionComment()%></p>
                                        </div>
                                    </div>
                                </li>
                                <% }%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

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

                    <div class="footer_content">
                        <div class="row">

                            <!-- Footer Column - About -->
                            <div class="col-lg-3 footer_col">

                                <!-- Logo -->
                                <div class="logo_container">
                                    <div class="logo">
                                        <img src="images/logo.png" alt="">
                                        <span>course</span>
                                    </div>
                                </div>

                                <p class="footer_about_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum, tempor lacus.</p>

                            </div>

                            <!-- Footer Column - Menu -->

                            <div class="col-lg-3 footer_col">
                                <div class="footer_column_title">Menu</div>
                                <div class="footer_column_content">
                                    <ul>
                                        <li class="footer_list_item"><a href="index.html">Home</a></li>
                                        <li class="footer_list_item"><a href="#">About Us</a></li>
                                        <li class="footer_list_item"><a href="courses.html">Courses</a></li>
                                        <li class="footer_list_item"><a href="#">News</a></li>
                                        <li class="footer_list_item"><a href="contact.html">Contact</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Footer Column - Usefull Links -->

                            <div class="col-lg-3 footer_col">
                                <div class="footer_column_title">Usefull Links</div>
                                <div class="footer_column_content">
                                    <ul>
                                        <li class="footer_list_item"><a href="#">Testimonials</a></li>
                                        <li class="footer_list_item"><a href="#">FAQ</a></li>
                                        <li class="footer_list_item"><a href="#">Community</a></li>
                                        <li class="footer_list_item"><a href="#">Campus Pictures</a></li>
                                        <li class="footer_list_item"><a href="#">Tuitions</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Footer Column - Contact -->

                            <div class="col-lg-3 footer_col">
                                <div class="footer_column_title">Contact</div>
                                <div class="footer_column_content">
                                    <ul>
                                        <li class="footer_contact_item">
                                            <div class="footer_contact_icon">
                                                <img src="images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
                                            </div>
                                            Blvd Libertad, 34 m05200 Arévalo
                                        </li>
                                        <li class="footer_contact_item">
                                            <div class="footer_contact_icon">
                                                <img src="images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
                                            </div>
                                            0034 37483 2445 322
                                        </li>
                                        <li class="footer_contact_item">
                                            <div class="footer_contact_icon">
                                                <img src="images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
                                            </div>hello@company.com
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- Footer Copyright -->

                    <div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
                        <div class="footer_copyright">
                            <span>Colorlib All rights reserved</span>
                        </div>
                        <div class="footer_social ml-sm-auto">
                            <ul class="menu_social">
                                <li class="menu_social_item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                <li class="menu_social_item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                <li class="menu_social_item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li class="menu_social_item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="menu_social_item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </footer>

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
    %>
</html>
