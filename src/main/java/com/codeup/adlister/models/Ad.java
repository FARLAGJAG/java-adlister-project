package com.codeup.adlister.models;

import java.util.Objects;

public class Ad {
    private int id;
    private int user_id;
    private String title;
    private String description;

    private String item_condition;

    private int brand_id;

    public Ad() {

    }
    public Ad(int user_id, String title, String description, String item_condition) {
        this.user_id = user_id;
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
    }

    public Ad(String title, String description, String item_condition, int user_id, int brand_id) {
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
        this.user_id = user_id;
        this.brand_id = brand_id;
    }

    public Ad(String title, String description, String item_condition, String brand) {
        this.title = title;
        this.description = description;
        this.item_condition = item_condition;
        this.brand_id = createBrandId(brand);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return user_id;
    }

    public void setUserId(int user_id) {
        this.user_id = user_id;
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

    public static int createBrandId (String brand)  {
        switch (brand) {
            case "nintendo":
                return 2;

            case "playstation":
                return 4;

            case "sega":
                return 1;

            case "xbox":
                return 3;
                default: return 0;
        }
    }
}
