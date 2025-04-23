<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Ghar Dalali</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/normalize.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/styles.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/dashboard.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/admin.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/dashboard-enhanced.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/glassmorphism.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/modern-ui.css">
</head>

<body>
    <!-- Navigation Bar -->
    <header class="navbar">
        <div class="container">
            <div class="logo">
                <a href="../index.html">
                    <h1>Ghar Dalali</h1>
                </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="properties.html">Properties</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
            <div class="auth-buttons">
                <a href="admin-dashboard.html" class="btn btn-outline active">Admin Panel</a>
                <a href="${pageContext.request.contextPath}/logout" class="btn btn-primary">Logout</a>
            
            </div>
            <div class="mobile-menu-toggle">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </header>

    <!-- Dashboard Section -->
    <section class="dashboard-section">
        <div class="container">
            <h1 class="dashboard-title">Admin Dashboard</h1>

            <div class="dashboard-container">
                <!-- Sidebar -->
                <div class="dashboard-sidebar">
                    <div class="user-info">
                        <div class="user-avatar">
                            <span>A</span>
                        </div>
                        <div class="user-details">
                            <h3>Admin User</h3>
                            <p>admin@ghardalali.com</p>
                        </div>
                    </div>

                    <nav class="dashboard-nav">
                        <ul>
                            <li><a href="#dashboard" class="active">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <rect x="3" y="3" width="7" height="9"></rect>
                                        <rect x="14" y="3" width="7" height="5"></rect>
                                        <rect x="14" y="12" width="7" height="9"></rect>
                                        <rect x="3" y="16" width="7" height="5"></rect>
                                    </svg>
                                    Dashboard Overview
                                </a></li>
                            <li><a href="#users">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="9" cy="7" r="4"></circle>
                                        <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                        <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                    </svg>
                                    User Management
                                </a></li>
                            <li><a href="#properties">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                        <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                    </svg>
                                    Property Management
                                </a></li>
                            <li><a href="#reviews">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polygon
                                            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2">
                                        </polygon>
                                    </svg>
                                    Review Management
                                </a></li>
                            <li><a href="#transactions">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <line x1="12" y1="1" x2="12" y2="23"></line>
                                        <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                                    </svg>
                                    Transaction Management
                                </a></li>
                            <li><a href="#settings">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="3"></circle>
                                        <path
                                            d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z">
                                        </path>
                                    </svg>
                                    System Settings
                                </a></li>
                        </ul>
                    </nav>
                </div>

                <!-- Main Content -->
                <div class="dashboard-content">
                    <!-- Dashboard Overview Panel -->
                    <div class="dashboard-panel active" id="dashboard">
                        <div class="panel-header">
                            <h2>Dashboard Overview</h2>
                        </div>

                        <div class="stats-grid">
                            <div class="stat-card">
                                <div class="stat-info">
                                    <h3>Total Users</h3>
                                    <div class="stat-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="9" cy="7" r="4"></circle>
                                            <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                            <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                        </svg>
                                    </div>
                                    <p class="stat-value">1,245</p>
                                    <p class="stat-change positive">+15% this month</p>
                                </div>
                            </div>

                            <div class="stat-card">
                                <div class="stat-info">
                                    <h3>Properties Listed</h3>
                                    <div class="stat-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                            <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                        </svg>
                                    </div>
                                    <p class="stat-value">356</p>
                                    <p class="stat-change positive">+8% this month</p>
                                </div>
                            </div>

                            <div class="stat-card">
                                <div class="stat-info">
                                    <h3>Total Revenue</h3>
                                    <div class="stat-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <line x1="12" y1="1" x2="12" y2="23"></line>
                                            <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                                        </svg>
                                    </div>
                                    <p class="stat-value">$125,450</p>
                                    <p class="stat-change positive">+12% this month</p>
                                </div>
                            </div>

                            <div class="stat-card">
                                <div class="stat-info">
                                    <h3>Applications</h3>
                                    <div class="stat-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                            <polyline points="14 2 14 8 20 8"></polyline>
                                            <line x1="16" y1="13" x2="8" y2="13"></line>
                                            <line x1="16" y1="17" x2="8" y2="17"></line>
                                            <polyline points="10 9 9 9 8 9"></polyline>
                                        </svg>
                                    </div>
                                    <p class="stat-value">89</p>
                                    <p class="stat-change negative">-3% this month</p>
                                </div>
                            </div>
                        </div>

                        <div class="recent-activity">
                            <h3>Recent Activity</h3>
                            <ul class="activity-list">
                                <li class="activity-item">
                                    <div class="activity-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                    </div>
                                    <div class="activity-details">
                                        <p class="activity-text">New user registered: <strong>Jane Smith</strong></p>
                                        <p class="activity-time">2 hours ago</p>
                                    </div>
                                </li>
                                <li class="activity-item">
                                    <div class="activity-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                            <polyline points="9 22 9 12 15 12 15 22"></polyline>
                                        </svg>
                                    </div>
                                    <div class="activity-details">
                                        <p class="activity-text">New property listed: <strong>Luxury Villa</strong></p>
                                        <p class="activity-time">5 hours ago</p>
                                    </div>
                                </li>
                                <li class="activity-item">
                                    <div class="activity-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <line x1="12" y1="1" x2="12" y2="23"></line>
                                            <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                                        </svg>
                                    </div>
                                    <div class="activity-details">
                                        <p class="activity-text">Payment received: <strong>$25,000</strong> for property
                                            <strong>Modern Apartment</strong>
                                        </p>
                                        <p class="activity-time">1 day ago</p>
                                    </div>
                                </li>
                                <li class="activity-item">
                                    <div class="activity-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <polygon
                                                points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2">
                                            </polygon>
                                        </svg>
                                    </div>
                                    <div class="activity-details">
                                        <p class="activity-text">New review submitted for <strong>Family Home</strong>
                                        </p>
                                        <p class="activity-time">2 days ago</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- User Management Panel -->
                    <div class="dashboard-panel" id="users">
                        <div class="panel-header">
                            <h2>User Management</h2>
                            <button class="btn btn-primary btn-sm">Add New User</button>
                        </div>

                        <div class="admin-table-container">
                            <div class="table-actions">
                                <div class="search-box">
                                    <input type="text" placeholder="Search users...">
                                    <button class="btn btn-outline btn-sm">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round">
                                            <circle cx="11" cy="11" r="8"></circle>
                                            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                        </svg>
                                        Search
                                    </button>
                                </div>
                                <div class="filter-box">
                                    <select>
                                        <option value="">All Users</option>
                                        <option value="active">Active Users</option>
                                        <option value="inactive">Inactive Users</option>
                                        <option value="admin">Admins</option>
                                    </select>
                                </div>
                            </div>

                            <table class="admin-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Role</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>John Doe</td>
                                        <td>john.doe@example.com</td>
                                        <td>User</td>
                                        <td><span class="status approved">Active</span></td>
                                        <td class="actions">
                                            <button class="btn-icon edit" title="Edit User">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <path
                                                        d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7">
                                                    </path>
                                                    <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z">
                                                    </path>
                                                </svg>
                                            </button>
                                            <button class="btn-icon delete" title="Delete User">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <polyline points="3 6 5 6 21 6"></polyline>
                                                    <path
                                                        d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2">
                                                    </path>
                                                </svg>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jane Smith</td>
                                        <td>jane.smith@example.com</td>
                                        <td>User</td>
                                        <td><span class="status approved">Active</span></td>
                                        <td class="actions">
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Admin User</td>
                                        <td>admin@ghardalali.com</td>
                                        <td>Admin</td>
                                        <td><span class="status approved">Active</span></td>
                                        <td class="actions">
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Ram Sharma</td>
                                        <td>ram.sharma@example.com</td>
                                        <td>User</td>
                                        <td><span class="status rejected">Inactive</span></td>
                                        <td class="actions">
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="pagination">
                                <a href="#" class="page-link" title="Previous Page">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="15 18 9 12 15 6"></polyline>
                                    </svg>
                                </a>
                                <a href="#" class="page-link active">1</a>
                                <a href="#" class="page-link">2</a>
                                <a href="#" class="page-link">3</a>
                                <a href="#" class="page-link" title="Next Page">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <polyline points="9 18 15 12 9 6"></polyline>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Property Management Panel -->
                    <div class="dashboard-panel" id="properties">
                        <div class="panel-header">
                            <h2>Property Management</h2>
                            <button class="btn btn-primary btn-sm">Add New Property</button>
                        </div>

                        <div class="admin-table-container">
                            <div class="table-actions">
                                <div class="search-box">
                                    <input type="text" placeholder="Search properties...">
                                    <button class="btn btn-outline btn-sm">Search</button>
                                </div>
                                <div class="filter-box">
                                    <select>
                                        <option value="">All Properties</option>
                                        <option value="for-sale">For Sale</option>
                                        <option value="for-rent">For Rent</option>
                                        <option value="sold">Sold</option>
                                    </select>
                                </div>
                            </div>

                            <table class="admin-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Property Name</th>
                                        <th>Price</th>
                                        <th>Location</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Luxury Villa</td>
                                        <td>$250,000</td>
                                        <td>Kathmandu, Nepal</td>
                                        <td><span class="status approved">For Sale</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view" title="View Property">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                                    <circle cx="12" cy="12" r="3"></circle>
                                                </svg>
                                            </button>
                                            <button class="btn-icon edit" title="Edit Property">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <path
                                                        d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7">
                                                    </path>
                                                    <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z">
                                                    </path>
                                                </svg>
                                            </button>
                                            <button class="btn-icon delete" title="Delete Property">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <polyline points="3 6 5 6 21 6"></polyline>
                                                    <path
                                                        d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2">
                                                    </path>
                                                </svg>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Modern Apartment</td>
                                        <td>$1,200/month</td>
                                        <td>Pokhara, Nepal</td>
                                        <td><span class="status pending">For Rent</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Family Home</td>
                                        <td>$180,000</td>
                                        <td>Lalitpur, Nepal</td>
                                        <td><span class="status approved">For Sale</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Cozy Cottage</td>
                                        <td>$120,000</td>
                                        <td>Bhaktapur, Nepal</td>
                                        <td><span class="status rejected">Sold</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="pagination">
                                <a href="#" class="page-link">Previous</a>
                                <a href="#" class="page-link active">1</a>
                                <a href="#" class="page-link">2</a>
                                <a href="#" class="page-link">3</a>
                                <a href="#" class="page-link">Next</a>
                            </div>
                        </div>
                    </div>

                    <!-- Review Management Panel -->
                    <div class="dashboard-panel" id="reviews">
                        <div class="panel-header">
                            <h2>Review Management</h2>
                        </div>

                        <div class="admin-table-container">
                            <div class="table-actions">
                                <div class="search-box">
                                    <input type="text" placeholder="Search reviews...">
                                    <button class="btn btn-outline btn-sm">Search</button>
                                </div>
                                <div class="filter-box">
                                    <select>
                                        <option value="">All Reviews</option>
                                        <option value="approved">Approved</option>
                                        <option value="pending">Pending</option>
                                        <option value="rejected">Rejected</option>
                                    </select>
                                </div>
                            </div>

                            <table class="admin-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Property</th>
                                        <th>User</th>
                                        <th>Rating</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Luxury Villa</td>
                                        <td>John Doe</td>
                                        <td>5 ★</td>
                                        <td><span class="status approved">Approved</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Modern Apartment</td>
                                        <td>Jane Smith</td>
                                        <td>4 ★</td>
                                        <td><span class="status approved">Approved</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon edit">Edit</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Family Home</td>
                                        <td>Ram Sharma</td>
                                        <td>3 ★</td>
                                        <td><span class="status pending">Pending</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon approve">Approve</button>
                                            <button class="btn-icon reject">Reject</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Cozy Cottage</td>
                                        <td>Sita Thapa</td>
                                        <td>2 ★</td>
                                        <td><span class="status rejected">Rejected</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon approve">Approve</button>
                                            <button class="btn-icon delete">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="pagination">
                                <a href="#" class="page-link">Previous</a>
                                <a href="#" class="page-link active">1</a>
                                <a href="#" class="page-link">2</a>
                                <a href="#" class="page-link">3</a>
                                <a href="#" class="page-link">Next</a>
                            </div>
                        </div>
                    </div>

                    <!-- Transaction Management Panel -->
                    <div class="dashboard-panel" id="transactions">
                        <div class="panel-header">
                            <h2>Transaction Management</h2>
                            <div class="header-actions">
                                <button class="btn btn-outline btn-sm">Generate Report</button>
                                <button class="btn btn-primary btn-sm">Add Transaction</button>
                            </div>
                        </div>

                        <div class="admin-table-container">
                            <div class="table-actions">
                                <div class="search-box">
                                    <input type="text" placeholder="Search transactions...">
                                    <button class="btn btn-outline btn-sm">Search</button>
                                </div>
                                <div class="filter-box">
                                    <select>
                                        <option value="">All Transactions</option>
                                        <option value="completed">Completed</option>
                                        <option value="pending">Pending</option>
                                        <option value="failed">Failed</option>
                                    </select>
                                </div>
                            </div>

                            <table class="admin-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Property</th>
                                        <th>User</th>
                                        <th>Amount</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Luxury Villa</td>
                                        <td>John Doe</td>
                                        <td>$25,000</td>
                                        <td>June 10, 2023</td>
                                        <td><span class="status approved">Completed</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon receipt">Receipt</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Modern Apartment</td>
                                        <td>Jane Smith</td>
                                        <td>$1,200</td>
                                        <td>May 25, 2023</td>
                                        <td><span class="status approved">Completed</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon receipt">Receipt</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Family Home</td>
                                        <td>Ram Sharma</td>
                                        <td>$18,000</td>
                                        <td>April 15, 2023</td>
                                        <td><span class="status pending">Processing</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon process">Process</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Cozy Cottage</td>
                                        <td>Sita Thapa</td>
                                        <td>$12,000</td>
                                        <td>March 20, 2023</td>
                                        <td><span class="status rejected">Failed</span></td>
                                        <td class="actions">
                                            <button class="btn-icon view">View</button>
                                            <button class="btn-icon retry">Retry</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="pagination">
                                <a href="#" class="page-link">Previous</a>
                                <a href="#" class="page-link active">1</a>
                                <a href="#" class="page-link">2</a>
                                <a href="#" class="page-link">3</a>
                                <a href="#" class="page-link">Next</a>
                            </div>
                        </div>
                    </div>

                    <!-- System Settings Panel -->
                    <div class="dashboard-panel" id="settings">
                        <div class="panel-header">
                            <h2>System Settings</h2>
                        </div>

                        <div class="settings-container">
                            <div class="settings-group">
                                <h3>General Settings</h3>
                                <form class="settings-form">
                                    <div class="form-group">
                                        <label for="site-name">Site Name</label>
                                        <input type="text" id="site-name" value="Ghar Dalali">
                                    </div>

                                    <div class="form-group">
                                        <label for="site-description">Site Description</label>
                                        <textarea id="site-description"
                                            rows="3">Your trusted partner in finding the perfect home.</textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="contact-email">Contact Email</label>
                                        <input type="email" id="contact-email" value="info@ghardalali.com">
                                    </div>

                                    <div class="form-group">
                                        <label for="contact-phone">Contact Phone</label>
                                        <input type="tel" id="contact-phone" value="+977 1234567890">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>
                            </div>

                            <div class="settings-group">
                                <h3>Email Settings</h3>
                                <form class="settings-form">
                                    <div class="form-group">
                                        <label for="smtp-host">SMTP Host</label>
                                        <input type="text" id="smtp-host" value="smtp.example.com">
                                    </div>

                                    <div class="form-group">
                                        <label for="smtp-port">SMTP Port</label>
                                        <input type="number" id="smtp-port" value="587">
                                    </div>

                                    <div class="form-group">
                                        <label for="smtp-username">SMTP Username</label>
                                        <input type="text" id="smtp-username" value="info@ghardalali.com">
                                    </div>

                                    <div class="form-group">
                                        <label for="smtp-password">SMTP Password</label>
                                        <input type="password" id="smtp-password" value="********">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>
                            </div>

                            <div class="settings-group">
                                <h3>Security Settings</h3>
                                <form class="settings-form">
                                    <div class="form-group checkbox-group">
                                        <input type="checkbox" id="enable-2fa" checked>
                                        <label for="enable-2fa">Enable Two-Factor Authentication for Admins</label>
                                    </div>

                                    <div class="form-group checkbox-group">
                                        <input type="checkbox" id="enable-captcha" checked>
                                        <label for="enable-captcha">Enable CAPTCHA on Forms</label>
                                    </div>

                                    <div class="form-group">
                                        <label for="session-timeout">Session Timeout (minutes)</label>
                                        <input type="number" id="session-timeout" value="30">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
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
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="properties.html">Properties</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="terms.html">Terms of Service</a></li>
                        <li><a href="privacy.html">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h3>Contact Us</h3>
                    <p>Email: info@ghardalali.com</p>
                    <p>Phone: +977 1234567890</p>
                    <div class="social-links">
                        <a href="#" class="social-icon">Facebook</a>
                        <a href="#" class="social-icon">Twitter</a>
                        <a href="#" class="social-icon">Instagram</a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2023 Ghar Dalali. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/dashboard.js"></script>
    <script src="../js/admin.js"></script>
    <script src="../js/admin-charts.js"></script>
    <script src="../js/glassmorphism.js"></script>
</body>

</html>