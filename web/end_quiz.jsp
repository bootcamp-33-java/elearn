<%-- 
    Document   : end_quiz
    Created on : Feb 15, 2020, 10:42:23 AM
    Author     : BWP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Congrats!</title>
    <%@include file="app.jsp" %>
  </head>
  <body>
    <div class="container">
      <div id="end" class="flex-center flex-column">
        <h1 id="finalScore"></h1>
        <form>
          <input
            type="text"
            name="username"
            id="username"
            placeholder="username"
          />
          <button
            type="submit"
            class="btn"
            id="saveScoreBtn"
            onclick="saveHighScore(event)"
            disabled
          >
            Save
          </button>
        </form>
        <a class="btn" href="quiz">Play Again</a>
        <a class="btn" href="/">Go Home</a>
      </div>
    </div>
    <%@include file="end_quizJS.jsp" %>
  </body>
</html>