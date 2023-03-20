package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;

    private String item_condition;

    private int brand_id;

    public Ad() {

    }

    public Ad(int userId,String title, String description,String item_condition, int brand_id) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
        this.brand_id = brand_id;
    }

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
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

    public String getItemCondition() {
        return item_condition;
    }

    public int getBrandId(){
        return brand_id;
    }
}
