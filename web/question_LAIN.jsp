<%-- 
    Document   : question
    Created on : Feb 14, 2020, 8:48:00 AM
    Author     : BWP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Question"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="css.jsp" %>
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
    <body background = "12.jpg">

        <div class="popular page_section" style="background-image:url(doodles.png)">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="section_title text-center">
                            <h1>SILAHKAN KERJAKAN SOAL</h1>
                        </div>
                    </div>
                </div>
                <form id="regForm" action="question" method="POST">
                    <div class="row">              
                        <div class="col-sm-12 text-center">
                            <div class="alert alert-warning alert-dismissible text-center" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Aturan Main : </strong> Silahkan kerjakan soal dengan baik dan benar. 

                            </div>
                            <div class="jumbotron">
                                <div class="row">
                                    <div class="container col-sm-8">
                                        <% int i = 1;
                                        for (Question q : questions) {%>

                                        <p><%=i++%>. <%=q.getQuestion()%></p>
                                        <table id="d_table" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input type="radio" name="answer"  value="a"  />
                                                        a.<%= q.getOptionA()%></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="radio" name="answer" value="b"  />
                                                        b. <%= q.getOptionB()%></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="radio" name="answer"  value="c"  />
                                                        c. <%= q.getOptionC()%></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="radio" name="answer" value="d"  />
                                                        d. <%= q.getOptionD()%></td>
                                                </tr>

                                            </tbody>
                                        </table>
                                        <br>
                                        <input type="submit" value="pilih" />
                                        <%}%>

                                    </div>
                                </div>
                            </div>

                            </form>
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
                            <%@include file="js.jsp" %>
                        </div>
                    </div>
            </div>
        </div>
    </body>
    <% }
        session.removeAttribute("questions");

    %>
</html>

