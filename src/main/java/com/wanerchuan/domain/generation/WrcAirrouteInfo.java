package com.wanerchuan.domain.generation;

import java.util.Date;

public class WrcAirrouteInfo {
    private String id;

    private Date gmtCreated;

    private Date gmtModified;

    private String createdBy;

    private String modifiedBy;

    private String airrouteName;

    private String airrouteIntro;

    private String destinationId;

    private String albumId;

    private String keyWrod;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getGmtCreated() {
        return gmtCreated;
    }

    public void setGmtCreated(Date gmtCreated) {
        this.gmtCreated = gmtCreated;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy == null ? null : createdBy.trim();
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy == null ? null : modifiedBy.trim();
    }

    public String getAirrouteName() {
        return airrouteName;
    }

    public void setAirrouteName(String airrouteName) {
        this.airrouteName = airrouteName == null ? null : airrouteName.trim();
    }

    public String getAirrouteIntro() {
        return airrouteIntro;
    }

    public void setAirrouteIntro(String airrouteIntro) {
        this.airrouteIntro = airrouteIntro == null ? null : airrouteIntro.trim();
    }

    public String getDestinationId() {
        return destinationId;
    }

    public void setDestinationId(String destinationId) {
        this.destinationId = destinationId == null ? null : destinationId.trim();
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId == null ? null : albumId.trim();
    }

    public String getKeyWrod() {
        return keyWrod;
    }

    public void setKeyWrod(String keyWrod) {
        this.keyWrod = keyWrod;
    }
}