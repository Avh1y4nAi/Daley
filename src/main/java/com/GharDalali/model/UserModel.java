package com.GharDalali.model;


public class UserModel {
	
    private int userid;          
    private String username;     
    private String contactNumber;
    private String email;   
    private String password;   
    private String role;   
    private String address;     
    private String profilePicture;
    private String bio;         

    
    public UserModel() {
    }

   
    public UserModel(int userid, String username, String contactNumber, String email, String password, String role, String address, String profilePicture, String bio) {
        this.userid = userid;
        this.username = username;
        this.contactNumber = contactNumber;
        this.email = email;
        this.password = password;
        this.role = role;
        this.address = address;
        this.profilePicture = profilePicture;
        this.bio = bio;
    }

    // Getters and setters

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }
}