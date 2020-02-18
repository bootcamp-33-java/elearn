<%-- 
    Document   : add_teory
    Created on : Feb 18, 2020, 4:25:26 PM
    Author     : BWP
--%>

<%@page import="models.StudyClass"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Course - Contact</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles/contact_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
    </head>
    <% // //script plate
        if (session.getAttribute("classes") == null) {
            response.sendRedirect("addtheory");
        } else {
            List<StudyClass> classes = (List<StudyClass>) session.getAttribute("classes");
            String nama = (String) session.getAttribute("namaTrainer");
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
                            <li class="menu_item menu_mm"><a href="news.html">News</a></li>
                            <li class="menu_item menu_mm"><a href="#">Contact</a></li>
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
                    <div class="home_background prlx" style="background-image:url(images/contact_background.jpg)"></div>
                </div>
                <div class="home_content">
                    <h1>Contact</h1>
                </div>
            </div>

            <!-- Contact -->

            <div class="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">

                            <!-- Contact Form -->
                            <div class="contact_form">
                                <div class="contact_title">Add Theory</div>

                                <div class="contact_form_container">
                                    <form action="addtheory" method="POST">
                                        <label>Title</label>
                                        <input class="input_field contact_form_name" name="title" type="text"required="required" data-error="Name is required.">
                                        <label>Definition</label>
                                        <textarea class="text_field contact_form_message" name="definition" required="required" data-error="Please, write us a message."></textarea>
                                        <label>Upload file:</label>
                                        <input class="input_field contact_form_name" name="file" type="file" required="required" data-error="Name is required." style="padding:4px">
                                        <input name="creator" type="hidden" value="<%=request.getSession().getAttribute("idTrainer")%>">
                                        <label>Materi: </label>
                                        <select class="form-control" name="class">
                                            <% for (StudyClass c : classes) {%>
                                            <option value="<%=c.getId()%>"><%=c.getName()%></option>
                                            <% } %>
                                        </select>
                                        <br>
                                        <button type="submit" class="contact_send_btn trans_200" value="SAVE">Tambah theory</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Content -->
            <%@include file="footer_student.jsp" %>

            <script src="js/jquery-3.2.1.min.js"></script>
            <script src="styles/bootstrap4/popper.js"></script>
            <script src="styles/bootstrap4/bootstrap.min.js"></script>
            <script src="plugins/greensock/TweenMax.min.js"></script>
            <script src="plugins/greensock/TimelineMax.min.js"></script>
            <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
            <script src="plugins/greensock/animation.gsap.min.js"></script>
            <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
            <script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
            <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
            <script src="plugins/easing/easing.js"></script>
            <script src="js/contact_custom.js"></script>

    </body>
    <%}%>
</html>
