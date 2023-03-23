package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    Long delete(int id);
    Long update (String title, String description, String itemCon, int id);
    Ad findById(int id);

    Ad findByTitle(String title);
    List<Ad> findByBrandId(int i);
    List<Ad> findByUserId(int i);
}
