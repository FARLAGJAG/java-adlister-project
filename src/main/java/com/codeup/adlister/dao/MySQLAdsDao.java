package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
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
    public List<Ad> findByUserId (int id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE user_id LIKE ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }



    @Override
    public Long insert(Ad ad) {
        System.out.println(ad.getBrandId());
        try {
            String insertQuery = "INSERT INTO ads(title, description,item_condition,user_id, brand_id) VALUES (?, ?, ?,?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setString(3, ad.getItemCondition());
            stmt.setInt(4, ad.getUserId());
            stmt.setInt(5, ad.getBrandId());
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
            String deleteQuery = "DELETE FROM ads WHERE id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, id);
            System.out.println(id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0L;
    }

//    public void update (Ad ad) {
//        try {
//        int id = ad.getId();
//
//        String updateQuery = "UPDATE ads SET title = ?, description = ?, item_condition = ? WHERE id LIKE ?";
//
//
//        PreparedStatement stmt = connection.prepareStatement(updateQuery);
//        stmt.setSting(1, (getParamater("PLACE_HOLDER")));
//        stmt.setSting(2, (PLACE_HOLDER));
//        stmt.setInt(3, (id));
//        stmt.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }

    public Long update (String title, String description, String itemCon, int id) {
        try {
            String updateQuery = "UPDATE ads SET title = ?, description = ?, item_condition = ? WHERE id like ?";
            PreparedStatement stmt = connection.prepareStatement(updateQuery);
            stmt.setString(1, (title));
            stmt.setString(2, (description));
            stmt.setString(3, (itemCon));
            stmt.setInt(4, (id));
            System.out.println(id);

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0L;
    }

    @Override
    public Ad findById(int id) {
        try {
            String searchQuery = "SELECT * FROM ads WHERE id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(searchQuery);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Ad findByTitle(String title) {
        try {
            String searchQuery = "SELECT * FROM ads WHERE title LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(searchQuery);
            stmt.setString(1, title);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Ad> findByBrandId(int id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE brand_id LIKE ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(

                rs.getInt("id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getString("item_condition"),
                rs.getInt("user_id"),
                rs.getInt("brand_id")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public void doJoins() {
        String brandAdQuery = "SELECT * FROM ads JOIN brands ON ads.brand_id =  brands.id";
        String adUserQuery = "SELECT * FROM ads JOIN users ON ads.user_id = users.id";
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(brandAdQuery);
            statement.executeUpdate(adUserQuery);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) {
//        Ad ad = new Ad("TEST-title","TEST-dEs", "TEST-con", 1,1);
//        DaoFactory.getAdsDao().delete(3);
//        System.out.println(DaoFactory.getAdsDao().findById(2).getTitle());
        System.out.println(DaoFactory.getAdsDao().all());
        System.out.println(DaoFactory.getAdsDao().findByBrandId(4));

    }
}
