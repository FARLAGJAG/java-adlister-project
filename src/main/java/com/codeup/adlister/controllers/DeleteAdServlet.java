package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteAd")
public class DeleteAdServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        TODO how do i find the title of the specific add i want to delete
        int id = Integer.parseInt(req.getParameter("ad_id"));
        DaoFactory.getAdsDao().delete(id);
        resp.sendRedirect("/profile");
    }
}
