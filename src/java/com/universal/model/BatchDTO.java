
package com.universal.model;


public class BatchDTO {
    
    private int id;
    private String batchName, startDate, duration, batchTiming, faculty, course;

    public BatchDTO() {
    }

    public BatchDTO(String batchName, String startDate, String duration, String batchTiming, String faculty, String course) {
        this.batchName = batchName;
        this.startDate = startDate;
        this.duration = duration;
        this.batchTiming = batchTiming;
        this.faculty = faculty;
        this.course = course;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBatchName() {
        return batchName;
    }

    public void setBatchName(String batchName) {
        this.batchName = batchName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getBatchTiming() {
        return batchTiming;
    }

    public void setBatchTiming(String batchTiming) {
        this.batchTiming = batchTiming;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }
    
    
    
    
}
