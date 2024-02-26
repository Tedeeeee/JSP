package model;

import java.util.Date;

public class BoardBean {
    private int number;
    private String writer;
    private String email;
    private String subject;
    private String password;
    private Date regDate;
    private int ref;
    private int reStep;

    private int reLevel;

    private int readCount;
    private String content;
    public int getRef() {
        return ref;
    }

    public void setRef(int ref) {
        this.ref = ref;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public int getReStep() {
        return reStep;
    }

    public void setReStep(int reStep) {
        this.reStep = reStep;
    }

    public int getReLevel() {
        return reLevel;
    }

    public void setReLevel(int reLevel) {
        this.reLevel = reLevel;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "BoardBean{" +
                "number=" + number +
                ", writer='" + writer + '\'' +
                ", email='" + email + '\'' +
                ", subject='" + subject + '\'' +
                ", password='" + password + '\'' +
                ", regDate=" + regDate +
                ", ref=" + ref +
                ", reStep=" + reStep +
                ", reLevel=" + reLevel +
                ", readCount=" + readCount +
                ", content='" + content + '\'' +
                '}';
    }
}
