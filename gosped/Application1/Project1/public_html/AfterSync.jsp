<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.sql.*"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>AfterSync</title>
  </head>
  <body>
  <%
  try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:test","SYSTEM","admin");
      String sql = "select * from sifmsdb";
      PreparedStatement ps = con.prepareStatement(sql);
      ResultSet rs = ps.executeQuery();
      while(rs.next())
      {
        out.println("<table tableborder='5' bordercolor='blue'>");
        out.println("<tr>");
        out.println("<td>Emp_ID");
        out.println("</td>");
        out.println("<td>Emp_Name");
        out.println("</td>");
        out.println("<td>Designation");
        out.println("</td>");
        out.println("<td>Dept_Id");
        out.println("</td>");
        out.println("<td>Place_Id");
        out.println("</td>");
        out.println("<td>Basic_Pay");
        out.println("</td>");
        out.println("<td>Gross_Pay");
        out.println("</td>");
        out.println("<td>Emp_Type");
        out.println("</td>");
        out.println("<td>Daate_Of_Joining");
        out.println("</td>");
        out.println("<td>Date_Of_Birth");
        out.println("</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>"+rs.getString("emp_id"));
        out.println("</td>");
        out.println("<td>"+rs.getString("emp_name"));
        out.println("</td>");
        out.println("<td>"+rs.getString("Designation"));
        out.println("</td>");
        out.println("<td>"+rs.getString("dep_id"));
        out.println("</td>");
        out.println("<td>"+rs.getString("place_id"));
        out.println("</td>");
        out.println("<td>"+rs.getString("basic_pay"));
        out.println("</td>");
        out.println("<td>"+rs.getString("gross_pay"));
        out.println("</td>");
        out.println("<td>"+rs.getString("emp_type"));
        out.println("</td>");
        out.println("<td>"+rs.getString("Date_of_Joining"));
        out.println("</td>");
        out.println("<td>"+rs.getString("Date_of_Birth"));
        out.println("</td>");
        out.println("</tr>");
        out.println("</table>");
      }
    }
    catch(ClassNotFoundException e1){}
    catch(Exception e1){}
    %>
  </body>
</html>