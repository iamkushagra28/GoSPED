<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.sql.*"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>datainsert</title>
  </head>
  <body>
  <%
  String a = request.getParameter("t1");
  String b = request.getParameter("t2");
  String c = request.getParameter("t3");
  String d = request.getParameter("t4");
  String e = request.getParameter("t5");
  String f = request.getParameter("t6");
  String g = request.getParameter("t7");
  String h = request.getParameter("t8");
  String i = request.getParameter("t9");
  String j = request.getParameter("t10");
  //out.println(a);
  //out.println(b);
   try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:test","SYSTEM","admin");
      String sql = "insert into sifmsdb values(?,?,?,?,?,?,?,?,?,?)";
      PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1,a);
      ps.setString(2,b);
      ps.setString(3,c);
      ps.setString(4,d);
      ps.setString(5,e);
      ps.setString(6,f);
      ps.setString(7,g);
      ps.setString(8,h);
      ps.setString(9,i);
      ps.setString(10,j);
      int a1 = ps.executeUpdate();
      if(a1>0)
      {%>
            <jsp:forward page="Sync1.jsp"></jsp:forward>
      <%}
      }
      catch(ClassNotFoundException e1){}
      catch(Exception e2){}
  %>
  </body>
</html>