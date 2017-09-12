package com.wanerchuan.domain.generation;

import java.util.Date;

public class WrcBoatInfo {
    private String id;

    private Date gmtCreated;

    private Date gmtModified;

    private String createdBy;

    private String modifiedBy;

    private String boatName;

    private Integer minPrice;

    private Integer maxPrice;

    private String boatType;

    private String boatBrand;

    private String boatDetail;

    private String DestId;

    private String albumId;

    private int boatSeat;

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

    public String getBoatName() {
        return boatName;
    }

    public void setBoatName(String boatName) {
        this.boatName = boatName == null ? null : boatName.trim();
    }

    public Integer getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Integer minPrice) {
        this.minPrice = minPrice;
    }

    public Integer getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Integer maxPrice) {
        this.maxPrice = maxPrice;
    }

    public String getBoatType() {
        return boatType;
    }

    public void setBoatType(String boatType) {
        this.boatType = boatType == null ? null : boatType.trim();
    }

    public String getBoatDetail() {
        return boatDetail;
    }

    public void setBoatDetail(String boatDetail) {
        this.boatDetail = boatDetail == null ? null : boatDetail.trim();
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId == null ? null : albumId.trim();
    }

    public String getBoatBrand() {
        return boatBrand;
    }

    public void setBoatBrand(String boatBrand) {
        this.boatBrand = boatBrand;
    }

    public String getDestId() {
        return DestId;
    }

    public void setDestId(String destId) {
        DestId = destId;
    }

    public int getBoatSeat() {
        return boatSeat;
    }

    public void setBoatSeat(int boatSeat) {
        this.boatSeat = boatSeat;
    }
}