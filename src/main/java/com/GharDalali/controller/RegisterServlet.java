package com.GharDalali.controller;

import com.GharDalali.model.UserModel;
import com.GharDalali.service.UserService; 
import com.GharDalali.service.UserService.DuplicateUserException; 
import com.GharDalali.service.UserService.RegistrationException;
import com.GharDalali.util.ValidationUtil; 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException; // Import SQLException for catch block

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserService userService; // Service instance

    @Override
    public void init() throws ServletException {
        
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get parameters
        String username = request.getParameter("username");
        String contactNumber = request.getParameter("contactNumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String contextPath = request.getContextPath();

        // --- 2. Validation using ValidationUtil ---
        String errorMessage = null;
        if (ValidationUtil.isNullOrEmpty(username) || ValidationUtil.isNullOrEmpty(contactNumber) ||
            ValidationUtil.isNullOrEmpty(email) || ValidationUtil.isNullOrEmpty(password) ||
            ValidationUtil.isNullOrEmpty(confirmPassword)) {
            errorMessage = "All fields are required.";
        } else if (!ValidationUtil.isValidUsername(username)) {
            errorMessage = "Invalid username format or length (must start with letter, alphanumeric).";
        } else if (!ValidationUtil.isValidEmail(email)) {
            errorMessage = "Invalid email format or length.";
        } else if (!ValidationUtil.isValidContactNumber(contactNumber)) {
            errorMessage = "Invalid contact number format or length.";
        } else if (!ValidationUtil.isPasswordLongEnough(password)) {
            errorMessage = "Password must be at least " + ValidationUtil.MIN_PASSWORD_LENGTH + " characters long.";
            // Add complexity check here if needed:
            // else if (!ValidationUtil.isPasswordComplex(password)) { errorMessage = "Password does not meet complexity requirements."; }
        } else if (!ValidationUtil.doPasswordsMatch(password, confirmPassword)) {
            errorMessage = "Passwords do not match.";
        }

        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            setFormValuesOnError(request); // Retain values
            forwardToRegister(request, response);
            return;
        }
        // 3. Create UserModel object (temporarily holding plain password)
        UserModel newUser = new UserModel();
        newUser.setUsername(username);
        newUser.setContactNumber(contactNumber);
        newUser.setEmail(email);
        newUser.setPassword(password); // Set plain password for service to hash

        try {
            // 4. Call the service to register the user
            userService.registerUser(newUser);

            // 5. Registration successful: Set session attribute and redirect
            request.getSession().setAttribute("registrationStatus", "success");
            response.sendRedirect(contextPath + "/view?page=login");
        

        } catch (DuplicateUserException e) {
            // Handle duplicate user error
            request.setAttribute("errorMessage", e.getMessage());
            setFormValuesOnError(request);
            forwardToRegister(request, response);
        } catch (RegistrationException | SQLException | ClassNotFoundException e) {
           
            e.printStackTrace(); 
            request.setAttribute("errorMessage", "Registration failed due to a server error. Please try again later.");
            setFormValuesOnError(request);
            forwardToRegister(request, response);
        } catch (Exception e) {
           
            e.printStackTrace();
            request.setAttribute("errorMessage", "An unexpected error occurred during registration.");
            setFormValuesOnError(request);
            forwardToRegister(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the registration JSP
        forwardToRegister(request, response);
    }
    private void forwardToRegister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
    }

    private void setFormValuesOnError(HttpServletRequest request) {
        request.setAttribute("usernameValue", request.getParameter("username"));
        request.setAttribute("contactNumberValue", request.getParameter("contactNumber"));
        request.setAttribute("emailValue", request.getParameter("email"));
    }
}
