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
<title>Institute</title>
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
    <a href="#" class="navbar-brand"><img src="images/logo.png" alt="logo" title="logo"></a>
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
                        <li><a href="Course.jsp">Add Course</a></li>
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
    <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          Home
        </button>
      </h2>
    </div>
    <div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
          <table border="2" cellpadding="2" cellspacing="2">
              <tr>
                  <td>
                      <h2>"The aim of the college, for the individual student, is to eliminate the need in his life for the college; the task is to help him become a self-educating man."</h2>
                      
                  </td>
              </tr>
          </table>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          About Us
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
          <table border="2" cellpadding="2" cellspacing="2">
              <tr>
                  <td>
                      <h2>Universal Informatics</h2>
                      <h3>We Are providing you All programming languages training</h3>
                      <h3>Contact- 9212092120</h3>
                      <h3>Email- institute@gmail.com</h3>
                  </td>
              </tr>
          </table>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Quotes
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        <table border="2" cellpadding="2" cellspacing="2">
              <tr>
                  <td>
                      <h3>“A graduation ceremony is an event where the commencement speaker tells thousands of students dressed in identical caps and gowns that 'individuality' is the key to success.”</h3> 
                  </td>
              </tr>
        </table>
      </div>
    </div>
  </div>
</div>
</div>
<!--right sidebar-->
</div>
<hr>
</body>
</html>

