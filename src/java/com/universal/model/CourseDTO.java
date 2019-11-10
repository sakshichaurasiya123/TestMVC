/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.model;

/**
 *
 * @author root
 */
public class CourseDTO {
    
     private int id;
    private String courseName,fees,remark;

    public CourseDTO() {
    }

    public CourseDTO( String courseName, String fees, String remark) {
       
        this.courseName = courseName;
        this.fees = fees;
        this.remark = remark;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "CourseDTO{" + "id=" + id + ", courseName=" + courseName + ", fees=" + fees + ", remark=" + remark + '}';
    }
    
    
}
