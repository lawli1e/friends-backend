package com.example.test04;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

@Entity
@Table(name = "participants")
public class Participant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long participant_id;

    @Column(name = "post_id", nullable = false)
    private Long post_id;

    @Column(name = "user_id", nullable = false)
    private Long user_id;

    @Column(name = "joined_at", nullable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss.SSS", timezone = "UTC")
    private Date joined_at;

    public Long getParticipant_id() {
        return participant_id;
    }

    public void setParticipant_id(Long participant_id) {
        this.participant_id = participant_id;
    }

    public Long getPost_id() {
        return post_id;
    }

    public void setPost_id(Long post_id) {
        this.post_id = post_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Date getJoined_at() {
        return joined_at;
    }

    public void setJoined_at(Date joined_at) {
        this.joined_at = joined_at;
    }

    // constructors, getters, setters, and other methods
}
