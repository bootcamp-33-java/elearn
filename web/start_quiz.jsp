<%-- 
    Document   : start_quiz
    Created on : Feb 14, 2020, 5:43:40 PM
    Author     : BWP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="app.jsp" %>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Quick Quiz</title>
    <link rel="stylesheet" href="app.css" />
  </head>
  <body>
    <div class="container">
      <div id="home" class="flex-center flex-column">
        <h1>Quick Quiz</h1>
        <a class="btn" href="quiz">Play</a>
        <a class="btn" href="/highscores.html">High Scores</a>
      </div>
    </div>
  </body>
</html>