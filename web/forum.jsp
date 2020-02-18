<%-- 
    Document   : forum
    Created on : Feb 15, 2020, 1:41:07 PM
    Author     : TUF FX504
--%>

<%@page import="models.EmpAction"%>
<%@page import="models.Forum"%>
<%@page import="java.util.List"%>
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
    </head>
    <% // //script plate
        if (session.getAttribute("forumsession") == null) {
            response.sendRedirect("forum");
        } else {
            List<Forum> forummm = (List<Forum>) session.getAttribute("forumsession");
            List<EmpAction> ea = (List<EmpAction>) session.getAttribute("empactionnnsession");
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
                                <% for (EmpAction empa : ea) {%>
                                <div class="news_post_top d-flex flex-column flex-sm-row">
                                    <div class="news_post_date_container">
                                        <div class="news_post_date d-flex flex-column align-items-center justify-content-center">
                                            <div>18</div>
                                            <div>dec</div>
                                        </div>
                                    </div>
                                    <div class="news_post_title_container">
                                        <div class="news_post_title">
                                            <a href="forumdetail?id=<%=empa.getForum().getId() %>"><%=empa.getForum().getTopic()%></a>
                                        </div>
                                        <div class="news_post_meta">
                                            <span class="news_post_author"><a href="#">By <%=empa.getEmployee().getName()%></a></span>
                                            <span>|</span>
                                            <span class="news_post_comments"><a href="#">3 Reply</a></span>
                                            <span>|</span>
                                            <span class="news_post_comments"><a href="#">+1 Rate</a></span>
                                        </div>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>

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

                    <!-- Sidebar Column -->


                </div>
            </div>
        </div>

        <!-- Footer -->

        <!-- Header -->
        <%@include file="footer_student.jsp"%>

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
