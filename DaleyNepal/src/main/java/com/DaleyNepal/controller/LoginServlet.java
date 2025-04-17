package com.DaleyNepal.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/daley_nepal", "root", "");

            String query = "SELECT * FROM users WHERE firstName = ? AND password = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, username);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                session.setAttribute("fullName", rs.getString("firstName"));
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("role", rs.getString("role"));

                String role = rs.getString("role");
                if ("admin".equalsIgnoreCase(role)) {
                    response.sendRedirect(request.getContextPath() + "/pages/Dashboard.jsp");
                } else {
                    response.sendRedirect(request.getContextPath() + "/pages/index.jsp");
                }

                return; // 🚨 Stop further execution after redirect
            } else {
                // Invalid credentials
                request.setAttribute("status", "failed");
                request.getRequestDispatcher( "/pages/signin.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "exception");
            request.getRequestDispatcher("/pages/signin.jsp").forward(request, response);
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
