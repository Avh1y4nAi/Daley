package com.GharDalali.util; 

import java.util.regex.Pattern;

/**
 * Utility class for performing common input validations for the GharDalali application.
 */
public final class ValidationUtil {

    // Define max lengths based on DB schema (users table)
    public static final int MAX_USERNAME_LENGTH = 100;
    public static final int MAX_EMAIL_LENGTH = 100;
    public static final int MAX_CONTACT_NUMBER_LENGTH = 15;
    // Define minimum password length requirement
    public static final int MIN_PASSWORD_LENGTH = 8; 

    // Regular expression for basic email validation
    private static final String EMAIL_REGEX = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
    private static final Pattern EMAIL_PATTERN = Pattern.compile(EMAIL_REGEX);

    // Regular expression for simple contact number validation (digits, maybe +,-, spaces)
    // Adjust this regex based on expected formats (e.g., allowing optional '+', specific lengths)
    private static final String CONTACT_NUMBER_REGEX = "^[+]?[0-9\\s-]{7," + MAX_CONTACT_NUMBER_LENGTH + "}$";
    private static final Pattern CONTACT_NUMBER_PATTERN = Pattern.compile(CONTACT_NUMBER_REGEX);

    // Regular expression for username (e.g., alphanumeric, starting with letter, no spaces)
    // Adjust as needed (e.g., allow underscores, minimum length)
    private static final String USERNAME_REGEX = "^[a-zA-Z][a-zA-Z0-9_]{2," + (MAX_USERNAME_LENGTH - 1) + "}$"; // Example: starts with letter, allows numbers/underscore, 3+ chars total
    private static final Pattern USERNAME_PATTERN = Pattern.compile(USERNAME_REGEX);


    /**
     * Private constructor to prevent instantiation of utility class.
     */
    private ValidationUtil() {
        throw new UnsupportedOperationException("This is a utility class and cannot be instantiated");
    }

    /**
     * Checks if a string is null or effectively empty (after trimming whitespace).
     *
     * @param value The string value to check.
     * @return true if the value is null or empty, false otherwise.
     */
    public static boolean isNullOrEmpty(String value) {
        return value == null || value.trim().isEmpty();
    }

    /**
     * Checks if the length of a string exceeds a maximum limit.
     * Assumes isNullOrEmpty check is done separately if required.
     *
     * @param value     The string value to check.
     * @param maxLength The maximum allowed length.
     * @return true if the value is not null and its length is within the limit, false otherwise.
     */
    public static boolean isLengthValid(String value, int maxLength) {
        return value != null && value.length() <= maxLength;
    }

    /**
     * Validates a username based on pattern and length.
     * (Example: starts with letter, allows letters/numbers/underscore, 3-100 chars).
     *
     * @param username The username string to validate.
     * @return true if the username is valid, false otherwise.
     */
    public static boolean isValidUsername(String username) {
        if (isNullOrEmpty(username)) {
            return false;
        }
        // Check pattern first, then length (length check is implicit in regex example above)
        return USERNAME_PATTERN.matcher(username).matches();
        // If regex doesn't check length: return USERNAME_PATTERN.matcher(username).matches() && isLengthValid(username, MAX_USERNAME_LENGTH);
    }

    /**
     * Validates an email address based on a standard regex pattern and length.
     *
     * @param email The email string to validate.
     * @return true if the email is valid, false otherwise.
     */
    public static boolean isValidEmail(String email) {
        if (isNullOrEmpty(email)) {
            return false;
        }
        return EMAIL_PATTERN.matcher(email).matches() && isLengthValid(email, MAX_EMAIL_LENGTH);
    }

    /**
     * Validates a contact number based on a simple pattern (digits, optional '+', spaces, hyphens) and length.
     * Adjust the CONTACT_NUMBER_REGEX pattern if specific formats (like Nepal mobile) are required.
     *
     * @param number The contact number string to validate.
     * @return true if the contact number is considered valid based on the pattern, false otherwise.
     */
    public static boolean isValidContactNumber(String number) {
         if (isNullOrEmpty(number)) {
            return false;
        }
        return CONTACT_NUMBER_PATTERN.matcher(number).matches();
    }

    /**
     * Checks if a password meets a minimum length requirement.
     * Note: This does NOT check for complexity (uppercase, numbers, symbols).
     * Add complexity checks here if required by the project.
     *
     * @param password The password string to check.
     * @return true if the password is not null and meets the minimum length, false otherwise.
     */
    public static boolean isPasswordLongEnough(String password) {
        return password != null && password.length() >= MIN_PASSWORD_LENGTH;
    }

    /**
     * Checks if two passwords match.
     *
     * @param password        The first password string.
     * @param retypePassword The second password string (confirmation).
     * @return true if both passwords are not null and are equal, false otherwise.
     */
    public static boolean doPasswordsMatch(String password, String retypePassword) {
        // Ensure password itself isn't null before comparing
        return password != null && password.equals(retypePassword);
    }

    // --- Optional: Add Password Complexity Check ---
    /*
    public static boolean isPasswordComplex(String password) {
        if (password == null) return false;
        // Example: At least 1 uppercase, 1 lowercase, 1 digit, 1 special char [@$!%*?&]
        String complexRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{" + MIN_PASSWORD_LENGTH + ",}$";
        return password.matches(complexRegex);
    }
    */

}
