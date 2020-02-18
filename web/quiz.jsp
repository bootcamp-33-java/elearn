<%-- 
    Document   : quiz
    Created on : Feb 14, 2020, 5:52:20 PM
    Author     : BWP
--%>

<%@page import="java.util.List"%>
<%@page import="models.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Quick Quiz - Play</title>
        <%@include file="app.jsp" %>
        <%@include file="app2.jsp" %>
        <% // //script plate
            if (session.getAttribute("questionsession") == null) {
                response.sendRedirect("quiz");
            } else {
                List<Question> quizz = (List<Question>) session.getAttribute("questionsession");
                
        %>
        
    </head>
    <body>
        <div class="container">
            <div id="loader"></div>
            <div id="game" class="justify-center flex-column hidden">
                <div id="hud">
                    <div id="hud-item">
                        <p id="progressText" class="hud-prefix">
                            Question
                        </p>
                        <div id="progressBar">
                            <div id="progressBarFull"></div>
                        </div>
                    </div>
                    <div id="hud-item">
                        <p class="hud-prefix">
                            Score
                        </p>
                        <h1 class="hud-main-text" id="score">
                            0
                        </h1>
                    </div>
                </div>
                <h2 id="question"></h2>
                <div class="choice-container">
                    <p class="choice-prefix">A</p>
                    <p class="choice-text" data-number="1"></p>
                </div>
                <div class="choice-container">
                    <p class="choice-prefix">B</p>
                    <p class="choice-text" data-number="2"></p>
                </div>
                <div class="choice-container">
                    <p class="choice-prefix">C</p>
                    <p class="choice-text" data-number="3"></p>
                </div>
                <div class="choice-container">
                    <p class="choice-prefix">D</p>
                    <p class="choice-text" data-number="4"></p>
                </div>
            </div>
        </div>
        <%@include file="app3.jsp" %>
    </body>
</html>