<%-- 
    Document   : questions
    Created on : Feb 16, 2020, 12:26:22 AM
    Author     : HENSTECH
--%>
<%@page import="java.util.List"%>
<%@page import="models.Question"%>
<% if (session.getAttribute("questionsession") == null) {
        response.sendRedirect("question");

    } else {
        List<Question> questions = (List<Question>) session.getAttribute("questionsession");
%>

<script>
    var questions = [
    <% int i = 1;
            for (Question q : questions) {%>
        ["<%=q.getQuestion()%>", "<%= q.getOption1()%>", "<%= q.getOption2()%>", "<%= q.getOption3()%>", "None", "<%= q.getKey()%>"],
    <% } %>
    ];
</script>

<% }%>