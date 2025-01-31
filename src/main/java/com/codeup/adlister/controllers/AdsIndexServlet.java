package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        User user = (User) request.getSession().getAttribute("user");
        if (user != null){
            request.setAttribute("adsToEdit", DaoFactory.getAdsDao().findByUserId(user.getId()));
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }


}
