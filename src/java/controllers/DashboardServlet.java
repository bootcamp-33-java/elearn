/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Employee;
import tools.HibernateUtil;

/**
 *
 * @author BWP
 */
@WebServlet(name = "Dashboard", urlPatterns = {"/dashboard"})
public class DashboardServlet extends HttpServlet {

    private GeneralDAO<Employee> edao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Employee.class);

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
            /* TODO output your page here. You may use following sample code. */
            request.getSession().setAttribute("employees", edao.getData(null));

            RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
            rd.include(request, response);
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
        PrintWriter out = response.getWriter();
        if (request.getParameter("action") != null && request.getParameter("id") != null) {
            if (request.getParameter("action").equals("delete")) {
                out.println("<script src= 'https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'> </script>");
                out.println("<script src= 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                out.println("<script src= 'https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("swal({");
                out.println("title: \"Are you sure?\",");
                out.println("text: \"Once deleted, you will not be able to recover this imaginary file!\",");
                out.println(" icon: \"warning\",");
                out.println("buttons: true,");
                out.println("dangerMode: true, \n})");
                out.println(".then((willDelete) => {\n"
                        + "  if (willDelete) {\n"
                        + "    swal(\"Poof! Your imaginary file has been deleted!\", {\n"
                        + "      icon: \"success\",\n"
                        + "    });");
//                edao.saveOrDelete(new Employee(request.getParameter("id")), true);
                edao.saveOrDelete(new Employee(request.getParameter("id"), "0","5",new Short("0"), "0", Date.valueOf("2000-01-01")), true);
                out.println("} else {\n"
                        + "    swal(\"Your imaginary file is safe!\");\n"
                        + "  }");

                out.println("});");
                out.println("});");
                out.println("</script>");
            } else if (request.getParameter("action").equals("update")) {
                Employee employee = edao.getById(Integer.parseInt(request.getParameter("id")));
                request.getSession().setAttribute("employee", employee);
//                request.setAttribute("idnya", region.getId());
//                request.setAttribute("namanya", region.getName());
            }
//            } else if (request.getParameter("action").equals("update")) {
////                request.getSession().setAttribute("idnya", request.getParameter("id"));
//
//            }
        }
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
