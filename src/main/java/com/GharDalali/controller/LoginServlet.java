package com.GharDalali.controller;

import com.GharDalali.model.UserModel;
import com.GharDalali.service.UserService; // Import UserService
import com.GharDalali.util.CookieUtil;
import com.GharDalali.util.SessionUtil;
import com.GharDalali.util.ValidationUtil; // Import ValidationUtil

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException; // Import for catch block

@WebServlet(urlPatterns = {"/login","/"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String REMEMBER_ME_COOKIE_NAME = "rememberMeUser";
    private UserService userService; 

    @Override
    public void init() throws ServletException {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String submittedPassword = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");
        String contextPath = request.getContextPath();

        // Basic validation
        if (ValidationUtil.isNullOrEmpty(username) || ValidationUtil.isNullOrEmpty(submittedPassword)) {
            request.setAttribute("loginError", "Username and password are required.");
            forwardToLogin(request, response);
            return;
        }

        try {
            // Call the service to authenticate
            UserModel loggedInUser = userService.authenticateUser(username, submittedPassword);

            if (loggedInUser != null) {
                // Authentication successful!
                SessionUtil.setLoggedInUser(request, loggedInUser); // Use SessionUtil

                // Cookie Logic
                if ("true".equals(rememberMe)) {
                    int maxAgeSeconds = 14 * 24 * 60 * 60; // 14 days
                    CookieUtil.addCookie(response, REMEMBER_ME_COOKIE_NAME, loggedInUser.getUsername(), maxAgeSeconds);
                } else {
                    CookieUtil.deleteCookie(response, REMEMBER_ME_COOKIE_NAME);
                }

                // Redirect based on role
                if ("Admin".equalsIgnoreCase(loggedInUser.getRole())) {
                    response.sendRedirect(contextPath + "/view?page=admin-dashboard");
                } else {
                    response.sendRedirect(contextPath + "/view?page=home");
                }

            } else {
                // Authentication failed (user not found or password mismatch)
                request.setAttribute("loginError", "Invalid username or password.");
                CookieUtil.deleteCookie(response, REMEMBER_ME_COOKIE_NAME); // Ensure cookie is deleted on fail
                forwardToLogin(request, response);
            }

        } catch (SQLException | ClassNotFoundException e) {
            // Handle DB or driver errors during authentication
            e.printStackTrace(); // Log the full stack trace
            request.setAttribute("loginError", "Login failed due to a server error. Please try again later.");
            CookieUtil.deleteCookie(response, REMEMBER_ME_COOKIE_NAME);
            forwardToLogin(request, response);
        } catch (Exception e) {
            // Catch any other unexpected errors
            e.printStackTrace();
            request.setAttribute("loginError", "An unexpected error occurred during login.");
            CookieUtil.deleteCookie(response, REMEMBER_ME_COOKIE_NAME);
            forwardToLogin(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the login JSP
        forwardToLogin(request, response);
    }

    /** Helper method to forward back to the login page */
    private void forwardToLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }
}
