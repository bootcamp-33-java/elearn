<%-- 
    Document   : header_student
    Created on : Feb 16, 2020, 1:35:08 PM
    Author     : BWP
--%>

<%@page import="models.Role"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header d-flex flex-row">
    <div class="header_content d-flex flex-row align-items-center">
        <!-- Logo -->
        <div class="logo_container">
            <div class="logo">
                <img src="images/logo.png" alt="">
                <span>course</span>
            </div>
        </div>
        <!-- Main Navigation -->
        <nav class="main_nav_container">
            <div class="main_nav">
                <ul class="main_nav_list">

                    <li class="main_nav_item"><a href="index">home</a></li>
                    <li class="main_nav_item"><a href="#">about us</a></li>


                    <% if (session.getAttribute("role") == null) { %> 
                    <li class="main_nav_item"><a href="contact.html">contact</a></li>
                    <li class="main_nav_item"><a href = "#" data-toggle = "modal" data-target = "#LoginModal">Login</a></li>

                    <% } else {%>
                    <li class="main_nav_item"><a href="theory_list?id=<%=session.getAttribute("idTrainer")%>">theory</a></li>
                    
                    <li class="main_nav_item"><a href="forum">forum</a></li>
                    <li class="main_nav_item"><a href="contact.html">contact</a></li>
                    <li class="main_nav_item"><a href = "logout" >Logout</a></li>
                        <%}%>
                </ul>
            </div>
        </nav>
    </div>
    <div class="header_side d-flex flex-row justify-content-center align-items-center">
        <img src="images/phone-call.svg" alt="">
        <span>+43 4566 7788 2457</span>
    </div>

    <!-- Hamburger -->
    <div class="hamburger_container">
        <i class="fas fa-bars trans_200"></i>
    </div>

</header>
