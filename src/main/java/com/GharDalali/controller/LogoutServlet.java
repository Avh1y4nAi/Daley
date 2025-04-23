package com.GharDalali.controller;

import com.GharDalali.util.CookieUtil; 
import com.GharDalali.util.SessionUtil; 

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    private static final String REMEMBER_ME_COOKIE_NAME = "rememberMeUser";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Invalidate session using SessionUtil
        SessionUtil.invalidateSession(request);

        // 2. Delete the specific "Remember Me" cookie using CookieUtil
        CookieUtil.deleteCookie(response, REMEMBER_ME_COOKIE_NAME);

        // 3. Redirect to the login view using the ViewServlet pattern
        response.sendRedirect(request.getContextPath() + "/view?page=login");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
