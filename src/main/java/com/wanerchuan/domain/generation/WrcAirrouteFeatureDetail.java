package com.wanerchuan.domain.generation;

import java.util.Date;

public class WrcAirrouteFeatureDetail {
    private String id;

    private Date gmtCreated;

    private Date gmtModified;

    private String createdBy;

    private String modifiedBy;

    private String featureName;

    private String featureContext;

    private String albumId;

    private String airrouteId;

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

    public String getFeatureName() {
        return featureName;
    }

    public void setFeatureName(String featureName) {
        this.featureName = featureName == null ? null : featureName.trim();
    }

    public String getFeatureContext() {
        return featureContext;
    }

    public void setFeatureContext(String featureContext) {
        this.featureContext = featureContext == null ? null : featureContext.trim();
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId == null ? null : albumId.trim();
    }

    public String getAirrouteId() {
        return airrouteId;
    }

    public void setAirrouteId(String airrouteId) {
        this.airrouteId = airrouteId == null ? null : airrouteId.trim();
    }
}