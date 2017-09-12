package com.wanerchuan.domain.generation;

import java.util.Date;

public class WrcAirrouteFlowDetail {
    private String id;

    private Date gmtCreated;

    private Date gmtModified;

    private String createdBy;

    private String modifiedBy;

    private String flowName;

    private String flowContext;

    private Integer flowOrder;

    private String airrouteId;

    private String includeFood;

    private String includeRest;

    private String albumId;

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

    public String getFlowName() {
        return flowName;
    }

    public void setFlowName(String flowName) {
        this.flowName = flowName == null ? null : flowName.trim();
    }

    public String getFlowContext() {
        return flowContext;
    }

    public void setFlowContext(String flowContext) {
        this.flowContext = flowContext == null ? null : flowContext.trim();
    }

    public Integer getFlowOrder() {
        return flowOrder;
    }

    public void setFlowOrder(Integer flowOrder) {
        this.flowOrder = flowOrder;
    }

    public String getAirrouteId() {
        return airrouteId;
    }

    public void setAirrouteId(String airrouteId) {
        this.airrouteId = airrouteId == null ? null : airrouteId.trim();
    }

    public String getIncludeFood() {
        return includeFood;
    }

    public void setIncludeFood(String includeFood) {
        this.includeFood = includeFood;
    }

    public String getIncludeRest() {
        return includeRest;
    }

    public void setIncludeRest(String includeRest) {
        this.includeRest = includeRest;
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId == null ? null : albumId.trim();
    }
}