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
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/styles.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/responsive.css">
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
                <a href="<%= request.getContextPath()%>/pages/login.jsp" class="btn btn-outline">Login</a>
                <a href="<%= request.getContextPath()%>/pages/register.jsp" class="btn btn-primary">Register</a>
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
            <h1>Terms & Conditions</h1>
            <p>Updated: April 19, 2025 <br> By Bardan Gurung</p>
        </div>

        <div class="terms-section">
            <h2>1. Acceptance of Terms</h2>
            <p>By accessing and using the Ghar Dalali platform (the "Website"), you agree to comply with and be legally
                bound by these
                Terms and Conditions. These terms govern your access to and use of the services provided by Ghar Dalali,
                including
                property browsing, listing, inquiries, and communication features. If you do not agree with any part of
                these terms, you
                should not use this website. Your continued usage of the site indicates your understanding and
                acceptance of all
                conditions stated here..</p>
        </div>

        <div class="terms-section">
            <h2>2. Eligibility</h2>
            <p>You must be at least 18 years old and legally capable of entering into a binding contract in order to use
                our services.
                Users must provide accurate, current, and complete registration details and maintain the confidentiality
                of their
                account credentials. Ghar Dalali reserves the right to terminate access to any user who provides false
                information or
                violates any of these terms.</p>
        </div>

        <div class="terms-section">
            <h2>3. User Responsibilities</h2>
            <p>All users are expected to use Ghar Dalali ethically and lawfully. You may not use the website to
                distribute spam, post
                offensive or false property listings, infringe upon the rights of others, or engage in fraudulent
                behavior. You are
                responsible for the accuracy of the data you provide, especially when posting property listings or
                submitting personal
                details. Any misuse of the platform may result in account suspension, legal action, or both.</p>
        </div>

        <div class="terms-section">
            <h2>4. Property Listings</h2>
            <p>Sellers and agents are responsible for the accuracy and legality of the properties they list. Ghar Dalali
                is not liable
                for any discrepancies, misrepresentations, or disputes that arise from property listings. We reserve the
                right to remove
                any listing that violates our guidelines, is deemed inappropriate, misleading, or reported by users as
                fraudulent.</p>
        </div>

        <div class="terms-section">
            <h2>5. No Brokerage or Guarantees</h2>
            <p>Ghar Dalali acts solely as an online platform to connect buyers and sellers. We do not act as a real
                estate broker, nor
                do we guarantee property transactions, pricing, or the financial standing of users. Any transaction
                conducted between
                users is done at their own risk and discretion. We encourage users to conduct thorough due diligence
                before entering
                into any property agreement.</p>
        </div>

        <div class="terms-section">
            <h2>6. Intellectual Property</h2>
            <p>All content on this website, including but not limited to logos, brand names, graphics, layout design,
                texts, and
                software, is the intellectual property of Ghar Dalali or its content creators. No material may be
                copied, reproduced,
                republished, uploaded, posted, or distributed in any form without written permission from Ghar Dalali.
                Any unauthorized
                use of content may lead to legal action.</p>
        </div>

        <div class="terms-section">
            <h2>7. Privacy & Data Use</h2>
            <p>We take user privacy seriously. Personal information collected on this website is handled according to
                our Privacy
                Policy. We do not sell, rent, or share your personal data with third parties without your consent,
                except where required
                by law. By using the platform, you consent to the collection and use of your information as described in
                our Privacy
                Policy.</p>
        </div>

        <div class="terms-section">
            <h2>8. Payment & Fees</h2>
            <p>Ghar Dalali does not process financial transactions between users. If any payments are made for property
                bookings,
                deposits, or services, they are handled directly by the buyer and seller. Ghar Dalali is not responsible
                for disputes,
                fraud, or errors related to financial dealings. Always confirm the authenticity of a listing before
                proceeding with any
                transaction.</p>
        </div>

        <div class="terms-section">
            <h2>9. Modifications to Terms</h2>
            <p>Ghar Dalali reserves the right to update or modify these Terms and Conditions at any time without prior
                notice. Users
                are advised to periodically review the terms. Continued use of the platform after changes implies your
                acceptance of the
                updated terms.</p>
        </div>
        <div class="terms-section">
            <h2>10. Termination of Use</h2>
            <p>We reserve the right to suspend or terminate your access to the platform without prior notice if you
                violate any of
                these Terms and Conditions or engage in any unlawful or unethical behavior. Upon termination, you will
                no longer have
                access to your account or any information associated with it.</p>
        </div>
        <div class="terms-section">
            <h2>11. Limitation of Liability</h2>
            <p>Ghar Dalali is not liable for any direct, indirect, incidental, or consequential damages resulting from
                your use of, or
                inability to use, the website. This includes loss of data, profit, or business opportunities. While we
                strive to ensure
                platform availability and reliability, we do not guarantee uninterrupted access or the absence of
                errors.</p>
        </div>
        <div class="terms-section">
            <h2>12. Governing Law</h2>
            <p>These Terms and Conditions shall be governed and interpreted in accordance with the laws of Nepal. Any
                disputes arising
                out of or related to the use of the platform shall be subject to the exclusive jurisdiction of the
                courts located in
                Kathmandu, Nepal.</p>
        </div>
        <div class="terms-section">
            <h2>13. Contact Us</h2>
            <p>If you have any questions, concerns, or feedback regarding these Terms and Conditions, please contact our
                support team
                at <br>
                📧 support@ghardalali.com <br> 📞 +977 1234567890</p>
        </div>
    </div>
</body>
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
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                        </svg>
                    </a>
                    <a href="#" class="social-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path
                                d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z">
                            </path>
                        </svg>
                    </a>
                    <a href="#" class="social-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none"
                            stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
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