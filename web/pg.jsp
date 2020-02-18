<%-- 
    Document   : question
    Created on : Feb 11, 2020, 6:34:26 PM
    Author     : HENSTECH
--%>

<%@page import="models.Question"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Course</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
    </head>
    <% if (session.getAttribute("questionsession") == null) {
            response.sendRedirect("question");

        } else {
            List<Question> questions = (List<Question>) session.getAttribute("questionsession");
    %>
    <body>

        <div class="super_container">

            <!-- Header -->


            <!-- Hamburger -->
            <div class="hamburger_container">
                <i class="fas fa-bars trans_200"></i>
            </div>

        </header>

        <!-- Menu -->

        <!-- Home -->


        <!-- Popular -->

        <div class="popular page_section">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="section_title text-center">
                            <h1>SILAHKAN KERJAKAN SOAL</h1>
                        </div>
                    </div>
                </div>

                <div class="row">              
                    <div class="col-sm-12 text-center">
                        <div class="alert alert-warning alert-dismissible text-center" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Aturan Main : </strong> Soal dan jawaban akan tampil secara acak. setiap jawaban benar maka anda mendapat point +4 dan setiap jawaban salah anda mendapat point -1. 
                            <!-- <br><small>*Swipe ke bawah untuk Memulai kembali kuis.*</small> -->
                        </div>
                        <div class="jumbotron">
                            <div class="row">
                                <% for (Question q : questions) { %>
                                   <div class="container col-sm-8">
                                       <p><%=q.getQuestion() %></p>
                                    <table id="d_table" class="table table-striped table-bordered">


                                        <thead>
                                            <tr>
                                                <th></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><input type="radio" name="a" value="a" checked="checked" />
                                                    a.<%= q.getOptionA()  %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name="a" value="b" checked="checked" />
                                                    b. <%= q.getOptionB()  %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name="a" value="c" checked="checked" />
                                                    c. <%= q.getOptionC()  %></td>
                                            </tr>
                                            <tr>
                                                <td><input type="radio" name="a" value="d" checked="checked" />
                                                    d. <%= q.getOptionD()  %></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <br>
                                    <button  class="btn btn-lg btn-success">Pilih</button>
                                </div>     
                                <% } %>
                                

                                



                            </div>
                        </div>


                        <!-- Services -->


                        <!-- Testimonials -->


                        <!-- Footer -->



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

                        </body>
                        <% }
                            session.removeAttribute("questions");
                            session.removeAttribute("question");

                        %>
                        </html>

