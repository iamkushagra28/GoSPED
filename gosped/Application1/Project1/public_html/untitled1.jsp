<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.sql.*"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>untitled1</title>
  </head>
  <body>
  <%
  String a = request.getParameter("t1");
  String b = request.getParameter("t2");
  out.println(a);
  out.println(b);
   try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:test","SYSTEM","admin");
      String sql = "insert into Registration values(?,?)";
      PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1,a);
      ps.setString(2,b);
     /* ps.setString(3,c);
      ps.setString(4,d);*/
      /*ps.setString(5,e);
      ps.setString(6,f);
      ps.setString(7,g);*/
      int rs = ps.executeUpdate();
      if(rs>0)
      {
            out.println("values are inserted successfully");
      }
      }
      catch(ClassNotFoundException e1){}
      catch(Exception e2){}
  %></body>
</html>