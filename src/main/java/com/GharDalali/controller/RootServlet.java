//    package com.GharDalali.controller;
//
//    import com.GharDalali.util.SessionUtil; 
//
//    import jakarta.servlet.ServletException;
//    import jakarta.servlet.annotation.WebServlet;
//    import jakarta.servlet.http.HttpServlet;
//    import jakarta.servlet.http.HttpServletRequest;
//    import jakarta.servlet.http.HttpServletResponse;
//    import java.io.IOException;
//
//
//    /**
//     * Handles requests to the root context path ("/") of the application.
//     * Redirects users to the appropriate view (login or home) based on
//     * their authentication status.
//     */
//    @WebServlet("/") // Map ONLY to the root path
//    public class RootServlet extends HttpServlet {
//        private static final long serialVersionUID = 1L;
//
//        @Override
//        protected void doGet(HttpServletRequest request, HttpServletResponse response)
//                throws ServletException, IOException {
//
//            String contextPath = request.getContextPath();
//
//          
//            if (SessionUtil.isLoggedIn(request)) {
//                 
//                 System.out.println("RootServlet: User logged in, redirecting to home view.");
//                 response.sendRedirect(contextPath + "/view?page=home");
//            } else {
//                 // Not logged-in: Redirect to the login page view
//                 System.out.println("RootServlet: User not logged in, redirecting to login view."); 
//                 response.sendRedirect(contextPath + "/view?page=login");
//            }
//        }
//
//        @Override
//        protected void doPost(HttpServletRequest request, HttpServletResponse response)
//                throws ServletException, IOException {
//            doGet(request, response);
//        }
//    }
//    