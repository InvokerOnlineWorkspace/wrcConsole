package com.wanerchuan.domain.generation;

import java.util.Date;

public class WrcAirrouteFeeDetail {
    private String id;

    private Date gmtCreated;

    private Date gmtModified;

    private String createdBy;

    private String modifiedBy;

    private String feeTotal;

    private String totalRemark;

    private String feeInclude;

    private String includeRemark;

    private String feeHaveNot;

    private String haveNotRemark;

    private String refundContext;

    private String airrouteId;

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

    public String getFeeTotal() {
        return feeTotal;
    }

    public void setFeeTotal(String feeTotal) {
        this.feeTotal = feeTotal == null ? null : feeTotal.trim();
    }

    public String getTotalRemark() {
        return totalRemark;
    }

    public void setTotalRemark(String totalRemark) {
        this.totalRemark = totalRemark == null ? null : totalRemark.trim();
    }

    public String getFeeInclude() {
        return feeInclude;
    }

    public void setFeeInclude(String feeInclude) {
        this.feeInclude = feeInclude == null ? null : feeInclude.trim();
    }

    public String getIncludeRemark() {
        return includeRemark;
    }

    public void setIncludeRemark(String includeRemark) {
        this.includeRemark = includeRemark == null ? null : includeRemark.trim();
    }

    public String getFeeHaveNot() {
        return feeHaveNot;
    }

    public void setFeeHaveNot(String feeHaveNot) {
        this.feeHaveNot = feeHaveNot == null ? null : feeHaveNot.trim();
    }

    public String getHaveNotRemark() {
        return haveNotRemark;
    }

    public void setHaveNotRemark(String haveNotRemark) {
        this.haveNotRemark = haveNotRemark == null ? null : haveNotRemark.trim();
    }

    public String getRefundContext() {
        return refundContext;
    }

    public void setRefundContext(String refundContext) {
        this.refundContext = refundContext == null ? null : refundContext.trim();
    }

    public String getAirrouteId() {
        return airrouteId;
    }

    public void setAirrouteId(String airrouteId) {
        this.airrouteId = airrouteId == null ? null : airrouteId.trim();
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId == null ? null : albumId.trim();
    }
}