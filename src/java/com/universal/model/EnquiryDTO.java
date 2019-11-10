
package com.universal.model;


public class EnquiryDTO {
private int id;
private String name,college,semester,branch,refered,course,counselor,mobile,email;

    public EnquiryDTO() {
    }

    public EnquiryDTO(String name, String college, String semester, String branch, String refered, String course, String counselor, String mobile, String email) {
        this.name = name;
        this.college = college;
        this.semester = semester;
        this.branch = branch;
        this.refered = refered;
        this.course = course;
        this.counselor = counselor;
        this.mobile = mobile;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getRefered() {
        return refered;
    }

    public void setRefered(String refered) {
        this.refered = refered;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getCounselor() {
        return counselor;
    }

    public void setCounselor(String counselor) {
        this.counselor = counselor;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "EnquiryDTO{" + "id=" + id + ", name=" + name + ", college=" + college + ", semester=" + semester + ", branch=" + branch + ", refered=" + refered + ", course=" + course + ", counselor=" + counselor + ", mobile=" + mobile + ", email=" + email + '}';
    }


    
}
