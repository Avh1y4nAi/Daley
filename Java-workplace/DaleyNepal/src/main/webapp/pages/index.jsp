<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	if(session.getAttribute("fullName") == null){
		response.sendRedirect("signin.jsp");
	}
%>
<!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daley Nepal - Find Your Dream Home in Nepal</title>
    <link rel="stylesheet" href="../css/style.css">
    <!-- Feather Icons -->
    <script src="https://unpkg.com/feather-icons"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  </head>

  <body>
    <!-- Navbar -->
    <nav class="navbar">
      <div class="container navbar-container">
        <div class="navbar-logo"><a href="index.html"><span class="navbar-logo-primary">Daley</span><span
              class="navbar-logo-secondary">Nepal</span></a></div>
        <!-- Desktop Menu -->
        <div class="navbar-menu"><a href="index.html">Home</a><a href="about.html">About Us</a><a
            href="contact.html">Contact Us</a><a href="properties.html">Properties</a><a href="signin.html"><button
              class="btn btn-outline">Sign In</button></a><a href="signup.html"><button class="btn btn-primary">Sign
              Up</button></a></div>
        <!-- Mobile Menu Button -->
        <div class="navbar-mobile-toggle"><button id="mobile-menu-button"><i id="mobile-menu-icon"
              data-feather="menu"></i><i id="close-menu-icon" data-feather="x" class="hidden"></i></button></div>
      </div>
      <!-- Mobile Menu -->
      <div id="mobile-menu" class="navbar-mobile-menu hidden"><a href="index.html">Home</a><a href="about.html">About
          Us</a><a href="contact.html">Contact Us</a>
        <div class="navbar-mobile-buttons"><a href="signin.html"><button class="btn btn-outline">Sign
              In</button></a><a href="signup.html"><button class="btn btn-primary">Sign Up</button></a></div>
      </div>
    </nav>
    <main>
      <!-- Hero Section -->
      <section class="hero-section">
        <div class="container">
          <div class="hero-content">
            <h1 class="hero-title animate-fade-in">Find Your Dream Home in Nepal</h1>
            <p class="hero-description animate-fade-in-up">Discover properties with stunning mountain views and
              cultural richness.</p>
            <div class="hero-buttons animate-fade-in"><button class="btn btn-primary btn-cta">Explore
                Properties</button><button class="btn btn-outline-white btn-cta">Contact Us</button></div>
          </div>
        </div>
      </section>
      <!-- Featured Properties -->
      <section class="section section-gray">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title animate-fade-in">Featured Properties</h2>
            <p class="section-description animate-fade-in-up">Explore our hand-picked properties in prime
              locations across Nepal</p>
          </div>
          <div class="property-grid">
            <!-- Property 1 -->
            <div class="property-card animate-on-scroll fade-in">
              <div class="property-image-container"><img
                  src="https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80"
                  alt="Modern Villa in Kathmandu" class="property-image">
                <div class="property-badge">Featured</div>
              </div>
              <div class="property-content">
                <h3 class="property-title">Modern Villa in Kathmandu</h3>
                <div class="property-location"><i data-feather="map-pin"
                    class="property-location-icon"></i><span>Boudha,
                    Kathmandu</span></div>
                <div class="property-features"><span>4 Bedrooms</span><span>3 Bathrooms</span><span>2500
                    sq.ft</span></div>
                <div class="property-price-row"><span class="property-price">$120,
                    000</span><a href="#" class="property-link">View Details <i data-feather="arrow-right"
                      class="property-link-icon"></i></a></div>
              </div>
            </div>
            <!-- Property 2 -->
            <div class="property-card animate-on-scroll fade-in">
              <div class="property-image-container"><img
                  src="https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80"
                  alt="Cozy Apartment in Pokhara" class="property-image">
                <div class="property-badge">Featured</div>
              </div>
              <div class="property-content">
                <h3 class="property-title">Cozy Apartment in Pokhara</h3>
                <div class="property-location"><i data-feather="map-pin"
                    class="property-location-icon"></i><span>Lakeside,
                    Pokhara</span></div>
                <div class="property-features"><span>2 Bedrooms</span><span>2 Bathrooms</span><span>1200
                    sq.ft</span></div>
                <div class="property-price-row"><span class="property-price">$85,
                    000</span><a href="#" class="property-link">View Details <i data-feather="arrow-right"
                      class="property-link-icon"></i></a></div>
              </div>
            </div>
            <!-- Property 3 -->
            <div class="property-card animate-on-scroll fade-in">
              <div class="property-image-container"><img
                  src="https://images.unsplash.com/photo-1613977257363-707ba9348227?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80"
                  alt="Luxurious Home with Mountain View" class="property-image">
                <div class="property-badge">Featured</div>
              </div>
              <div class="property-content">
                <h3 class="property-title">Luxurious Home with Mountain View</h3>
                <div class="property-location"><i data-feather="map-pin"
                    class="property-location-icon"></i><span>Nagarkot,
                    Bhaktapur</span></div>
                <div class="property-features"><span>5 Bedrooms</span><span>4 Bathrooms</span><span>3500
                    sq.ft</span></div>
                <div class="property-price-row"><span class="property-price">$250,
                    000</span><a href="#" class="property-link">View Details <i data-feather="arrow-right"
                      class="property-link-icon"></i></a></div>
              </div>
            </div>
          </div>
          <div class="view-all"><button class="btn btn-secondary btn-lg">View All Properties</button></div>
        </div>
      </section>
      <!-- Services Section -->
      <section class="section">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title animate-fade-in">Our Services</h2>
            <p class="section-description animate-fade-in-up">Comprehensive real estate solutions tailored to
              your needs </p>
          </div>
          <div class="services-grid">
            <!-- Service 1 -->
            <div class="service-card animate-on-scroll slide-up">
              <div class="service-icon-container"><i data-feather="home" class="service-icon"></i></div>
              <h3 class="service-title">Property Sales</h3>
              <p class="service-description">Find your dream home with our extensive property listings and
                expert guidance.</p>
            </div>
            <!-- Service 2 -->
            <div class="service-card animate-on-scroll slide-up">
              <div class="service-icon-container"><i data-feather="map-pin" class="service-icon"></i></div>
              <h3 class="service-title">Location Advisory</h3>
              <p class="service-description">Get insights on the best neighborhoods based on your
                preferences and requirements.</p>
            </div>
            <!-- Service 3 -->
            <div class="service-card animate-on-scroll slide-up">
              <div class="service-icon-container"><i data-feather="dollar-sign" class="service-icon"></i>
              </div>
              <h3 class="service-title">Financial Guidance</h3>
              <p class="service-description">Expert advice on loans,
                mortgages,
                and financial planning for your property purchase.</p>
            </div>
            <!-- Service 4 -->
            <div class="service-card animate-on-scroll slide-up">
              <div class="service-icon-container"><i data-feather="clock" class="service-icon"></i>
              </div>
              <h3 class="service-title">24/7 Support</h3>
              <p class="service-description">Round-the-clock assistance for all your real estate needs
                and inquiries.</p>
            </div>
          </div>
        </div>
      </section>
      <section class="choose-us-section">
        <div class="choose-us-left reveal">
          <h5>Our Commitment</h5>
          <h2>Why Choose Us</h2>
          <p>At Daley Nepal,
            we understand that finding the perfect property is more than just a transaction — it’s a life
            decision. That’s why we offer a modern,
            trusted platform to connect buyers with reliable property listings across Nepal. </p>
          <div class="benefits-grid">
            <div class="benefit-item reveal"><i class="fas fa-users"></i>Experienced Professionals </div>
            <div class="benefit-item reveal"><i class="fas fa-search"></i>Smart Search Filters </div>
            <div class="benefit-item reveal"><i class="fas fa-desktop"></i>Intuitive User Experience </div>
            <div class="benefit-item reveal"><i class="fas fa-check"></i>Verified Listings Only </div>
            <div class="benefit-item reveal"><i class="fas fa-lock"></i>Transparent Process </div>
            <div class="benefit-item reveal"><i class="fas fa-globe"></i>24/7 Online Access </div>
          </div>
          <div class="stats">
            <div class="stat-box reveal">
              <h3>100%</h3>
              <p>Client Satisfaction</p>
            </div>
            <div class="stat-box reveal">
              <h3>8+</h3>
              <p>Years Experience</p>
            </div>
            <div class="stat-box reveal">
              <h3>25+</h3>
              <p>Completed Projects</p>
            </div>
          </div>
        </div>
        <div class="choose-us-right reveal">
          <div class="image-container"><img src="../daley-nepal-html-css/assets/images/thumbs.png" alt="Thumbs Up" />
            <div class="image-glow"></div>
          </div>
        </div>
      </section>
      <script>const reveals = document.querySelectorAll('.reveal');

        const observer = new IntersectionObserver((entries) => {
          entries.forEach(entry => {
            if (entry.isIntersecting) {
              entry.target.classList.add('visible');
              observer.unobserve(entry.target);
            }
          }

          );
        }

          , {
            threshold: 0.2
          }

        );

        reveals.forEach(reveal => observer.observe(reveal));
      </script>
      <section class="ultra-testimonial">
        <div class="testimonial-header">
          <h2>What Our Happy Clients Say</h2>
          <p>Real voices. Real stories. Real impact.</p>
        </div>
        <div class="testimonial-carousel" id="carousel">
          <div class="testimonial-card">
            <div class="bubble">“Absolutely thrilled with the service ! Daley Nepal helped me close on my dream
              home with ease.” </div>
            <div class="user"><img src="https://randomuser.me/api/portraits/women/65.jpg" alt="User">
              <div>
                <h4>Sabita Giri</h4><span>Pokhara,
                  Nepal</span>
              </div>
            </div>
          </div>
          <div class="testimonial-card">
            <div class="bubble">“From virtual tours to final signing,
              everything was smooth and secure. Highly recommend it !” </div>
            <div class="user"><img src="https://randomuser.me/api/portraits/men/45.jpg" alt="User">
              <div>
                <h4>Rabin Acharya</h4><span>Bhaktapur,
                  Nepal</span>
              </div>
            </div>
          </div>
          <div class="testimonial-card">
            <div class="bubble">“Their UI is slick,
              service is smart,
              and people are real. This platform truly changes how you buy property.” </div>
            <div class="user"><img src="https://randomuser.me/api/portraits/men/10.jpg" alt="User">
              <div>
                <h4>Krishna Poudel</h4><span>Kathmandu,
                  Nepal</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <script> // Optional: Auto-scroll the carousel
        const carousel = document.getElementById('carousel');
        let scrollPos = 0;

        setInterval(() => {
          scrollPos += 350;
          if (scrollPos >= carousel.scrollWidth - carousel.clientWidth) scrollPos = 0;

          carousel.scrollTo({
            left: scrollPos, behavior: 'smooth'
          }

          );
        }

          , 5000);
      </script>
      <!-- CTA Section -->
      <section class="section section-blue">
        <div class="container section-center">
          <h2 class="section-title animate-fade-in">Ready to Find Your Dream Home in Nepal?</h2>
          <p class="section-description animate-fade-in-up">Join thousands of satisfied customers who found
            their perfect property with Daley Nepal</p>
          <div class="hero-buttons animate-fade-in"><button class="btn btn-primary btn-cta">Browse
              Properties</button><button class="btn btn-outline-white btn-cta">Contact Our Agents</button>
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
            <div class="footer-logo"><span class="footer-logo-primary">Daley</span><span
                class="footer-logo-secondary">Nepal</span></div>
            <p class="footer-description">Your trusted partner in finding your dream property in the beautiful
              country of Nepal. </p>
            <div class="footer-social"><a href="#"><i data-feather="facebook"></i></a><a href="#"><i
                  data-feather="instagram"></i></a><a href="#"><i data-feather="twitter"></i></a></div>
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
            <div class="footer-contact-item"><i data-feather="map-pin" class="footer-contact-icon"></i><span>Thamel,
                Kathmandu,
                Nepal</span></div>
            <div class="footer-contact-item"><i data-feather="phone" class="footer-contact-icon"></i><span>+977 1
                4444444</span></div>
            <div class="footer-contact-item"><i data-feather="mail"
                class="footer-contact-icon"></i><span>info@daleynepal.com</span></div>
          </div>
        </div>
        <div class="footer-bottom">
          <p>&copy;
            <script>document.write(new Date().getFullYear())</script>Daley Nepal. All rights reserved.
          </p>
        </div>
      </div>
    </footer>
    <script src="js/main.js"></script>
    <script> // Initialize Feather icons
      feather.replace();
    </script>
  </body>

  </html>