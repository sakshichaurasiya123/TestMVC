
package com.universal.model;


public class FeesDTO {

private int id;
private String student,batch,fees,pay,remain,status,mode, transactionId;

    public FeesDTO() {
    }

    public FeesDTO(String student, String batch, String fees, String pay, String remain, String status, String mode, String transactionId) {
        this.student = student;
        this.batch = batch;
        this.fees = fees;
        this.pay = pay;
        this.remain = remain;
        this.status = status;
        this.mode = mode;
        this.transactionId = transactionId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudent() {
        return student;
    }

    public void setStudent(String student) {
        this.student = student;
    }

    public String getBatch() {
        return batch;
    }

    public void setBatch(String batch) {
        this.batch = batch;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public String getRemain() {
        return remain;
    }

    public void setRemain(String remain) {
        this.remain = remain;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    
    @Override
    public String toString() {
        return "FeesDTO{" + "id=" + id + ", student=" + student + ", batch=" + batch + ", fees=" + fees + ", pay=" + pay + ", remain=" + remain + ", status=" + status + ", mode=" + mode + ", transactionId=" + transactionId + '}';
    }
    
    
}
