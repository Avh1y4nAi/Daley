package com.DaleyNepal.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fullName = request.getParameter("fullName");
		String contactNumber = request.getParameter("contactNumber");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String role = request.getParameter("role");

		Connection con = null;
		RequestDispatcher dispatcher = null;

		// Split full name into first and last name
		String firstName = "", lastName = "";
		if (fullName != null && fullName.contains(" ")) {
			int spaceIndex = fullName.indexOf(" ");
			firstName = fullName.substring(0, spaceIndex);
			lastName = fullName.substring(spaceIndex + 1);
		} else {
			firstName = fullName;
			lastName = "";
		}

		// Password match check
		if (!password.equals(confirmPassword)) {
			response.sendRedirect("signup.jsp?error=password_mismatch");
			return;
		}

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/daley_nepal", "root", "");

			PreparedStatement pst = con.prepareStatement(
				"INSERT INTO users (firstName, lastName, contactNumber, email, password, role) VALUES (?, ?, ?, ?, ?, ?)"
			);

			pst.setString(1, firstName);
			pst.setString(2, lastName);
			pst.setString(3, contactNumber);
			pst.setString(4, email);
			pst.setString(5, password); 
			pst.setString(6, role);

			int result = pst.executeUpdate();

			// Forward to signup.jsp with status message
			dispatcher = request.getRequestDispatcher("/pages/signup.jsp");
			if (result > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		    RequestDispatcher errorDispatcher = request.getRequestDispatcher("/pages/signup.jsp");
		    request.setAttribute("status", "exception");
		    errorDispatcher.forward(request, response);
		} finally {
			try {
				if (con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
