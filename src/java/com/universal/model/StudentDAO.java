/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.model;

import com.universal.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class StudentDAO {
 
  public boolean student(StudentDTO sdto)
  {
      boolean b= false;
      
      
       try{
       
           Connection con=GetConnection.getConnection();
           String sql="insert into student(name,email,mobile,institute,branch,semester,gender,dob,batch,course,fees,discount,laddress,paddress) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,sdto.getName());
            ps.setString(2,sdto.getEmail());
            ps.setString(3,sdto.getMobile());
            ps.setString(4,sdto.getInstitute());
            ps.setString(5,sdto.getBranch());
            ps.setString(6,sdto.getSemester());
            ps.setString(7,sdto.getGender());
            ps.setString(8,sdto.getDob());
            ps.setString(9,sdto.getBatch());
            ps.setString(10,sdto.getCourse());
            ps.setString(11,sdto.getFees());
            ps.setString(12,sdto.getDiscount());
            ps.setString(13,sdto.getLaddress());
            ps.setString(14,sdto.getPaddress());
                
            if(ps.executeUpdate()>0)
           {
              b=true;
           }
       
       }
       catch(Exception e){}
       
       return b;    
    }
  
 public boolean login(AdminDTO adto)
    {
       boolean b=false;
       Connection con=GetConnection.getConnection();
       String sql="select * from news_info where email=? and password=?";
       try{         
       PreparedStatement ps=con.prepareStatement(sql);
               
       ps.setString(1,adto.getEmail());
       ps.setString(2,adto.getPassword());
       
                
                
       ResultSet rs=ps.executeQuery();
       if(rs.next())
            b=true;
       }
       catch(Exception e){}
       return b;    
    }
 
 
    public boolean fees(FeesDTO fedto)
    {
       boolean b=false;
       try{
       
           Connection con=GetConnection.getConnection();
            String sql="insert into fees_collection (student,batch,fees,pay,remain,status,mode,transactionid) values(?,?,?,?,?,?,?,?)";
                
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,fedto.getStudent());
            ps.setString(2,fedto.getBatch());
            
            ps.setString(3,fedto.getFees());
            ps.setString(4,fedto.getPay());
            ps.setString(5,fedto.getRemain());
            ps.setString(6,fedto.getStatus());
            ps.setString(7,fedto.getMode());
            ps.setString(8,fedto.getTransactionId());
                
            if(ps.executeUpdate()>0)
           {
              b=true;
           }
       
       }
       catch(Exception e){}
       
       
       return b;    
    }
    
     public boolean course(CourseDTO sdto)
    {
       boolean b=false;
       try{
       
           Connection con=GetConnection.getConnection();
            String sql="insert into course (course_name,fees,remark) values(?,?,?)";
                
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,sdto.getCourseName());
            ps.setString(2,sdto.getFees());
            ps.setString(3,sdto.getRemark());
            
                
            if(ps.executeUpdate()>0)
           {
              b=true;
           }
       
       }
       catch(Exception e){}
       
       return b;
       
           
    }
    public boolean batch(BatchDTO bdto)
    {
       boolean b=false;
       
       try{
       
           Connection con=GetConnection.getConnection();
            String sql="insert into batch (batch_name,start_date,duration,batch_timing,faculty,course) values(?,?,?,?,?,?)";
                
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,bdto.getBatchName());
            ps.setString(2,bdto.getStartDate());
            
            ps.setString(3,bdto.getDuration());
            ps.setString(4,bdto.getBatchTiming());
            ps.setString(5,bdto.getFaculty());
            ps.setString(6,bdto.getCourse());
           
                
            if(ps.executeUpdate()>0)
           {
              b=true;
           }
       
       }
       catch(Exception e){}

       return b;    
    }
    public boolean faculty(FacultyDTO fdto)
    {
       boolean b=false;
       try{
       
           Connection con=GetConnection.getConnection();
            String sql="insert into faculty (name,email,mobile,gender,qualification,specialization,experience,address) values(?,?,?,?,?,?,?,?)";
                
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,fdto.getName());
            ps.setString(2,fdto.getEmail());
            
            ps.setString(3,fdto.getMobile());
            ps.setString(4,fdto.getGender());
            ps.setString(5,fdto.getQualification());
            ps.setString(6,fdto.getSpecialization());
            ps.setString(7,fdto.getExperience());
            ps.setString(8,fdto.getAddress());
                
            if(ps.executeUpdate()>0)
           {
              b=true;
           }
       
       }
       catch(Exception e){}
       
       
       return b;    
    }
    public boolean enquiry(EnquiryDTO edto)
    {
       boolean b=false;
       try{
       
           Connection con=GetConnection.getConnection();
            String sql="insert into enquiry (name,college,semester,branch,refered,course,counselor,mobile,email) values(?,?,?,?,?,?,?,?,?)";
                
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,edto.getName());
            ps.setString(2,edto.getCollege());
            
            ps.setString(3,edto.getSemester());
            ps.setString(4,edto.getBranch());
            ps.setString(5,edto.getRefered());
            ps.setString(6,edto.getCourse());
            ps.setString(7,edto.getCounselor());
            ps.setString(8,edto.getMobile());
            ps.setString(9,edto.getEmail());
            
                
            if(ps.executeUpdate()>0)
           {
              b=true;
           }
       
       }
       catch(Exception e){}
       
       
       
       
       return b;    
    }
    public boolean name(StudentDTO sdto)
    {
       boolean b=false;
       Connection con=GetConnection.getConnection();
       String sql="select * from student where email=? and password=?";
       try{         
       PreparedStatement ps=con.prepareStatement(sql);
               
      
       ps.setString(1,sdto.getName());
                
       ResultSet rs=ps.executeQuery();
       if(rs.next())
            b=true;
       }
       catch(Exception e){}
     
       
       return b; 
       
    }
        
}

