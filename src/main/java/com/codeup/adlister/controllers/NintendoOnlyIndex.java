package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/nintendoAds")
public class NintendoOnlyIndex extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setAttribute("ads", DaoFactory.getAdsDao().findByBrandId(2));
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        }
    }

