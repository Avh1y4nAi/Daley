package com.GharDalali.view; // Or com.GharDalali.view

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet responsible for displaying the registration page.
 * Forwards to the register.jsp located inside WEB-INF.
 */
@WebServlet("/app/register") // Define a path for displaying the registration page
public class RegisterViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forwards to the actual JSP file inside WEB-INF
        request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
    }
}
