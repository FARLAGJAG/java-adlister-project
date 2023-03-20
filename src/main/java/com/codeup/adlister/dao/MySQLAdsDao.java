package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                Config.giveURL(),
                Config.giveUSER(),
                Config.givePSWD()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ad(user_id, title, description,item_condition,brand_id) VALUES (?, ?, ?,?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getItemCondition());
            stmt.setInt(4, ad.getBrandId());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    public Long delete(int id) {
        try {
            String deleteQuery = "DELETE FROM ad WHERE id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery);
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0L;
    }

//    public Long update (Ad ad) {
//        try {
//        Long id = ad.getId();
//        String updateQuery = "UPDATE ad SET title = ?, description = ? WHERE ?";
//        PreparedStatement stmt = connection.prepareStatement(updateQuery);
//        stmt.setSting(1, (PLACE_HOLDER));
//        stmt.setSting(2, (PLACE_HOLDER));
//        stmt.setSting(3, (PLACE_HOLDER));
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return 0L;
//    }


    @Override
    public Ad findById(int id) {
        try {
        String searchQuery = "SELECT * FROM ad WHERE id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(searchQuery);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public static void main(String[] args) {
//        System.out.println(DaoFactory.getAdsDao().findById(1));
//        System.out.println(DaoFactory.getAdsDao().delete(1));
        Ad ad = new Ad(1,"helpme","ow","good",1);
        DaoFactory.getAdsDao().insert(ad);
    }
}
