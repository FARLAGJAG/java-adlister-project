package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/nintendoAds")
public class NintendoOnlyAds extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            List<Ad> ads = DaoFactory.getAdsDao().findByBrandId(2);

            request.setAttribute("ads", DaoFactory.getAdsDao().findByBrandId(2));
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        }
    }

