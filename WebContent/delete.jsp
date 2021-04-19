<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Cache-control", "no-store");
response.setHeader("Progma","no-cache");
response.setDateHeader("Expires", 0);
if (session.getAttribute("userLoggedIn")==null) {
    response.sendRedirect("login.jsp");
    return;
}
%> 
<%
String uname=(String) session.getAttribute("user"); 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/num_conv","root","BGeorge.0412.9598");
Statement stat=conn.createStatement();
stat.executeUpdate("DELETE FROM num_conv.data WHERE uname='"+uname+"' AND convertor='dec-to-oct&hex'");
response.sendRedirect("history-dec-oct&hex.jsp");
%>