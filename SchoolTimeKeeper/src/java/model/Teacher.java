/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author buidu_8h8ybgq
 */
public class Teacher {
    private int id;
private String name;
private Date birthday;
private boolean gender;
private String avatar;
private int posId;
private Date joindate;
private int statusId;
private float heSoLuongYear;
private float heSoPCCV;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getPosId() {
        return posId;
    }

    public void setPosId(int posId) {
        this.posId = posId;
    }

    public Date getJoindate() {
        return joindate;
    }

    public void setJoindate(Date joindate) {
        this.joindate = joindate;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public float getHeSoLuongYear() {
        return heSoLuongYear;
    }

    public void setHeSoLuongYear(float heSoLuongYear) {
        this.heSoLuongYear = heSoLuongYear;
    }

    public float getHeSoPCCV() {
        return heSoPCCV;
    }

    public void setHeSoPCCV(float heSoPCCV) {
        this.heSoPCCV = heSoPCCV;
    }

}
