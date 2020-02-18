/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kiki
 */

public class NewClass extends HttpServlet{
  
 
    private static final long serialVersionUID = 1L;
  
public void doGet(HttpServletRequest request,
                HttpServletResponse response)
        throws ServletException, IOException
{
  Connection conn=null;
  Statement stmt=null;
  
  // Set response content type
  response.setContentType("application/json");
  PrintWriter out = response.getWriter();
  String title = "Database Result";
  String docType =
    "<!doctype html public \"-//w3c//dtd html 4.0 " +
     "transitional//en\">\n";
     out.println(docType +
     "<html>\n" +
     "<head><title>" + title + "</title></head>\n" +
     "<body bgcolor=\"#f0f0f0\">\n" +
     "<h1 align=\"center\">" + title + "</h1>\n");
  try{
     // Register JDBC driver
     Class.forName("oracle.jdbc.OracleDriver");
      
     // Open a connection
//     conn  = DriverManager.getConnection("oracle:thin:@10.102.239.141:1521/VCSTAGE","vcstaging","vcstaging");
     conn  = DriverManager.getConnection("oracle:thin:@localhost:1521/e_learning","e_learning","makankuy");
    
//  jdbc:oracle:thin:@localhost:1521:XE [e_learning on E_LEARNING]
     // Execute SQL query
     stmt = conn.createStatement();
     String sql;
      sql = "SELECT * FROM ANSWER_QUESTION";
     
     ResultSet rs = stmt.executeQuery(sql);
  
     // Extract data from result set
     while(rs.next()){
        //Retrieve by column name
        int id  = rs.getInt("id");
        int answer = rs.getInt("answer");
        int is_true = rs.getInt("is_true");
        int emp_bundle_answer = rs.getInt("emp_bundle_answer");
        int question = rs.getInt("question");
        
          
  
        //Display values
        out.println("id: " + id + "<br>");
        out.println(", answer: " + answer + "<br>");
        out.println(", is_true: " + is_true + "<br>");
        out.println(", emp_bundle_answer: " + emp_bundle_answer + "<br>");
        out.println(", question: " + question + "<br>");
          
     }
  
     out.println("</body></html>");
  
     // Clean-up environment
     rs.close();
     stmt.close();
     conn.close();
    }catch(SQLException se){
     //Handle errors for JDBC
      se.printStackTrace();
    }catch(Exception e){
       //Handle errors for Class.forName
     e.printStackTrace();
    }finally{
       //finally block used to close resources
          
     try{
        if(stmt!=null)
           stmt.close();
     }catch(SQLException se2){
     }// nothing we can do
     try{
        if(conn!=null)
        conn.close();
     }catch(SQLException se){
        se.printStackTrace();
     }//end finally try
    } //end try
   }
   } 