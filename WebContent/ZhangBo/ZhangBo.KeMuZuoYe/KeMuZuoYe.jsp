<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<body>
<%

  Class.forName("com.mysql.jdbc.Driver").newInstance();
  String connectSQL = "jdbc:mysql://localhost:3306/xs";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","1234");
  
  
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from zuoye");
  
  out.println("<table>");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td>"+rs.getString("zuoyename")+"</td>");
    out.println("<td>"+rs.getString("zuoyenr")+"</td>");
    out.println("<td>"+rs.getString("times")+"</td>");
    out.println("<td>"+rs.getString("kemuid")+"</td>");
    out.println("<td>"+rs.getInt("userid")+"</td>");
    out.println("</tr>");
  }
  out.println("</table>");
  
  %>
 
</table>
</body>
</html>
