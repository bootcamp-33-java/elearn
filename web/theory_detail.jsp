<%-- 
    Document   : thery_detail
    Created on : Feb 14, 2020, 1:38:23 PM
    Author     : BWP
--%>

<%@page import="models.Theory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Course - News Post</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="styles/news_post_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/news_post_responsive.css">
    </head>
    <% // //script plate
        if (session.getAttribute("theory") == null) {
            response.sendRedirect("theory_detail");
        } else {
            Theory theory = (Theory) session.getAttribute("theory");
    %>
    <body>

        <div class="super_container">

            <!-- Header -->

            <%@include file="header_student.jsp"%>

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
                            <li class="menu_item menu_mm"><a href="news.html">News</a></li>
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

                        <div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
                    </div>

                </div>

            </div>

            <!-- Home -->

            <div class="home">
                <div class="home_background_container prlx_parent">
                    <div class="home_background prlx" style="background-image:url(images/news_background.jpg)"></div>
                </div>
                <div class="home_content">
                    <h1>The News</h1>
                </div>
            </div>

            <!-- News -->

            <div class="news">
                <div class="container">
                    <div class="row">

                        <!-- News Post Column -->

                        <div class="col-lg-8">

                            <div class="news_post_container">
                                <!-- News Post -->
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
                                                <a href="news_post.html"><%= theory.getTheoryTitle()%></a>
                                            </div>
                                            <div class="news_post_meta">
                                                <span class="news_post_author"><a href="#">By Christian Smith</a></span>
                                                <span>|</span>
                                                <span class="news_post_comments"><a href="#">3 Comments</a></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="news_post_text">
                                        <p><%= theory.getTheoryDefiniton()%> </p>
                                    </div>

                                    <div class="news_post_quote">
                                        <p class="news_post_quote_text"><span>E</span>tiam eu purus nec eros varius luctus. Praesent finibus risus facilisis ultricies venena tis. Suspendisse fermentum sodales lacus, lacinia gravida elit.</p>
                                    </div>
                                </div>

                            </div>

                            <!-- Exam -->
                            <div class="news_post_comments">
                                <div class="comments_title">EXAM</div>
                                <ul class="comments_list">
                                    <div class="news_post_date_container">
                                        <div class="news_post_date d-flex flex-column align-items-center justify-content-center">
                                            <div><a href="question?id=<%= theory.getId()%>">EXAM</a></div>
                                        </div>
                                    </div>
                                    <div class="news_post_title_container">

                                    </div>
                                </ul>

                            </div>

                            <!-- Leave Comment -->

                            <div class="leave_comment">
                                <div class="leave_comment_title">Leave a comment</div>

                                <div class="leave_comment_form_container">
                                    <form action="post">
                                        <input id="comment_form_name" class="input_field contact_form_name" type="text" placeholder="Name" required="required" data-error="Name is required.">
                                        <input id="comment_form_email" class="input_field contact_form_email" type="email" placeholder="E-mail" required="required" data-error="Valid email is required.">
                                        <textarea id="comment_form_message" class="text_field contact_form_message" name="message" placeholder="Message" required="required" data-error="Please, write us a message."></textarea>
                                        <button id="comment_send_btn" type="submit" class="comment_send_btn trans_200" value="Submit">send message</button>
                                    </form>
                                </div>
                            </div>

                        </div>

                        <!-- Sidebar Column -->

                        <div class="col-lg-4">
                            <div class="sidebar">

                                <!-- Archives -->
                                <div class="sidebar_section">
                                    <div class="sidebar_section_title">
                                        <h3>Archives</h3>
                                    </div>
                                    <ul class="sidebar_list">
                                        <li class="sidebar_list_item"><a href="#">Design Courses</a></li>
                                        <li class="sidebar_list_item"><a href="#">All you need to know</a></li>
                                        <li class="sidebar_list_item"><a href="#">Uncategorized</a></li>
                                        <li class="sidebar_list_item"><a href="#">About Our Departments</a></li>
                                        <li class="sidebar_list_item"><a href="#">Choose the right course</a></li>
                                    </ul>
                                </div>

                                <!-- Latest Posts -->

                                <div class="sidebar_section">
                                    <div class="sidebar_section_title">
                                        <h3>Latest posts</h3>
                                    </div>

                                    <div class="latest_posts">

                                        <!-- Latest Post -->
                                        <div class="latest_post">
                                            <div class="latest_post_image">
                                                <img src="images/latest_1.jpg" alt="https://unsplash.com/@dsmacinnes">
                                            </div>
                                            <div class="latest_post_title"><a href="news_post.html">Why do you need a qualification?</a></div>
                                            <div class="latest_post_meta">
                                                <span class="latest_post_author"><a href="#">By Christian Smith</a></span>
                                                <span>|</span>
                                                <span class="latest_post_comments"><a href="#">3 Comments</a></span>
                                            </div>
                                        </div>

                                        <!-- Latest Post -->
                                        <div class="latest_post">
                                            <div class="latest_post_image">
                                                <img src="images/latest_2.jpg" alt="https://unsplash.com/@erothermel">
                                            </div>
                                            <div class="latest_post_title"><a href="news_post.html">Why do you need a qualification?</a></div>
                                            <div class="latest_post_meta">
                                                <span class="latest_post_author"><a href="#">By Christian Smith</a></span>
                                                <span>|</span>
                                                <span class="latest_post_comments"><a href="#">3 Comments</a></span>
                                            </div>
                                        </div>

                                        <!-- Latest Post -->
                                        <div class="latest_post">
                                            <div class="latest_post_image">
                                                <img src="images/latest_3.jpg" alt="https://unsplash.com/@element5digital">
                                            </div>
                                            <div class="latest_post_title"><a href="news_post.html">Why do you need a qualification?</a></div>
                                            <div class="latest_post_meta">
                                                <span class="latest_post_author"><a href="#">By Christian Smith</a></span>
                                                <span>|</span>
                                                <span class="latest_post_comments"><a href="#">3 Comments</a></span>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                                <!-- Tags -->

                                <div class="sidebar_section">
                                    <div class="sidebar_section_title">
                                        <h3>Tags</h3>
                                    </div>
                                    <div class="tags d-flex flex-row flex-wrap">
                                        <div class="tag"><a href="#">Course</a></div>
                                        <div class="tag"><a href="#">Design</a></div>
                                        <div class="tag"><a href="#">FAQ</a></div>
                                        <div class="tag"><a href="#">Teachers</a></div>
                                        <div class="tag"><a href="#">School</a></div>
                                        <div class="tag"><a href="#">Graduate</a></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
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
        <script src="js/news_post_custom.js"></script>

    </body>
    <% }
//        session.removeAttribute("theory");
    %>
</html>