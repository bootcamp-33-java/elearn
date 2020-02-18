<%-- 
    Document   : test
    Created on : Feb 11, 2020, 2:56:24 PM
    Author     : TUF FX504
--%>

<%@page import="models.Account"%>
<%@page import="models.Role"%>
<%@page import="models.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>E-Learning Bootcamp</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="styles/contact_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
        <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
    </head>
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
                            <li class="menu_item menu_mm"><a href="#">Home</a></li>
                            <li class="menu_item menu_mm"><a href="#">About us</a></li>
                            <li class="menu_item menu_mm"><a href="pg">Courses</a></li>
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
                <!-- Hero Slider -->
                <div class="hero_slider_container">
                    <div class="hero_slider owl-carousel">

                        <!-- Hero Slide -->
                        <div class="hero_slide">
                            <div class="hero_slide_background" style="background-image:url(images/slider_background.jpg)"></div>
                            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
                                <div class="hero_slide_content text-center">
                                    <h1 data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut">Get your <span>Education</span> today!</h1>
                                </div>
                            </div>
                        </div>

                        <!-- Hero Slide -->
                        <div class="hero_slide">
                            <div class="hero_slide_background" style="background-image:url(images/slider_background.jpg)"></div>
                            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
                                <div class="hero_slide_content text-center">
                                    <h1 data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut">Get your <span>Education</span> today!</h1>
                                </div>
                            </div>
                        </div>

                        <!-- Hero Slide -->
                        <div class="hero_slide">
                            <div class="hero_slide_background" style="background-image:url(images/slider_background.jpg)"></div>
                            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
                                <div class="hero_slide_content text-center">
                                    <h1 data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut">Get your <span>Education</span> today!</h1>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="hero_slider_left hero_slider_nav trans_200"><span class="trans_200">prev</span></div>
                    <div class="hero_slider_right hero_slider_nav trans_200"><span class="trans_200">next</span></div>
                </div>

            </div>

            <div class="hero_boxes">
                <div class="hero_boxes_inner">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-4 hero_box_col">
                                <div class="hero_box d-flex flex-row align-items-center justify-content-start">
                                    <img src="images/earth-globe.svg" class="svg" alt="">
                                    <div class="hero_box_content">
                                        <h2 class="hero_box_title">Online Courses</h2>
                                        <a href="courses.html" class="hero_box_link">view more</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 hero_box_col">
                                <div class="hero_box d-flex flex-row align-items-center justify-content-start">
                                    <img src="images/books.svg" class="svg" alt="">
                                    <div class="hero_box_content">
                                        <h2 class="hero_box_title">Our Library</h2>
                                        <a href="courses.html" class="hero_box_link">view more</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 hero_box_col">
                                <div class="hero_box d-flex flex-row align-items-center justify-content-start">
                                    <img src="images/professor.svg" class="svg" alt="">
                                    <div class="hero_box_content">
                                        <h2 class="hero_box_title">Our Teachers</h2>
                                        <a href="teachers.html" class="hero_box_link">view more</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Popular -->

            <div class="popular page_section">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title text-center">
                                <h1>Popular Courses</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row course_boxes">

                        <!-- Popular Course Item -->
                        <div class="col-lg-4 course_box">
                            <div class="card">
                                <img class="card-img-top" src="images/course_1.jpg" alt="https://unsplash.com/@kellybrito">
                                <div class="card-body text-center">
                                    <div class="card-title"><a href="courses.html">A complete guide to design</a></div>
                                    <div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
                                </div>
                                <div class="price_box d-flex flex-row align-items-center">
                                    <div class="course_author_image">
                                        <img src="images/author.jpg" alt="https://unsplash.com/@mehdizadeh">
                                    </div>
                                    <div class="course_author_name">Michael Smith, <span>Author</span></div>
                                    <div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$29</span></div>
                                </div>
                            </div>
                        </div>

                        <!-- Popular Course Item -->
                        <div class="col-lg-4 course_box">
                            <div class="card">
                                <img class="card-img-top" src="images/course_2.jpg" alt="https://unsplash.com/@cikstefan">
                                <div class="card-body text-center">
                                    <div class="card-title"><a href="courses.html">Beginners guide to HTML</a></div>
                                    <div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
                                </div>
                                <div class="price_box d-flex flex-row align-items-center">
                                    <div class="course_author_image">
                                        <img src="images/author.jpg" alt="https://unsplash.com/@mehdizadeh">
                                    </div>
                                    <div class="course_author_name">Michael Smith, <span>Author</span></div>
                                    <div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$29</span></div>
                                </div>
                            </div>
                        </div>

                        <!-- Popular Course Item -->
                        <div class="col-lg-4 course_box">
                            <div class="card">
                                <img class="card-img-top" src="images/course_3.jpg" alt="https://unsplash.com/@dsmacinnes">
                                <div class="card-body text-center">
                                    <div class="card-title"><a href="courses.html">Advanced Photoshop</a></div>
                                    <div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
                                </div>
                                <div class="price_box d-flex flex-row align-items-center">
                                    <div class="course_author_image">
                                        <img src="images/author.jpg" alt="https://unsplash.com/@mehdizadeh">
                                    </div>
                                    <div class="course_author_name">Michael Smith, <span>Author</span></div>
                                    <div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$29</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>		
            </div>

            <!-- Register -->

            <div class="register">

                <div class="container-fluid">

                    <div class="row row-eq-height">
                        <div class="col-lg-6 nopadding">

                            <!-- Register -->

                            <div class="register_section d-flex flex-column align-items-center justify-content-center">
                                <div class="register_content text-center">
                                    <h1 class="register_title">Register now and get a discount <span>50%</span> discount until 1 January</h1>
                                    <p class="register_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum. Aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempo.</p>
                                    <div class="button button_1 register_button mx-auto trans_200"><a href="#">register now</a></div>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-6 nopadding">

                            <!-- Search -->

                            <div class="search_section d-flex flex-column align-items-center justify-content-center">
                                <div class="search_background" style="background-image:url(images/search_background.jpg);"></div>
                                <div class="search_content text-center">
                                    <h1 class="search_title">Search for your course</h1>
                                    <form id="search_form" class="search_form" action="post">
                                        <input id="search_form_name" class="input_field search_form_name" type="text" placeholder="Course Name" required="required" data-error="Course name is required.">
                                        <input id="search_form_category" class="input_field search_form_category" type="text" placeholder="Category">
                                        <input id="search_form_degree" class="input_field search_form_degree" type="text" placeholder="Degree">
                                        <button id="search_submit_button" type="submit" class="search_submit_button trans_200" value="Submit">search course</button>
                                    </form>
                                </div> 
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Services -->

            <div class="services page_section">

                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="section_title text-center">
                                <h1>Our Services</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row services_row">

                        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/earth-globe.svg" alt="">
                            </div>
                            <h3>Online Courses</h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/exam.svg" alt="">
                            </div>
                            <h3>Indoor Courses</h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/books.svg" alt="">
                            </div>
                            <h3>Amazing Library</h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/professor.svg" alt="">
                            </div>
                            <h3>Exceptional Professors</h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/blackboard.svg" alt="">
                            </div>
                            <h3>Top Programs</h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                        <div class="col-lg-4 service_item text-left d-flex flex-column align-items-start justify-content-start">
                            <div class="icon_container d-flex flex-column justify-content-end">
                                <img src="images/mortarboard.svg" alt="">
                            </div>
                            <h3>Graduate Diploma</h3>
                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Testimonials -->

            <div class="testimonials page_section">
                <!-- <div class="testimonials_background" style="background-image:url(images/testimonials_background.jpg)"></div> -->
                <div class="testimonials_background_container prlx_parent">
                    <div class="testimonials_background prlx" style="background-image:url(images/testimonials_background.jpg)"></div>
                </div>
                <div class="container">

                    <div class="row">
                        <div class="col">
                            <div class="section_title text-center">
                                <h1>What our students say</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">

                            <div class="testimonials_slider_container">

                                <!-- Testimonials Slider -->
                                <div class="owl-carousel owl-theme testimonials_slider">

                                    <!-- Testimonials Item -->
                                    <div class="owl-item">
                                        <div class="testimonials_item text-center">
                                            <div class="quote">“</div>
                                            <p class="testimonials_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                                            <div class="testimonial_user">
                                                <div class="testimonial_image mx-auto">
                                                    <img src="images/testimonials_user.jpg" alt="">
                                                </div>
                                                <div class="testimonial_name">james cooper</div>
                                                <div class="testimonial_title">Graduate Student</div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Testimonials Item -->
                                    <div class="owl-item">
                                        <div class="testimonials_item text-center">
                                            <div class="quote">“</div>
                                            <p class="testimonials_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                                            <div class="testimonial_user">
                                                <div class="testimonial_image mx-auto">
                                                    <img src="images/testimonials_user.jpg" alt="">
                                                </div>
                                                <div class="testimonial_name">james cooper</div>
                                                <div class="testimonial_title">Graduate Student</div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Testimonials Item -->
                                    <div class="owl-item">
                                        <div class="testimonials_item text-center">
                                            <div class="quote">“</div>
                                            <p class="testimonials_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum.</p>
                                            <div class="testimonial_user">
                                                <div class="testimonial_image mx-auto">
                                                    <img src="images/testimonials_user.jpg" alt="">
                                                </div>
                                                <div class="testimonial_name">james cooper</div>
                                                <div class="testimonial_title">Graduate Student</div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- Events -->

            <div class="events page_section">
                <div class="container">

                    <div class="row">
                        <div class="col">
                            <div class="section_title text-center">
                                <h1>Upcoming Events</h1>
                            </div>
                        </div>
                    </div>

                    <div class="event_items">

                        <!-- Event Item -->
                        <div class="row event_item">
                            <div class="col">
                                <div class="row d-flex flex-row align-items-end">

                                    <div class="col-lg-2 order-lg-1 order-2">
                                        <div class="event_date d-flex flex-column align-items-center justify-content-center">
                                            <div class="event_day">07</div>
                                            <div class="event_month">January</div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 order-lg-2 order-3">
                                        <div class="event_content">
                                            <div class="event_name"><a class="trans_200" href="#">Student Festival</a></div>
                                            <div class="event_location">Grand Central Park</div>
                                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor.</p>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 order-lg-3 order-1">
                                        <div class="event_image">
                                            <img src="images/event_1.jpg" alt="https://unsplash.com/@theunsteady5">
                                        </div>
                                    </div>

                                </div>	
                            </div>
                        </div>

                        <!-- Event Item -->
                        <div class="row event_item">
                            <div class="col">
                                <div class="row d-flex flex-row align-items-end">

                                    <div class="col-lg-2 order-lg-1 order-2">
                                        <div class="event_date d-flex flex-column align-items-center justify-content-center">
                                            <div class="event_day">07</div>
                                            <div class="event_month">January</div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 order-lg-2 order-3">
                                        <div class="event_content">
                                            <div class="event_name"><a class="trans_200" href="#">Open day in the Univesrsity campus</a></div>
                                            <div class="event_location">Grand Central Park</div>
                                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor.</p>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 order-lg-3 order-1">
                                        <div class="event_image">
                                            <img src="images/event_2.jpg" alt="https://unsplash.com/@claybanks1989">
                                        </div>
                                    </div>

                                </div>	
                            </div>
                        </div>

                        <!-- Event Item -->
                        <div class="row event_item">
                            <div class="col">
                                <div class="row d-flex flex-row align-items-end">

                                    <div class="col-lg-2 order-lg-1 order-2">
                                        <div class="event_date d-flex flex-column align-items-center justify-content-center">
                                            <div class="event_day">07</div>
                                            <div class="event_month">January</div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 order-lg-2 order-3">
                                        <div class="event_content">
                                            <div class="event_name"><a class="trans_200" href="#">Student Graduation Ceremony</a></div>
                                            <div class="event_location">Grand Central Park</div>
                                            <p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor.</p>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 order-lg-3 order-1">
                                        <div class="event_image">
                                            <img src="images/event_3.jpg" alt="https://unsplash.com/@juanmramosjr">
                                        </div>
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

        <form action="login" method="POST">
            <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Login Form</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <!-- Contact Form -->
                            <div class="contact_form">
                                <div class="contact_title">Login</div>

                                <div class="contact_form_container">
                                    <input id="contact_form_name" class="input_field contact_form_name" name="email" type="email" placeholder="E-mail" required="required" data-error="Valid email is required.">
                                    <input id="contact_form_email" class="input_field contact_form_email" name="password" type="password" placeholder="Password" required="required" data-error="Valid password is required.">

                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="contact_send_btn trans_200" name="submit">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="plugins/greensock/TweenMax.min.js"></script>
        <script src="plugins/greensock/TimelineMax.min.js"></script>
        <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="plugins/greensock/animation.gsap.min.js"></script>
        <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="js/custom.js"></script>
        <script src= 'https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'> </script>
    </body>
</html>

