package com.klef.jfsd.sdpproject.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Candidate {

    @Id
    private Integer id; // Primary Key for database

    @Column(name = "cemail", nullable = false, unique = true)
    private String cemail;

    @Column(name = "cpwd", nullable = false)
    private String cpwd;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "party_name", nullable = false)
    private String partyName;

    private int votes;
    private int voteCount;

    public Candidate() {
    }

    public Candidate(Integer id, String cemail, String cpwd, String name, String partyName) {
        this.id = id;
        this.cemail = cemail;
        this.cpwd = cpwd;
        this.name = name;
        this.partyName = partyName;
        this.votes = 0;

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCemail() {
        return cemail;
    }

    public void setCemail(String cemail) {
        this.cemail = cemail;
    }

    public String getCpwd() {
        return cpwd;
    }

    public void setCpwd(String cpwd) {
        this.cpwd = cpwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPartyName() {
        return partyName;
    }

    public void setPartyName(String partyName) {
        this.partyName = partyName;
    }

    public int getVotes() {
        return votes;
    }

    public void setVotes(int votes) {
        this.votes = votes;
    }
    public int getVoteCount() {
        return voteCount;
    }

    public void incrementVote() {
        this.voteCount++;
    }
}
