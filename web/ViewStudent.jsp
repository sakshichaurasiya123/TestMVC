<%-- 
    Document   : Home
    Created on : 18 Sep, 2019, 4:56:52 PM
    Author     : root
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.universal.service.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>View Student</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/style.css">

</head>

<%
             String email1=request.getParameter("email");
             String password=request.getParameter("password");
           
            HttpSession session1=request.getSession();
            Object email=session1.getAttribute("email");
            Object name=session1.getAttribute("name");
            
            response.setHeader("Cache-Control","No-Cache");
            response.setHeader("Cache-Control","No-Store");
            if(email==null)
            {
                response.sendRedirect("index.html");
            
            }
            
            
%>

<body class="body">
<!--naviogation-->
<nav class="navbar navbar-fixed-top navbar-default ">
<div class="container-fluid">
<!--navbar header-->
<div class="navbar-header">
<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#compworl" aria-expanded="false">
<font color="#E80B0F">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span></font>
</button>
    <a href="Home.jsp" class="navbar-brand"><img src="images/logo.png" alt="logo" title="logo"></a>
</div>
<!--navbar header-->
<div class="collapse navbar-collapse" id="#fees">
<ul class="nav navbar-nav">
<li class="active dropdown"><a href="Course.jsp" class="dropdown-toggle" data-toggle="dropdown">Course
<span class="caret"></span></a>
<ul class="dropdown-menu">
     <li><a href="Course.jsp">Add course</a></li>
        <li><a href="ViewCourse.jsp">View course</a></li>
    </ul>
</li>
<li class="dropdown"><a href="Faculty.jsp" class="dropdown-toggle" data-toggle="dropdown">Faculty
<span class="caret"></span></a>
	<ul class="dropdown-menu">
    <li><a href="Faculty.jsp">New faculty</a></li>
        <li><a href="ViewFaculty.jsp">View faculty</a></li>
    </ul>
    </li>
    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Batch
<span class="caret"></span></a>
	<ul class="dropdown-menu">
    <li><a href="Batch.jsp">New Batch</a></li>
        <li><a href="#">View Batch</a></li>
    </ul>
    </li>
    
    <li class="dropdown"><a href="Student.jsp" class="dropdown-toggle" data-toggle="dropdown">Student
<span class="caret"></span></a>
	<ul class="dropdown-menu">
    <li><a href="Student.jsp">New Student</a></li>
        <li><a href="#">View Student</a></li>
    </ul>
    </li>
    <li class="dropdown"><a href="Enquiry.jsp" class="dropdown-toggle" data-toggle="dropdown">Enquiry
<span class="caret"></span></a>
	<ul class="dropdown-menu">
   <li><a href="Enquiry.jsp">New Enquiry</a></li>
        <li><a href="ViewEnquiry.jsp">View Enquiry Details</a></li>
    </ul>
    </li>
    
    <li class="dropdown"><a href="Pay.jsp" class="dropdown-toggle" data-toggle="dropdown">Fees Collection
<span class="caret"></span></a>
	<ul class="dropdown-menu">
    <li><a href="Fees.jsp">Pay Fees</a></li>
        <li><a href="ViewFees.jsp">View Collection</a></li>
    </ul>
    </li>
    </ul>
    
     
    <ul class="nav navbar-nav navbar-right">
      <li><a href="LogOut"><button class=" btn btn-danger glyphicon glyphicon-log-out"></button></a></li>
