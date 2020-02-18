/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.AccountDAO;
import daos.EmpRoleDAO;
import daos.EmployeeDAO;
import daos.GeneralDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Account;
import models.Employee;
import models.EmployeeRole;
import org.mindrot.jbcrypt.BCrypt;
import tools.HibernateUtil;

/**
 *
 * @author BWP
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private static String token;
    private AccountDAO<Account> accountDAO = new AccountDAO<>(HibernateUtil.getSessionFactory(), Account.class);
    private EmployeeDAO<Employee> empdao = new EmployeeDAO<>(HibernateUtil.getSessionFactory(), Employee.class);
    EmpRoleDAO<EmployeeRole> erdao = new EmpRoleDAO<>(HibernateUtil.getSessionFactory(), EmployeeRole.class);
    String role;
    String idTrainer;
    private Employee employee;

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
            if (role.equals("Admin")) {
                request.getSession().setAttribute("employee", employee);
                request.getSession().setAttribute("role", role);
                response.sendRedirect("dashboard.jsp");
            } else if (role.equals("Student") || role.equals("Trainer")) {
                request.getSession().setAttribute("employee", employee);
                request.getSession().setAttribute("role", role);
//                idTrainer = "a";    
                request.getSession().setAttribute("idTrainer", idTrainer);
                response.sendRedirect("index.jsp");
            } else {
                RequestDispatcher rd;
                rd = request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
                response.sendRedirect("index.jsp");
            }
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
        role = "";
        token = request.getParameter("token");
        PrintWriter out = response.getWriter();
        //verifikasi account
        //Account account = accountDAO.getByToken(token);
        try {
            Account account = accountDAO.getByToken(token);
            if (account != null) {
                account = new Account(account.getId(), account.getPassword(), new Short("1"), account.getToken());
                accountDAO.saveOrDelete(account, false);
                out.println("<script src= 'https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'> </script>");
                out.println("<script src= 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                out.println("<script src= 'https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("swal ('Sukses !', 'Email berhasil diverifikasi!', 'success');");
                out.println("});");
                out.println("</script>");
            }
//            Account accountSave = new Account(account.getId(), token, 0, token, employee);
//            accountDAO.saveOrDelete(employees, true);
            processRequest(request, response);
        } catch (Exception e) {

        }
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            employee = empdao.getByEmail(email);
            idTrainer = employee.getId();
            if (employee != null) {
                Account a = accountDAO.getById(employee.getId());
                if (BCrypt.checkpw(password, a.getPassword())) {
                    if (erdao.getByEmployee(employee.getId()).getRole().getName().equals("Trainer")) {
                        role = "Trainer";
                    } else if (erdao.getByEmployee(employee.getId()).getRole().getName().equals("Admin")) {
                        role = "Admin";
                    } else if (erdao.getByEmployee(employee.getId()).getRole().getName().equals("Student")) {
                        role = "Student";
                    } else {
                        role = "Gagal";
                    }
                } else {
                    role = "Gagal";
                    out.println("<script src= 'https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'> </script>");
                    out.println("<script src= 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                    out.println("<script src= 'https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
                    out.println("<script>");
                    out.println("$(document).ready(function(){");
                    out.println("swal ('Gagal !', 'Gagal login!', 'error');");
                    out.println("});");
                    out.println("</script>");
                }
            }
            processRequest(request, response);
        } catch (Exception e) {
        }

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
