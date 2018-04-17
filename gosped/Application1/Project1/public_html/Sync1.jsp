<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.sql.*"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>Sync</title>
  </head>
  <body>
  <form action="AfterSync.jsp" method="POST">
  <input type="submit" value="Click Here To Show Values Of Secondary Database">
  </form>
  <%
  try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection con = DriverManager.getConnection("jdbc:odbc:test","SYSTEM","admin");
      String sql = "select * from sifmsDB";
      PreparedStatement ps = con.prepareStatement(sql);
      
      ResultSet rs = ps.executeQuery();
      while(rs.next())
      {
            String a = rs.getString("emp_id");
            String a1 = rs.getString("emp_name");
            String a2 = rs.getString("designation");
            String a3 = rs.getString("dep_id");
            String a4 = rs.getString("place_id");
            String a5 = rs.getString("basic_pay");
            String a6 = rs.getString("gross_pay");
            String a7 = rs.getString("emp_type");
            String a8 = rs.getString("date_of_joining");
            String a9 = rs.getString("date_of_birth");
            sql = "insert into Gosped values(?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,a);
      ps.setString(2,a1);
      ps.setString(3,a2);
      ps.setString(4,a3);
      ps.setString(5,a4);
      ps.setString(6,a5);
      ps.setString(7,a6);
      ps.setString(8,a7);
      ps.setString(9,a8);
      ps.setString(10,a9);
      int a121 = ps.executeUpdate();
      if(a121>0)
      {
        out.println("values are successfully synced................. congratulations");
        break;
      }
            
            
      }
      }
      catch(ClassNotFoundException e1){}
      catch(Exception e2){}
  %>
  
  </body>
</html>