package com.GharDalali.view; 

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set; 
import java.util.HashSet; 

/**
 * Handles requests for displaying various JSP views based on the 'page' parameter.
 * Acts as a simple front controller for view dispatching.
 */
@WebServlet("/view") // Mapped to /view
public class ViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Define valid page names to prevent arbitrary forwarding
    private static final Set<String> VALID_PAGES = new HashSet<>();
    static {
        VALID_PAGES.add("login");
        VALID_PAGES.add("register");
        VALID_PAGES.add("home");
        VALID_PAGES.add("admin-dashboard");
        VALID_PAGES.add("forgotpassword");
        VALID_PAGES.add("resetpassword");
        // Other valid pages can be added later
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String page = request.getParameter("page");

        // Basic validation: check if page parameter exists and is in our allowed list
        if (page != null && VALID_PAGES.contains(page.toLowerCase())) {
            // Construct the path to the JSP inside WEB-INF/pages
            String jspPath = "/WEB-INF/pages/" + page.toLowerCase() + ".jsp";
            System.out.println("ViewServlet: Forwarding to: " + jspPath); // Debugging
            try {
                 request.getRequestDispatcher(jspPath).forward(request, response);
            } catch (Exception e) {
                 // Handle potential forwarding errors (e.g., JSP not found internally)
                 System.err.println("Error forwarding to " + jspPath + ": " + e.getMessage());
                 // Redirect to a generic error page or login page
                 response.sendError(HttpServletResponse.SC_NOT_FOUND, "The requested page could not be displayed.");
                 
            }
        } else {
            System.out.println("ViewServlet: Invalid or missing page parameter: " + page); // Debugging
            // Option 1: Redirect to login page
             response.sendRedirect(request.getContextPath() + "/view?page=login&invalidPage=true");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
