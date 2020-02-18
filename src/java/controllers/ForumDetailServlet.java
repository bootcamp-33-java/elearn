/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.EmpActionDAO;
import daos.GeneralDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.EmpAction;
import models.Forum;
import tools.HibernateUtil;

/**
 *
 * @author TUF FX504
 */
@WebServlet(name = "ForumDetailServlet", urlPatterns = {"/forumdetail"})
public class ForumDetailServlet extends HttpServlet {

    private GeneralDAO<Forum> fdao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Forum.class);
    private EmpActionDAO<EmpAction> empadao = new EmpActionDAO<>(HibernateUtil.getSessionFactory(), EmpAction.class);
    private Forum f;
//    private EmpAction empa;
    private String idforum;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getSession().setAttribute("forumdetailsession", f);
        request.getSession().setAttribute("commentsession", empadao.getReply(idforum));
        
        response.sendRedirect("forum_details.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        idforum = request.getParameter("id");
        f = fdao.getById(new Integer(idforum));
        
//        request.getSession().setAttribute("forumdetailsession", fdao.getById(new Integer(id)));

        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
