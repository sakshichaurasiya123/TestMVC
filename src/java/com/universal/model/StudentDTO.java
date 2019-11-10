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
public class StudentDTO {
  
      private int id;
    private String name,email,mobile,institute,branch,semester,gender,dob,batch,course,fees,discount,laddress,paddress;

    public StudentDTO() {
    }

    public StudentDTO(String name, String email, String mobile, String institute, String branch, String semester, String gender, String dob, String batch, String course, String fees, String discount, String laddress, String paddress) {
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.institute = institute;
        this.branch = branch;
        this.semester = semester;
        this.gender = gender;
        this.dob = dob;
        this.batch = batch;
        this.course = course;
        this.fees = fees;
        this.discount = discount;
        this.laddress = laddress;
        this.paddress = paddress;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getBatch() {
        return batch;
    }

    public void setBatch(String batch) {
        this.batch = batch;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public String getLaddress() {
        return laddress;
    }

    public void setLaddress(String laddress) {
        this.laddress = laddress;
    }

    public String getPaddress() {
        return paddress;
    }

    public void setPaddress(String paddress) {
        this.paddress = paddress;
    }

    
    
    
}
