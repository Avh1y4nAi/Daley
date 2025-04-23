package com.GharDalali.filter;

import com.GharDalali.model.UserModel;
import com.GharDalali.service.UserService;
import com.GharDalali.util.CookieUtil;
import com.GharDalali.util.SessionUtil;

import jakarta.servlet.DispatcherType; 
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;


@WebFilter("/*") // If not using dispatcherTypes in annotation, the check below is needed
public class AuthenticationFilter implements Filter {

    private static final String REMEMBER_ME_COOKIE_NAME = "rememberMeUser";
    // Define paths/resources that are ALWAYS public (no auth check needed)
    private static final Set<String> ALWAYS_PUBLIC_URIS = new HashSet<>(Arrays.asList(
            "/login",         
            "/register",      
            "/forgotPassword",
            "/resetPassword",  
            "/css/",          
            "/js/",           
            "/images/"         
            
    ));

    private static final Set<String> PUBLIC_VIEW_PAGES = new HashSet<>(Arrays.asList(
            "login",
            "register",
            "forgotpassword",
            "resetpassword"
            
    ));

    private UserService userService; 

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        userService = new UserService(); // Initialize service
        System.out.println("AuthenticationFilter initialized.");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        if (request.getDispatcherType() != DispatcherType.REQUEST) {
             System.out.println("Filter: Skipping non-REQUEST dispatch type: " + request.getDispatcherType()); 
             chain.doFilter(request, response);
             return; 
        }
        


        String requestURI = httpRequest.getRequestURI();
        String contextPath = httpRequest.getContextPath();
        String relativeRequestURI = requestURI.substring(contextPath.length());
        System.out.println("--- Filter Start (REQUEST Dispatch) ---");
        System.out.println("Filter: Request URI = " + relativeRequestURI); 


        // 1. Check if it's an always public resource
        boolean isAlwaysPublic = isAlwaysPublicResource(relativeRequestURI);
        System.out.println("Filter: isAlwaysPublic = " + isAlwaysPublic);
        if (isAlwaysPublic) {
            System.out.println("Filter: Allowing always public resource."); 
            chain.doFilter(request, response);
            System.out.println("--- Filter End (Allowed Always Public) ---"); 
            return;
        }

      
        if ("/view".equals(relativeRequestURI)) {
            String page = request.getParameter("page");
             System.out.println("Filter: /view requested, page parameter = " + page); 
            if (page != null) {
                 String lowerCasePage = page.toLowerCase();
                 boolean isPublicView = PUBLIC_VIEW_PAGES.contains(lowerCasePage);
                 System.out.println("Filter: Checking if '" + lowerCasePage + "' is in PUBLIC_VIEW_PAGES. Result = " + isPublicView); 
                 if (isPublicView) {
                    System.out.println("Filter: Allowing public view page."); 
                    chain.doFilter(request, response);
                    System.out.println("--- Filter End (Allowed Public View) ---"); 
                    return;
                 }
            }
             // If /view but not a public page, proceed to authentication check below
             System.out.println("Filter: /view requested, but page '" + page + "' is not public. Proceeding to auth check."); // DEBUG
        }

        // --- 3. Authentication Check for all other resources ---
        boolean isAuthenticated = SessionUtil.isLoggedIn(httpRequest);
        System.out.println("Filter: isAuthenticated (Session) = " + isAuthenticated); // DEBUG Check 3

        if (isAuthenticated) {
            // User is logged in via session, allow access
            System.out.println("Filter: Allowing authenticated session."); // DEBUG Allow 3
            chain.doFilter(request, response);
        } else {
            // No active session, check for "Remember Me" cookie
            Cookie rememberMeCookie = CookieUtil.getCookie(httpRequest, REMEMBER_ME_COOKIE_NAME);
            System.out.println("Filter: RememberMe Cookie found = " + (rememberMeCookie != null)); // DEBUG Check 4
            if (rememberMeCookie != null) {
                String username = rememberMeCookie.getValue();
                UserModel user = null;
                try {
                    // Use UserService to find user
                    user = userService.findUserByUsername(username);
                } catch (SQLException | ClassNotFoundException e) {
                    System.err.println("Filter: Error checking remember me cookie: " + e.getMessage());
                    e.printStackTrace();
                    user = null;
                }

                if (user != null) {
                    // Cookie valid, auto-login
                    SessionUtil.setLoggedInUser(httpRequest, user);
                    System.out.println("Filter: Cookie valid, auto-login session created for: " + username); // Debug
                    chain.doFilter(request, response); // Proceed
                } else {
                    // Invalid/stale cookie
                    System.out.println("Filter: Invalid cookie found for username: " + username); // Debug
                    CookieUtil.deleteCookie(httpResponse, REMEMBER_ME_COOKIE_NAME);
                    redirectToLogin(httpRequest, httpResponse);
                }
            } else {
                // No session, no valid cookie -> Redirect to login page view
                System.out.println("Filter: No session/cookie, redirecting to login for: " + relativeRequestURI); // Debug
                redirectToLogin(httpRequest, httpResponse);
            }
        }
        System.out.println("--- Filter End ---"); // DEBUG End
    }

    // ... isAlwaysPublicResource method ...
    private boolean isAlwaysPublicResource(String uri) {
        if (ALWAYS_PUBLIC_URIS.contains(uri)) { return true; }
        for (String publicPrefix : ALWAYS_PUBLIC_URIS) {
            if (publicPrefix.endsWith("/") && uri.startsWith(publicPrefix)) { return true; }
        }
        return false;
    }

    // ... getUserByUsername method (now removed as it's in UserService) ...

    // ... redirectToLogin method ...
    private void redirectToLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/view?page=login");
    }

    @Override
    public void destroy() {
        System.out.println("AuthenticationFilter destroyed.");
    }
}
