<%-- 
    Document   : index1
    Created on : Feb 16, 2020, 12:18:45 AM
    Author     : HENSTECH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype HTML>
<html>
    <head>
        <%@include file="style.jsp" %>

        <title>QUIZ</title>
        <link href="https://fonts.googleapis.com/css?family=Macondo" rel="stylesheet">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <div id="heading">
            <h1 id="text">QUIZ</h1></div>
        <div id="quiz">
            <div id="question"></div>
            <label class="option"><input type="radio" name="option" value="1" /><span id="option1"></span></label>
            <label class="option"><input type="radio" name="option" value="2" /><span id="option2"></span></label>
            <label class="option"><input type="radio" name="option" value="3" /><span id="option3"></span></label>
            <label class="option"><input type="radio" name="option" value="4" /><span id="option4"></span></label>
            <button id="next" onclick="nextques();">NEXT QUESTION</button>
        </div>
        <div id="result" style="display:none">
        </div>
        <button id="quit" onclick="quit();">Quit</button>
        <%@include file="questions.jsp" %>
        <%@include file="main.jsp" %>
    </body>
</html>