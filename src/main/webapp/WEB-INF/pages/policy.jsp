<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Terms & Conditions</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/normalize.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/styles.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/about.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/policy.css">
</head>

<body>
    <header class="navbar">
        <div class="container">
            <div class="logo">
                <a href="index.html">
                    <h1>Ghar Dalali</h1>
                </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li><a href="../index.html" class="active">Home</a></li>
                    <li><a href="properties.html">Properties</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
            <div class="auth-buttons">
                <a href="login.html" class="btn btn-outline">Login</a>
                <a href="register.html" class="btn btn-primary">Register</a>
            </div>
            <div class="mobile-menu-toggle">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </header>
    <div class="terms-container">
        <div class="terms-header">
            <h1>Privacy Policy</h1>
            <p>Effective: April 19, 2025 <br> By Bardan Gurung</p>
        </div>

        <div class="terms-section">
            <h2>1. Information We Collect</h2>
            <p>When you use the Ghar Dalali platform, we may collect personal details including your name, contact
                number, email address, and property listing information. We also collect technical data like IP address,
                browser type, and usage behavior through cookies and similar technologies. Your interactions, messages,
                and listings are stored for record-keeping and support purposes.</p>
        </div>

        <div class="terms-section">
            <h2>2. How We Use Your Data</h2>
            <p>We use your personal data to provide and enhance our services, personalize your experience, ensure secure
                access, and communicate important updates. Data is also used for analytics and improving platform
                performance. We may send promotional offers, but only if you’ve opted in. Your data will never be sold
                to third parties.</p>
        </div>

        <div class="terms-section">
            <h2>3. Cookies & Tracking</h2>
            <p>Ghar Dalali uses cookies to remember user preferences, track user sessions, and analyze behavior. You can
                control or disable cookies through your browser settings. However, disabling cookies may limit certain
                features of the platform.</p>
        </div>

        <div class="terms-section">
            <h2>4. Data Security</h2>
            <p>We implement industry-standard security measures, including password hashing, secure database
                connections, and limited internal access. While we take your security seriously, we cannot guarantee
                100% protection against data breaches or unauthorized access.</p>
        </div>

        <div class="terms-section">
            <h2>5. Sharing of Data</h2>
            <p>We only share your personal data when necessary — for legal obligations, fraud prevention, or technical
                service support. Third-party service providers (e.g., hosting, analytics) adhere to strict
                confidentiality agreements. We do not sell or rent your data under any circumstance.</p>
        </div>

        <div class="terms-section">
            <h2>6. User Rights</h2>
            <p>You have the right to access, correct, or delete your personal information. You can update your profile
                or request data removal by contacting our support team. You may also opt out of receiving marketing
                emails at any time.</p>
        </div>

        <div class="terms-section">
            <h2>7. Children’s Privacy</h2>
            <p>Our platform is not intended for individuals under the age of 18. We do not knowingly collect data from
                minors. If we discover such data was provided, it will be promptly deleted from our systems.</p>
        </div>

        <div class="terms-section">
            <h2>8. Data Retention</h2>
            <p>We retain user data only for as long as necessary to fulfill the purposes outlined in this policy. Once
                an account is deactivated or deleted, all associated personal data will be securely removed or
                anonymized within a reasonable period.</p>
        </div>

        <div class="terms-section">
            <h2>9. Policy Updates</h2>
            <p>This Privacy Policy may be revised periodically. We will notify you of significant changes through email
                or on the platform. Please review this page regularly to stay informed of how we protect your data.</p>
        </div>

        <div class="terms-section">
            <h2>10. Contact Information</h2>
            <p>If you have any questions about this Privacy Policy or how your data is handled, please contact us
                at:<br>
                📧 privacy@ghardalali.com <br>
                📞 +977 1234567890
            </p>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">
                    <h2>Ghar Dalali</h2>
                    <p>Your trusted partner in finding the perfect home.</p>
                </div>
                <div class="footer-links">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="pages/properties.html">Properties</a></li>
                        <li><a href="pages/about.html">About</a></li>
                        <li><a href="pages/contact.html">Contact</a></li>
                        <li><a href="pages/terms.html">Terms of Service</a></li>
                        <li><a href="pages/privacy.html">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h3>Contact Us</h3>
                    <p>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
                            </path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        info@ghardalali.com
                    </p>
                    <p>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path
                                d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z">
                            </path>
                        </svg>
                        +977 1234567890
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round">
                                <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                            </svg>
                        </a>
                        <a href="#" class="social-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round">
                                <path
                                    d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z">
                                </path>
                            </svg>
                        </a>
                        <a href="#" class="social-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round">
                                <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                                <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2023 Ghar Dalali. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="js/main.js"></script>
    <script src="js/glassmorphism.js"></script>


</html>