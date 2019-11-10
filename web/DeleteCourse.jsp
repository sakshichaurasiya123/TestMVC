<%-- 
    Document   : Delete
    Created on : 25 Sep, 2019, 1:54:42 PM
    Author     : root
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.universal.service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
            String d= request.getParameter("id");
            int no=Integer.parseInt(d);
            
            Connection con=GetConnection.getConnection();
            String sql=("delete from course where id='"+no+"'");
            Statement st=con.createStatement();
            st.executeUpdate(sql);
                                                   
       
            response.sendRedirect("ViewCourse.jsp");
      
 %>
    </body>
</html>
