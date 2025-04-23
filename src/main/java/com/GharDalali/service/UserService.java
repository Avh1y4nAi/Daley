package com.GharDalali.service;

import com.GharDalali.config.DbConfig;
import com.GharDalali.model.UserModel;
import com.GharDalali.util.PasswordUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Service class containing business logic related to users.
 * Handles registration, authentication, user retrieval, and password updates.
 */
public class UserService {

    /**
     * Registers a new user in the database.
     * Checks for duplicate username/email before inserting.
     * Hashes the password before storing.
     *
     * @param user The UserModel object containing user details (username, email, contact, plain password).
     * @throws SQLException            If a database access error occurs.
     * @throws ClassNotFoundException  If the database driver cannot be found.
     * @throws DuplicateUserException  If the username or email already exists.
     * @throws RegistrationException   If the insertion fails for other reasons.
     */
    public void registerUser(UserModel user) throws SQLException, ClassNotFoundException, DuplicateUserException, RegistrationException {
        // Check for duplicates first
        if (doesUserExist(user.getUsername(), user.getEmail())) {
            throw new DuplicateUserException("Username or Email already registered.");
        }

        // Hash the password (assuming plain password was temporarily set in the user model)
        String hashedPassword = PasswordUtil.hashPassword(user.getPassword());

        String insertUserSql = "INSERT INTO users (username, contactNumber, email, password) VALUES (?, ?, ?, ?)";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement insertUserStmt = conn.prepareStatement(insertUserSql)) {

            insertUserStmt.setString(1, user.getUsername());
            insertUserStmt.setString(2, user.getContactNumber());
            insertUserStmt.setString(3, user.getEmail());
            insertUserStmt.setString(4, hashedPassword); // Store the hashed password

            int rowsAffected = insertUserStmt.executeUpdate();

            if (rowsAffected == 0) {
                throw new RegistrationException("User registration failed, no rows affected.");
            }
             System.out.println("UserService: User registered successfully: " + user.getUsername());

        } catch (SQLException e) {
            System.err.println("SQL Error during registration: " + e.getMessage());
            e.printStackTrace();
            throw new RegistrationException("Database error during registration.", e);
        }
    }

    /**
     * Authenticates a user based on username and plain text password.
     *
     * @param username          The username entered by the user.
     * @param submittedPassword The plain text password entered by the user.
     * @return The authenticated UserModel object if credentials are valid, otherwise null.
     * @throws SQLException           If a database access error occurs.
     * @throws ClassNotFoundException If the database driver cannot be found.
     */
    public UserModel authenticateUser(String username, String submittedPassword) throws SQLException, ClassNotFoundException {
        UserModel user = null;
        String sql = "SELECT userid, password, role, email, contactNumber FROM users WHERE username = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, username);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    String storedHashedPassword = rs.getString("password");
                    String hashedSubmittedPassword = PasswordUtil.hashPassword(submittedPassword);

                    if (hashedSubmittedPassword.equals(storedHashedPassword)) {
                        // Passwords match! Populate the user model (without password)
                        user = new UserModel();
                        user.setUserid(rs.getInt("userid"));
                        user.setUsername(username); 
                        user.setRole(rs.getString("role"));
                        user.setEmail(rs.getString("email"));
                        user.setContactNumber(rs.getString("contactNumber"));
                        System.out.println("UserService: User authenticated successfully: " + username);
                    } else {
                         System.out.println("UserService: Password mismatch for user: " + username);
                    }
                } else {
                     System.out.println("UserService: User not found: " + username);
                }
            }
        } catch (SQLException e) {
             System.err.println("SQL Error during authentication: " + e.getMessage());
             e.printStackTrace();
             throw e;
        }
        return user;
    }

    /**
     * Finds a user by their username. Used for checks and potentially for auto-login via cookie.
     *
     * @param username The username to search for.
     * @return The UserModel object if found (excluding password), otherwise null.
     * @throws SQLException           If a database access error occurs.
     * @throws ClassNotFoundException If the database driver cannot be found.
     */
    public UserModel findUserByUsername(String username) throws SQLException, ClassNotFoundException {
         UserModel user = null;
         String sql = "SELECT userid, role, email, contactNumber FROM users WHERE username = ?";

         try (Connection conn = DbConfig.getDbConnection();
              PreparedStatement pstmt = conn.prepareStatement(sql)) {

             pstmt.setString(1, username);
             try (ResultSet rs = pstmt.executeQuery()) {
                 if (rs.next()) {
                     user = new UserModel();
                     user.setUserid(rs.getInt("userid"));
                     user.setUsername(username); // Set username from parameter
                     user.setRole(rs.getString("role"));
                     user.setEmail(rs.getString("email"));
                     user.setContactNumber(rs.getString("contactNumber"));
                 }
             }
         } catch (SQLException e) {
             System.err.println("SQL Error finding user by username: " + e.getMessage());
             e.printStackTrace();
             throw e; // Re-throw SQL exception
         }
         // ClassNotFoundException from DbConfig is propagated

         return user;
    }


    /**
     * Checks if a user exists based on username or email.
     * Used internally by registerUser to check for duplicates.
     *
     * @param username The username to check.
     * @param email    The email to check.
     * @return true if a user with the given username or email exists, false otherwise.
     * @throws SQLException           If a database access error occurs.
     * @throws ClassNotFoundException If the database driver cannot be found.
     */
    private boolean doesUserExist(String username, String email) throws SQLException, ClassNotFoundException {
        String checkUserSql = "SELECT userid FROM users WHERE username = ? OR email = ?";
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement checkUserStmt = conn.prepareStatement(checkUserSql)) {

            checkUserStmt.setString(1, username);
            checkUserStmt.setString(2, email);
            try (ResultSet rs = checkUserStmt.executeQuery()) {
                return rs.next(); // Returns true if a row is found
            }
        }
        // Exceptions are propagated up
    }

    /**
     * Updates the password for a given username.
     * Hashes the new password before storing.
     *
     * @param username    The username of the user whose password needs updating.
     * @param newPassword The new plain text password.
     * @return true if the password was successfully updated, false otherwise (e.g., user not found).
     * @throws SQLException           If a database access error occurs.
     * @throws ClassNotFoundException If the database driver cannot be found.
     */
    public boolean updatePassword(String username, String newPassword) throws SQLException, ClassNotFoundException {
        // Hash the new password
        String hashedNewPassword = PasswordUtil.hashPassword(newPassword);

        String updateUserSql = "UPDATE users SET password = ? WHERE username = ?";
        int rowsAffected = 0;

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement updateUserStmt = conn.prepareStatement(updateUserSql)) {

            updateUserStmt.setString(1, hashedNewPassword);
            updateUserStmt.setString(2, username);

            rowsAffected = updateUserStmt.executeUpdate();

            if (rowsAffected > 0) {
                 System.out.println("UserService: Password updated successfully for user: " + username);
            } else {
                 System.out.println("UserService: User not found during password update attempt: " + username);
            }

        } catch (SQLException e) {
            System.err.println("SQL Error during password update: " + e.getMessage());
            e.printStackTrace();
            throw e; // Re-throw SQL exception
        }

        return rowsAffected > 0;
    }


    public static class DuplicateUserException extends Exception {
        private static final long serialVersionUID = 1L; 
        public DuplicateUserException(String message) {
            super(message);
        }
    }

    public static class RegistrationException extends Exception {
         private static final long serialVersionUID = 1L; 
        public RegistrationException(String message) {
            super(message);
        }
        public RegistrationException(String message, Throwable cause) {
            super(message, cause);
        }
    }
}
