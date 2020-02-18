<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.*" %>
<%
   String res = request.getParameter("hello");
       String user = "system";
       String pass = "makankuy";
       String port = "1521";
       String dbname = "e_learning";
       String host = "localhost";
       String driver = "oracle.jdbc.OracleDriver";
       Connection con;
       PreparedStatement ps;
       ResultSet rs;
       String json = null;
       String url = "jdbc:oracle:thin:@localhost:1521:XE [e_learning on E_LEARNING]";
      

       Map<String,String> map = new HashMap<String,String>();
       List<Map<String,String>> list = new ArrayList<Map<String,String>>();
            
 try
 {
        Class.forName("oracle.jdbc.OracleDriver"); //load driver
         con = DriverManager.getConnection(url,user,pass);
                
        ps = con.prepareStatement("select * from question_answer");
        rs = ps.executeQuery();
                
        out.print("[");
        rs.next();
        while(true)               //fetch record JSON format type
        {
            %>
               "id" : "<%=rs.getInt("id")%>" , "answer" : "<%=rs.getString("answer")%>" , "is_true" : "<%=rs.getString("is_true")%>", "emp_bundle_answer" : "<%=rs.getString("emp_bundle_answer")%>", "question" : "<%=rs.getString("question")%>"                  
            <%
            if(rs.next())
            {
                %>
                    ,
                <%
            }
            else break;
        }
        out.print("]");
                
    }    
    catch(Exception e)
    {
       e.printStackTrace();
    }
%>


