package com.GharDalali.view; // Or com.GharDalali.view

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet responsible for displaying the admin dashboard page.
 * Forwards to the dashboard.jsp located inside WEB-INF.
 */
@WebServlet("/app/admin-dashboard") // This path is used in redirects
public class DashboardViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forwards to the actual JSP file inside WEB-INF
        // Add any data loading logic here if needed before forwarding
        request.getRequestDispatcher("/WEB-INF/pages/admin-dashboard.jsp").forward(request, response);
    }
}
