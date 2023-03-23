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
        int id = Integer.parseInt(req.getParameter("id"));

        req.setAttribute("ad_id", DaoFactory.getAdsDao().findById(id));
        req.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//      TODO how do i find the id of the specific ad i want to update
        int id = Integer.parseInt((String) req.getAttribute("id"));
        System.out.println(id);
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        String itemCon = req.getParameter("itemCon");
        DaoFactory.getAdsDao().update(title, description,itemCon,id);
        resp.sendRedirect("/profile");

    }

}
