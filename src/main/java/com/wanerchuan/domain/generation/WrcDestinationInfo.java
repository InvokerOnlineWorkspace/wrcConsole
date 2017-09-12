package com.wanerchuan.domain.generation;

import java.util.Date;

public class WrcDestinationInfo {
    private String id;

    private Date gmtCreated;

    private Date gmtModified;

    private String createdBy;

    private String modifiedBy;

    private String destinationCnName;

    private String destinationEnName;

    private String destinationIntro;

    private String weather;

    private String exitEntry;

    private String messageMode;

    private String trade;

    private String medicalAdvice;

    private String usefulAdvice;

    private String howToArrived;

    private String publicUtility;

    private String albumId;

    private String keyWord;

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

    public String getDestinationCnName() {
        return destinationCnName;
    }

    public void setDestinationCnName(String destinationCnName) {
        this.destinationCnName = destinationCnName == null ? null : destinationCnName.trim();
    }

    public String getDestinationEnName() {
        return destinationEnName;
    }

    public void setDestinationEnName(String destinationEnName) {
        this.destinationEnName = destinationEnName == null ? null : destinationEnName.trim();
    }

    public String getDestinationIntro() {
        return destinationIntro;
    }

    public void setDestinationIntro(String destinationIntro) {
        this.destinationIntro = destinationIntro == null ? null : destinationIntro.trim();
    }

    public String getWeather() {
        return weather;
    }

    public void setWeather(String weather) {
        this.weather = weather == null ? null : weather.trim();
    }

    public String getExitEntry() {
        return exitEntry;
    }

    public void setExitEntry(String exitEntry) {
        this.exitEntry = exitEntry == null ? null : exitEntry.trim();
    }

    public String getMessageMode() {
        return messageMode;
    }

    public void setMessageMode(String messageMode) {
        this.messageMode = messageMode == null ? null : messageMode.trim();
    }

    public String getTrade() {
        return trade;
    }

    public void setTrade(String trade) {
        this.trade = trade == null ? null : trade.trim();
    }

    public String getMedicalAdvice() {
        return medicalAdvice;
    }

    public void setMedicalAdvice(String medicalAdvice) {
        this.medicalAdvice = medicalAdvice == null ? null : medicalAdvice.trim();
    }

    public String getUsefulAdvice() {
        return usefulAdvice;
    }

    public void setUsefulAdvice(String usefulAdvice) {
        this.usefulAdvice = usefulAdvice == null ? null : usefulAdvice.trim();
    }

    public String getHowToArrived() {
        return howToArrived;
    }

    public void setHowToArrived(String howToArrived) {
        this.howToArrived = howToArrived == null ? null : howToArrived.trim();
    }

    public String getPublicUtility() {
        return publicUtility;
    }

    public void setPublicUtility(String publicUtility) {
        this.publicUtility = publicUtility == null ? null : publicUtility.trim();
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId == null ? null : albumId.trim();
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord == null ? null : keyWord.trim();
    }
}