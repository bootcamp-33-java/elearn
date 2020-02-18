/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import daos.EmployeeDAO;
import daos.GeneralDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Employee;
import models.StudyClass;
import models.Theory;
import tools.HibernateUtil;

/**
 *
 * @author BWP
 */
@WebServlet(name = "AddTeoryServlet", urlPatterns = {"/addtheory"})
public class AddTheoryServlet extends HttpServlet {

    private GeneralDAO<StudyClass> scdao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), StudyClass.class);
    private EmployeeDAO<Employee> empdao = new EmployeeDAO<>(HibernateUtil.getSessionFactory(), Employee.class);
    private GeneralDAO<Theory> thedao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Theory.class);

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
        try (PrintWriter out = response.getWriter()) {
            //membuat session class
            request.getSession().setAttribute("classes", scdao.getData(null));
            //membuat session untuk nama creator
            Employee e = empdao.getById(request.getSession().getAttribute("idTrainer").toString());
            request.setAttribute("namaTrainer", e.getName());
            response.sendRedirect("add_theory.jsp");
        }
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
        PrintWriter out = response.getWriter();
//        Int id = 0;
        String title = request.getParameter("title");
        String definition = request.getParameter("definition");
        String file = request.getParameter("file");
        String creator = request.getParameter("creator");
        String classs = request.getParameter("class");
        Theory theory = new Theory(0, title, definition, file, new Employee(creator), new StudyClass(new Integer(classs)));
        try {
            thedao.insert(theory);

        } catch (Exception e) {
        }
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
