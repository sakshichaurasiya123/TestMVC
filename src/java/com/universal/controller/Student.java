/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.controller;

import com.universal.model.StudentDAO;
import com.universal.model.StudentDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class Student extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String mobile=request.getParameter("mobile");
            String institute=request.getParameter("institute");
            String branch=request.getParameter("branch");
            String semester=request.getParameter("semester");
            String gender=request.getParameter("gender");
            String dob=request.getParameter("dob");
            String batch=request.getParameter("batch");
            String course=request.getParameter("course");
            String fees=request.getParameter("fees");
            String discount=request.getParameter("discount");
            String laddress=request.getParameter("laddress");
            String paddress=request.getParameter("paddress");
            
          
            StudentDTO sdto=new StudentDTO(name, email, mobile, institute, branch, semester, gender, dob, batch, course, fees, discount, laddress, paddress);
            StudentDAO sdao=new StudentDAO();
            boolean b=sdao.student(sdto);
            if(b)
                {
                  response.sendRedirect("ViewStudent.jsp");

                }
                else
                {
                  response.sendRedirect("Student.jsp");  
                }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
