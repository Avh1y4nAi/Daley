<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign In - Daley Nepal</title>
  <link rel="stylesheet" href="../css/style.css">
  <!-- Feather Icons -->
  <script src="https://unpkg.com/feather-icons"></script>
</head>

<body>
  <!-- Navbar -->
  <nav class="navbar">
    <div class="container navbar-container">
      <div class="navbar-logo">
        <a href="index.html">
          <span class="navbar-logo-primary">Daley</span>
          <span class="navbar-logo-secondary">Nepal</span>
        </a>
      </div>

      <!-- Desktop Menu -->
      <div class="navbar-menu">
        <a href="index.html">Home</a>
        <a href="about.html">About Us</a>
        <a href="contact.html">Contact Us</a>
        <a href="signin.html">
          <button class="btn btn-outline">Sign In</button>
        </a>
        <a href="signup.html">
          <button class="btn btn-primary">Sign Up</button>
        </a>
      </div>

      <!-- Mobile Menu Button -->
      <div class="navbar-mobile-toggle">
        <button id="mobile-menu-button">
          <i id="mobile-menu-icon" data-feather="menu"></i>
          <i id="close-menu-icon" data-feather="x" class="hidden"></i>
        </button>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobile-menu" class="navbar-mobile-menu hidden">
      <a href="index.html">Home</a>
      <a href="about.html">About Us</a>
      <a href="contact.html">Contact Us</a>
      <div class="navbar-mobile-buttons">
        <a href="signin.html">
          <button class="btn btn-outline">Sign In</button>
        </a>
        <a href="signup.html">
          <button class="btn btn-primary">Sign Up</button>
        </a>
      </div>
    </div>
  </nav>

  <main>
		  <%
		  String status = (String) request.getAttribute("status");
		  if ("failed".equals(status)) {
		%>
		  <p style="color: red;">❌ Invalid email or password.</p>
		<%
		  } else if ("exception".equals(status)) {
		%>
		  <p style="color: red;">⚠️ Server error occurred.</p>
		<%
		  }
		%>
    <section class="section form-section">
      <div class="container">
        <div class="form-container">
          <h2 class="form-title">Sign In</h2>
          <p class="form-description">Welcome back! Please sign in to your account</p>

          <form id="signin-form" action ="<%=request.getContextPath()%>/login" method = "Post" >
            <div class="form-group">
              <label for="name" class="form-label">User Name</label>
              <input type="text" id="username" name="username" class="form-input" required>
            </div>

            <div class="form-group">
              <label for="password" class="form-label">Password</label>
              <input type="password" id="password" name="password" class="form-input" required>
            </div>

            <div class="form-checkbox">
              <input type="checkbox" id="remember" name="remember">
              <label for="remember">Remember me</label>
            </div>

            <button type="submit" class="btn btn-primary btn-lg form-submit">Sign In</button>
          </form>

          <div class="form-footer">
            <p>Don't have an account? <a href="signup.html">Sign Up</a></p>
            <p style="margin-top: 0.5rem;"><a href="#">Forgot your password?</a></p>
          </div>

          <div class="social-login">
            <p class="social-login-text">Or sign in with</p>
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

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="footer-grid">
        <!-- Company Info -->
        <div>
          <div class="footer-logo">
            <span class="footer-logo-primary">Daley</span>
            <span class="footer-logo-secondary">Nepal</span>
          </div>
          <p class="footer-description">
            Your trusted partner in finding your dream property in the beautiful country of Nepal.
          </p>
          <div class="footer-social">
            <a href="#"><i data-feather="facebook"></i></a>
            <a href="#"><i data-feather="instagram"></i></a>
            <a href="#"><i data-feather="twitter"></i></a>
          </div>
        </div>

        <!-- Quick Links -->
        <div>
          <h3 class="footer-heading">Quick Links</h3>
          <ul class="footer-links">
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="contact.html">Contact Us</a></li>
            <li><a href="signin.html">Sign In</a></li>
            <li><a href="signup.html">Sign Up</a></li>
          </ul>
        </div>

        <!-- Contact Info -->
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
        <p>&copy;
          <script>document.write(new Date().getFullYear())</script> Daley Nepal. All rights reserved.
        </p>
      </div>
    </div>
  </footer>

  <script src="js/main.js"></script>
  <script>
    // Initialize Feather icons
    feather.replace();
  
  </script>
</body>

</html>