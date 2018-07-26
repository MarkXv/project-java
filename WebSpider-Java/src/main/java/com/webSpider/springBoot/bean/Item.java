package com.webSpider.springBoot.bean;

public class Item {


    private String id;
    private Long itemId;
    private String itemName;
    private String title;
    private String image;
    private Long price;
    private String videoName;
    private String videoNetpath;
    private String videoRealpath;
    private String note;
    private String remark;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }
    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public String getVideoNetpath() {
        return videoNetpath;
    }

    public void setVideoNetpath(String videoNetpath) {
        this.videoNetpath = videoNetpath;
    }

    public String getVideoRealpath() {
        return videoRealpath;
    }

    public void setVideoRealpath(String videoRealpath) {
        this.videoRealpath = videoRealpath;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}