package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

import static java.lang.Integer.parseInt;

@WebServlet("/details")
public class AdDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // make statment//
        try {
            // connect driver //
            Connection connection = new MySQLAdsDao(new Config);
            // make query SELECT * FROM ad WHERE id LIKE (ID_OF_AD) //
            String showDetailsQuery = "SELECT * FROM ad WHERE id LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(showDetailsQuery);
            int thisId = parseInt(req.getParameter("id"));
            stmt.setInt(1, thisId);
            ResultSet rs = stmt.executeQuery(showDetailsQuery);
            rs.next();
            Ad ad = extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        // set the object as an attribute for front end //
        int thisID = (int) req.getAttribute("id");
        req.setAttribute("thisAd", DaoFactory.getAdsDao().findById(thisID));
        // send the details.jsp //
        req.getRequestDispatcher("/WEB-INF/ads/details.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

}