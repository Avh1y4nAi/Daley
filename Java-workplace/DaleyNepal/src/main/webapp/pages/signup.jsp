<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Sign Up - Daley Nepal</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
  <script src="https://unpkg.com/feather-icons"></script>

</head>

<body>

  <nav class="navbar">
    <div class="container navbar-container">
      <div class="navbar-logo">
        <a href="index.jsp">
          <span class="navbar-logo-primary">Daley</span>
          <span class="navbar-logo-secondary">Nepal</span>
        </a>
      </div>
      <div class="navbar-menu">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="signin.jsp"><button class="btn btn-outline">Sign In</button></a>
        <a href="signup.jsp"><button class="btn btn-primary">Sign Up</button></a>
      </div>
    </div>
  </nav>

  <main>
			  <%
		  String status = (String) request.getAttribute("status");
		  if ("success".equals(status)) {
		%>
		    <p style="color: green;">✅ Account created successfully!</p>
		<%
		  } else if ("failed".equals(status)) {
		%>
		    <p style="color: red;">❌ Registration failed. Try again.</p>
		<%
		  } else if ("exception".equals(status)) {
		%>
		    <p style="color: red;">❌ Server error occurred.</p>
		<%
		  }
		%>
  
    <section class="section form-section">
      <div class="container">
        <div class="form-container">
          <h2 class="form-title">Create an Account</h2>
          <p class="form-description">Join Daley Nepal to find your dream property</p>

          <!-- ✅ Updated form -->
          <form id="signup-form" action="<%=request.getContextPath()%>/register" method="post">
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;">
              <div class="form-group">
                <label for="fullName" class="form-label">Full Name</label>
                <input type="text" id="fullName" name="fullName" class="form-input" required />
              </div>
              <div class="form-group">
                <label for="phone" class="form-label">Phone Number</label>
                <input type="tel" id="phone" name="contactNumber" class="form-input" required />
              </div>
            </div>

            <div class="form-group">
              <label for="email" class="form-label">Email Address</label>
              <input type="email" id="email" name="email" class="form-input" required />
            </div>

            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;">
              <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-input" required />
              </div>
              <div class="form-group">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-input" required />
              </div>
            </div>

            <div class="form-group">
              <label for="userType" class="form-label">I am a</label>
              <select id="userType" name="role" class="form-input" required>
                <option value="">Select an option</option>
                <option value="buyer">Buyer</option>
                <option value="admin">Admin</option>
              </select>
            </div>

            <div class="form-checkbox">
              <input type="checkbox" id="terms" name="terms" required />
              <label for="terms">I agree to the <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></label>
            </div>

            <div class="form-checkbox">
              <input type="checkbox" id="newsletter" name="newsletter" />
              <label for="newsletter">Subscribe to our newsletter</label>
            </div>

            <button type="submit" class="btn btn-primary btn-lg form-submit">Create Account</button>
          </form>

          <div class="form-footer">
            <p>Already have an account? <a href="signin.jsp">Sign In</a></p>
          </div>

          <div class="social-login">
            <p class="social-login-text">Or sign up with</p>
            <div class="social-buttons">
              <button class="social-button facebook">
                <i data-feather="facebook"></i> Facebook
              </button>
              <button class="social-button google">
                <i data-feather="github"></i> Google
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <footer class="footer">
    <div class="container">
      <div class="footer-grid">
        <div>
          <div class="footer-logo">
            <span class="footer-logo-primary">Daley</span>
            <span class="footer-logo-secondary">Nepal</span>
          </div>
          <p class="footer-description">Your trusted partner in finding your dream property in Nepal.</p>
          <div class="footer-social">
            <a href="#"><i data-feather="facebook"></i></a>
            <a href="#"><i data-feather="instagram"></i></a>
            <a href="#"><i data-feather="twitter"></i></a>
          </div>
        </div>
        <div>
          <h3 class="footer-heading">Quick Links</h3>
          <ul class="footer-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="signin.jsp">Sign In</a></li>
            <li><a href="signup.jsp">Sign Up</a></li>
          </ul>
        </div>
        <div>
          <h3 class="footer-heading">Contact Us</h3>
          <div class="footer-contact-item">
            <i data-feather="map-pin" class="footer-contact-icon"></i>
            <span>Thamel, Kathmandu, Nepal</span>
          </div>
          <div class="footer-contact-item">
            <i data-feather="phone" class="footer-contact-icon"></i>
            <span>+977 1 4444444</span>
          </div>
          <div class="footer-contact-item">
            <i data-feather="mail" class="footer-contact-icon"></i>
            <span>info@daleynepal.com</span>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <p>&copy; <script>document.write(new Date().getFullYear())</script> Daley Nepal. All rights reserved.</p>
      </div>
    </div>
  </footer>

  <script>
    feather.replace();
  </script>
</body>
</html>
