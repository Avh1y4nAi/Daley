package com.GharDalali.util;

import com.GharDalali.model.UserModel; // Import your UserModel

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Utility class for managing HTTP sessions, particularly user login status.
 */
public final class SessionUtil { // Make class final

    // Define the key used to store the user object in the session
    private static final String LOGGED_IN_USER_ATTRIBUTE = "loggedInUser";

    /**
     * Private constructor to prevent instantiation of utility class.
     */
    private SessionUtil() {
        throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
    }

    /**
     * Stores the logged-in user object in the HTTP session.
     * Creates a new session if one doesn't exist.
     *
     * @param request The HttpServletRequest object.
     * @param user    The UserModel object representing the logged-in user.
     */
    public static void setLoggedInUser(HttpServletRequest request, UserModel user) {
        // Get session, create one if it doesn't exist (true)
        HttpSession session = request.getSession(true);
        session.setAttribute(LOGGED_IN_USER_ATTRIBUTE, user);
    }

    /**
     * Retrieves the logged-in user object from the HTTP session.
     *
     * @param request The HttpServletRequest object.
     * @return The UserModel object if the user is logged in, otherwise null.
     */
    public static UserModel getLoggedInUser(HttpServletRequest request) {
        // Get session, don't create if it doesn't exist (false)
        HttpSession session = request.getSession(false);
        if (session != null) {
            Object userAttribute = session.getAttribute(LOGGED_IN_USER_ATTRIBUTE);
            if (userAttribute instanceof UserModel) {
                return (UserModel) userAttribute;
            }
        }
        return null; // No session or user attribute not found/not correct type
    }

    /**
     * Checks if a user is currently logged in (i.e., a valid user object exists in the session).
     *
     * @param request The HttpServletRequest object.
     * @return true if a user is logged in, false otherwise.
     */
    public static boolean isLoggedIn(HttpServletRequest request) {
        return getLoggedInUser(request) != null;
    }

    /**
     * Invalidates the current HTTP session, effectively logging the user out.
     * If no session exists, this method does nothing.
     *
     * @param request The HttpServletRequest object.
     */
    public static void invalidateSession(HttpServletRequest request) {
        // Get session, don't create if it doesn't exist (false)
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); // Destroy the session
        }
    }

}
