package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editAd")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(req, resp);
//        int id;
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        String itemCon = req.getParameter("itemCon");
//        DaoFactory.getAdsDao().update(title, description,itemCon,id);
    }

}
