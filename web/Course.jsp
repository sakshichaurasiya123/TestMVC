<%-- 
    Document   : Home
    Created on : 18 Sep, 2019, 4:56:52 PM
    Author     : root
--%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Course</title>
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
     <li><a href="#">Add course</a></li>
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
    <li class="dropdown"><a href="Batch.jsp" class="dropdown-toggle" data-toggle="dropdown">Batch
<span class="caret"></span></a>
	<ul class="dropdown-menu">
    <li><a href="Batch.jsp">New Batch</a></li>
        <li><a href="ViewBatch.jsp">View Batch</a></li>
    </ul>
    </li>
    
    <li class="dropdown"><a href="Student.jsp" class="dropdown-toggle" data-toggle="dropdown">Student
<span class="caret"></span></a>
	<ul class="dropdown-menu">
    <li><a href="Student.jsp">New Student</a></li>
        <li><a href="ViewStudent.jsp">View Student</a></li>
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
                        <li><a href="ViewBatch.jsp">View Batch</a></li>
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
<h1>Enter Your New Course</h1>
            <form action="Course1">
                <div class="col-sm-3"><h3>Course</h3></div>
                <div class="col-sm-9"><input type="text" placeholder="Enter Your course" name="course"
                class="form-control" required></div>
                <br><br><br>
                 <div class="col-sm-3"><h3>Fees</h3></div>
                <div class="col-sm-9"><input type="text" placeholder="" name="fees"
                class="form-control" required></div>
                <br><br><br>
                <div class="col-sm-3"><h3>Remark</h3></div>
                <div class="col-sm-9"><input type="text" placeholder="" name="remark"
                class="form-control" required></div>
                <br><br><br>
                <center><div class="col-sm-12"><input type="submit" name="save" value="SAVE">&nbsp;&nbsp;
                <input type="reset" value="clear"></div></center>
            </form>

</div>
<!--right sidebar-->
</div>
<hr>
</body>
</html>