</div>
</div>
</nav>
<!--naviogation-->
<div class="clearfix"></div>
<br>
<br>
<br>
<br>
<br>
<br>
<!--container-->
<div class="container margin">
<!--left sidebar-->
<div class="col-sm-3">
        <div class="list-group">
        <center>
            <ul>
              
                <ul  class="list-group-item" ><a class="dropdown-toggle" data-toggle="dropdown"
                data-hover="dropdown"
                href="Course.jsp">Course
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="#">Add Course</a></li>
                        <li><a href="ViewCourse.jsp">View Course</a></li>
                        </ul>
                        </ul>
                        
                         <ul  class="list-group-item" ><a class="dropdown-toggle" data-toggle="dropdown"
                data-hover="dropdown"
                href="Faculty.jsp">Faculty
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="Faculty.jsp">New Faculty</a></li>
                        <li><a href="ViewFaculty.jsp">View Faculty</a></li>
                        </ul>
                        </ul>
                        <ul  class="list-group-item" ><a class="dropdown-toggle" data-toggle="dropdown"
                data-hover="dropdown"
                href="Batch.jsp">Batch
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="Batch.jsp">New Batch</a></li>
                        <li><a href="#">View Batch</a></li>
                        </ul>
                        </ul>
                        <ul  class="list-group-item" ><a class="dropdown-toggle" data-toggle="dropdown"
                data-hover="dropdown"
                href="Student.php">Student
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="Student.php">New Student</a></li>
                        <li><a href="ViewStudent.php">View Student</a></li>
                        </ul>
                        </ul>
                      
                         <ul  class="list-group-item" ><a class="dropdown-toggle" data-toggle="dropdown"
                data-hover="dropdown"
                href="Enquiry.jsp">Enquiry
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="Enquiry.jsp">New Enquiry</a></li>
                        <li><a href="ViewEnquiry.jsp">View Enquiry Detail</a></li>
                        </ul>
                        </ul>
                        
                        
                          <ul  class="list-group-item" ><a class="dropdown-toggle" data-toggle="dropdown"
                data-hover="dropdown"
                href="Faculty.jsp">Fees collection
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <li><a href="Faculty.jsp">Pay fees</a></li>
                        <li><a href="ViewFaculty.jsp">View Collection</a></li>
                        </ul>
                        </ul>
                          
             </ul>
         </center>
        </div>
</div>
<!--left sidebar-->
<!--right sidebar-->
<div class="col-sm-8 background">
<h1>View Course Details</h1>
<div class="table-responsive">
<table class="table table-bordered table-hover table-striped">
<tr>
<th>Sno</th>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Institute</th>
<th>Branch</th>
<th>Semester</th>
<th>Gender</th>
<th>DOB</th>
<th>Batch</th>
<th>Course</th>
<th>Fees</th>
<th>Discount</th>
<th>Local Address</th>
<th>Permanent Address</th>
<th>Edit</th>
<th>Delete</th>

</tr>
<%
        Connection con=GetConnection.getConnection();
        String sql= "select * from student";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
        int i=1;
        while(rs.next())
        {
            out.print("<tr><td>"+i+"</td>");
            out.print("<td>"+rs.getString(1)+"</td>");
            out.print("<td>"+rs.getString(2)+"</td>");
            out.print("<td>"+rs.getString(3)+"</td>");
            out.print("<td>"+rs.getString(4)+"</td>");
            out.print("<td>"+rs.getString(5)+"</td>");
            out.print("<td>"+rs.getString(6)+"</td>");
            out.print("<td>"+rs.getString(7)+"</td>");
            out.print("<td>"+rs.getString(8)+"</td>");
            
            out.print("<td>"+rs.getString(9)+"</td>");
            out.print("<td>"+rs.getString(10)+"</td>");
            out.print("<td>"+rs.getString(11)+"</td>");
            out.print("<td>"+rs.getString(12)+"</td>");
            out.print("<td>"+rs.getString(13)+"</td>");
             out.print("<td>"+rs.getString(14)+"</td>");
            out.print("<td>"+rs.getString(15)+"</td>");
            out.print("<td><a href='Edit.jsp' class='btn btn-success'>Update</a></td>");
            out.print("<td><a href='DeleteStudent.jsp?id="+rs.getString(1)+"' class='btn btn-warning'>Delete</a></td></tr>");
           
            i++;
        }
    %>

<tr>
<th>Sno</th>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Institute</th>
<th>Branch</th>
<th>Semester</th>
<th>Gender</th>
<th>DOB</th>
<th>Batch</th>
<th>Course</th>
<th>Fees</th>
<th>Discount</th>
<th>Local Address</th>
<th>Permanent Address</th>
<th>Edit</th>
<th>Delete</th>

</tr>
</table>
</div>

</div>
<!--right sidebar-->
</div>
<hr>
</body>
</html>

