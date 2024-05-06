package com.example.test04;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private Long userId;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private int maxParticipants;

    @Column(nullable = false)
    private String category;

    @Column(nullable = false)
    private Date eventStart;

    public Object getTitle() {
        return title;
    }

    public Object getDescription() {
        return description;
    }

    public Object getMaxParticipants() {
        return maxParticipants;
    }

    public Object getCategory() {
        return category;
    }

    public Date getEventStart() {
        return eventStart;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setMaxParticipants(int maxParticipants) {
        this.maxParticipants = maxParticipants;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setEventStart(Date eventStart) {
        this.eventStart = eventStart;
    }

    // constructors, getters, setters, and other methods
}
