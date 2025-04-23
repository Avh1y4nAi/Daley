package com.GharDalali.controller;

import com.GharDalali.service.UserService;
import com.GharDalali.util.ValidationUtil;
import com.GharDalali.util.SessionUtil; // Can use this or direct session access

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/resetPassword") // Handles submission from resetPassword.jsp
public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserService userService;

    @Override
    public void init() throws ServletException {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	System.out.println("--- ResetPasswordServlet doPost START ---");
        HttpSession session = request.getSession(false); // Get existing session
        String username = null;
        String contextPath = request.getContextPath();

        // 1. Check if user is authorized to reset (username stored in session)
        if (session != null) {
            username = (String) session.getAttribute("resetUsername");
            System.out.println("ResetPasswordServlet: Found session, resetUsername = " + username);
        }
        else {
        	System.out.println("ResetPasswordServlet: No session found.");
        }

        if (username == null) {
            // Not authorized or session expired
        	System.out.println("ResetPasswordServlet: Unauthorized or session expired. Redirecting to login."); // DEBUG
            System.out.println("ResetPasswordServlet: No valid username found in session for reset.");
            request.setAttribute("loginError", "Your password reset session has expired or is invalid. Please start again.");
            // Redirect to login page view
            response.sendRedirect(contextPath + "/view?page=login");
            return;
        }

        // 2. Get new passwords from the form
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        System.out.println("ResetPasswordServlet: Received newPassword = " + newPassword); 
        System.out.println("ResetPasswordServlet: Received confirmPassword = " + confirmPassword);// DEBUG

        // 3. Validate passwords using ValidationUtil
        String errorMessage = null;
        if (ValidationUtil.isNullOrEmpty(newPassword) || ValidationUtil.isNullOrEmpty(confirmPassword)) {
            errorMessage = "Both password fields are required.";
        } else if (!ValidationUtil.isPasswordLongEnough(newPassword)) {
             errorMessage = "Password must be at least " + ValidationUtil.MIN_PASSWORD_LENGTH + " characters long.";
             // Add complexity check here if needed
        } else if (!ValidationUtil.doPasswordsMatch(newPassword, confirmPassword)) {
            errorMessage = "New passwords do not match.";
        }
        System.out.println("ResetPasswordServlet: Validation result - errorMessage = " + errorMessage);
        if (errorMessage != null) {
        	 System.out.println("ResetPasswordServlet: Validation failed, forwarding back to reset page.");
             request.setAttribute("errorMessage", errorMessage);
             forwardToReset(request, response);
             return;
        }

        try {
            // 4. Call service to update the password
        	System.out.println("ResetPasswordServlet: Calling userService.updatePassword for user: " + username);
            boolean updated = userService.updatePassword(username, newPassword);
            System.out.println("ResetPasswordServlet: userService.updatePassword returned: " + updated); 
            if (updated) {
                // Password updated successfully
            	System.out.println("ResetPasswordServlet: Password reset SUCCESS. Redirecting to login."); 
                System.out.println("ResetPasswordServlet: Password successfully reset for " + username);
                // Invalidate the reset permission
                session.removeAttribute("resetUsername");
                // Set success message for login page (using session flash attribute)
                session.setAttribute("passwordResetStatus", "success");
                // Redirect to login page view
                response.sendRedirect(contextPath + "/view?page=login");
                // No return needed here

            } else {
                // Update failed (e.g., user might have been deleted)
            	System.out.println("ResetPasswordServlet: Update returned false, forwarding back to reset page.");
                request.setAttribute("errorMessage", "Password reset failed. User may not exist anymore.");
                 if(session != null) session.removeAttribute("resetUsername"); // Invalidate permission
                forwardToReset(request, response);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error updating password due to a server issue.");
            if(session != null) session.removeAttribute("resetUsername"); // Invalidate permission
            forwardToReset(request, response);
        } catch (Exception e) {
             e.printStackTrace();
             request.setAttribute("errorMessage", "An unexpected error occurred.");
             if(session != null) session.removeAttribute("resetUsername"); // Invalidate permission
             forwardToReset(request, response);
        }
    }

    /** Helper method to forward back to the reset password page */
    private void forwardToReset(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/resetpassword.jsp").forward(request, response);
    }

     // Optional: Handle GET request - check authorization before showing page
     @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession(false);
         if (session == null || session.getAttribute("resetUsername") == null) {
             System.out.println("ResetPasswordServlet GET: No valid username found in session for reset.");
             request.setAttribute("loginError", "Your password reset session has expired or is invalid. Please start again.");
             response.sendRedirect(request.getContextPath() + "/view?page=login");
         } else {
             // Authorized to see the reset page
             forwardToReset(request, response);
         }
     }
}
