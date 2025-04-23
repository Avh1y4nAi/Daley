package com.GharDalali.controller;

import com.GharDalali.service.UserService;
import com.GharDalali.model.UserModel; 
import com.GharDalali.util.ValidationUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/forgotPassword") // Handles submission from forgotPassword.jsp
public class ForgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserService userService;

    @Override
    public void init() throws ServletException {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username"); 
        String contextPath = request.getContextPath();

        // Validate input
        if (ValidationUtil.isNullOrEmpty(username)) {
            request.setAttribute("errorMessage", "Username is required.");
            forwardToForgot(request, response);
            return;
        }

        try {
            // Use UserService to check if the user exists
            UserModel user = userService.findUserByUsername(username);

            if (user != null) {
                // User exists, store username in session to indicate permission to reset
                HttpSession session = request.getSession(); 
                session.setAttribute("resetUsername", username); 
                System.out.println("ForgotPasswordServlet says: User found, setting resetUsername: " + username); 
                response.sendRedirect(contextPath + "/view?page=resetpassword");
                return;

            } else {
                // User not found
                System.out.println("ForgotPasswordServlet says: User not found: " + username);
                request.setAttribute("errorMessage", "Username not found. Please check and try again.");
                forwardToForgot(request, response);
                return;
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error checking username. Please try again later.");
            forwardToForgot(request, response);
            return;
        } catch (Exception e) {
             e.printStackTrace();
             request.setAttribute("errorMessage", "An unexpected error occurred.");
             forwardToForgot(request, response);
             return;
        }
     
    }
    

    /** Helper method to forward back to the forgot password page */
    private void forwardToForgot(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/forgotpassword.jsp").forward(request, response);
    }

 
     @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         forwardToForgot(request, response);
     }
}
