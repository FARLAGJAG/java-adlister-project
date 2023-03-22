package com.codeup.adlister.models;

import java.util.Objects;

public class Ad {
    private int id;
    private int userId;
    private String title;
    private String description;

    private String item_condition;

    private int brand_id;

    public Ad() {

    }
    public Ad(int userId, String title, String description, String item_condition) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
    }

    public Ad(String title, String description, String item_condition, int userId, int brand_id) {
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
        this.userId = userId;
        this.brand_id = brand_id;
    }

    public Ad(String title, String description, String item_condition, String brand) {
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
        switch (brand) {
            case "Nintendo":
                this.brand_id = 2;
                break;
            case "Playstation":
                this.brand_id = 4;
                break;
            case "Sega":
                this.brand_id = 1;
                break;
            case "Xbox":
                this.brand_id = 3;
                break;
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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

    public void setItemCondition(String item) {
        this.item_condition = item_condition;
    }

    public int getBrandId(){
        return brand_id;
    }

    public void setBrandId(int brand_id){
        this.brand_id = brand_id;
    }
}
