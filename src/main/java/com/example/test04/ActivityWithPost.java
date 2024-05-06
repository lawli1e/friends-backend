package com.example.test04;

import java.time.LocalDateTime;

public class ActivityWithPost {
    private Integer participantId;
    private Integer postId;
    private Integer userId;
    private LocalDateTime joinedAt;
    private String title;
    private String description;

    public ActivityWithPost() {}

    public ActivityWithPost(Integer participantId, Integer postId, Integer userId, LocalDateTime joinedAt, String title, String description) {
        this.participantId = participantId;
        this.postId = postId;
        this.userId = userId;
        this.joinedAt = joinedAt;
        this.title = title;
        this.description = description;
    }

    public Integer getParticipantId() {
        return participantId;
    }

    public void setParticipantId(Integer participantId) {
        this.participantId = participantId;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public LocalDateTime getJoinedAt() {
        return joinedAt;
    }

    public void setJoinedAt(LocalDateTime joinedAt) {
        this.joinedAt = joinedAt;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
