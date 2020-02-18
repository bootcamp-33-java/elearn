/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.EmployeeDAO;
import daos.GeneralDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Account;
import models.Employee;
import models.EmployeeRole;
import models.Role;
import org.mindrot.jbcrypt.BCrypt;
import tools.HibernateUtil;

/**
 *
 * @author BWP
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    private GeneralDAO<Employee> edao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Employee.class);
    private GeneralDAO<Role> roledao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Role.class);
    private GeneralDAO<Account> adao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Account.class);
    private GeneralDAO<EmployeeRole> emproledao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), EmployeeRole.class);

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

            request.getSession().setAttribute("roles", roledao.getData(null));
//            request.getSession().setAttribute("departments", ddao.getData(null));
//            request.getSession().setAttribute("managers", edao.getData(null));
            RequestDispatcher rd = request.getRequestDispatcher("register_admin.jsp");
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
        String nik = request.getParameter("nik");
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String hireDate = request.getParameter("hireDate");
        String role = request.getParameter("role");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Employee employee = new Employee(nik, name, email, new Short("0"), phoneNumber, Date.valueOf(hireDate));
            edao.saveOrDelete(employee, false);
            // mendapatkan email
            String pass = BCrypt.hashpw(password, BCrypt.gensalt()); //setting password menggunakan bcrypt
            int n = 50; //panjang karakter acak token
            String tokennya = RegisterServlet.getAlphaNumericString(n); //membuat tokennya dengan panjang n
            Account account = new Account(nik, pass, new Short("0"), tokennya, new Employee(nik));
            adao.saveOrDelete(account, false);

            Account account1 = adao.getById(nik); //untuk mendapatkan tokennya
            //Kirim email
            JavaMailUtil.sendMail(email, "http://localhost:8084/e_learning/login?token=" + account1.getToken());

            out.println("<script src= 'https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'> </script>");
            out.println("<script src= 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
            out.println("<script src= 'https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
            out.println("<script>");
            out.println("$(document).ready(function(){");
            out.println("swal ('Sukses !', 'Data berhasil disimpan \n Please verify your email!', 'success');");
            out.println("});");
            out.println("</script>");
        } catch (Exception e) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, e);          
            
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

    /**
     * untuk mendapatkan random token
     *
     * @param n panjang token
     * @return
     */
    static String getAlphaNumericString(int n) {

        // chose a Character random from this String 
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz";

        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(n);

        for (int i = 0; i < n; i++) {

            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index
                    = (int) (AlphaNumericString.length()
                    * Math.random());

            // add Character one by one in end of sb 
            sb.append(AlphaNumericString
                    .charAt(index));
        }

        return sb.toString();
    }
}
