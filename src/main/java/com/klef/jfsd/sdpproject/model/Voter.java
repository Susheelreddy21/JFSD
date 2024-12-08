package com.klef.jfsd.sdpproject.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="voter_table")

public class Voter 
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name="voter_id")
	private int id;
	@Column(name="voter_name",nullable=false,length = 50)
	private String name;
	@Column(name="voter_gender",nullable=false,length = 20)
	private String gender;
	@Column(name="voter_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="voter_martialstatus",nullable=false,length = 50)
	private String martialstatus;
	@Column(name="voter_email",nullable=false,unique = true,length = 50)
	private String vemail;
	@Column(name="voter_password",nullable=false,length = 50)
	private String vpassword;
	@Column(name="voter_location",nullable=false,length=50)
	private String location;
	@Column(name="voter_contact",nullable=false,unique = true,length = 20)
	private String contact;
	private boolean hasVoted;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getMartialstatus() {
		return martialstatus;
	}
	public void setMartialstatus(String martialstatus) {
		this.martialstatus = martialstatus;
	}
	public String getEmail() {
		return vemail;
	}
	public void setEmail(String email) {
		this.vemail = email;
	}
	public String getPassword() {
		return vpassword;
	}
	public void setPassword(String password) {
		this.vpassword = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	  public boolean isHasVoted() {
	        return hasVoted;
	    }
	  public void setHasVoted(boolean hasVoted) {
	        this.hasVoted = hasVoted;
	    }
}
