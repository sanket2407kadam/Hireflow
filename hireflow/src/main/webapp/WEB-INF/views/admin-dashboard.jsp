<%@ page contentType="text/html;charset=UTF-8" %>

<%
    Object totalUsersObj = request.getAttribute("totalUsers");
    Object totalJobsObj = request.getAttribute("totalJobs");
    Object totalCandidatesObj = request.getAttribute("totalCandidates");
    Object totalApplicationsObj = request.getAttribute("totalApplications");
    Object totalInterviewsObj = request.getAttribute("totalInterviews");

    String totalUsers = totalUsersObj != null ? totalUsersObj.toString() : "0";
    String totalJobs = totalJobsObj != null ? totalJobsObj.toString() : "0";
    String totalCandidates = totalCandidatesObj != null ? totalCandidatesObj.toString() : "0";
    String totalApplications = totalApplicationsObj != null ? totalApplicationsObj.toString() : "0";
    String totalInterviews = totalInterviewsObj != null ? totalInterviewsObj.toString() : "0";
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Admin Dashboard | HireFlow Recruitment Management System</title>

    <meta name="description"
          content="HireFlow administrator dashboard for managing users, jobs, candidates, applications and interviews.">

    <meta name="keywords"
          content="HireFlow admin dashboard, recruitment management, applicant tracking system, HR management, jobs, candidates, applications">

    <meta name="author"
          content="HireFlow">

    <meta name="robots"
          content="noindex, nofollow">

    <!-- Bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">


    <style>

        /* =========================================
           GLOBAL
        ========================================= */

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: "Inter", sans-serif;
            background: #f5f5f5;
            color: #171717;
            overflow-x: hidden;
        }

        a {
            text-decoration: none;
        }


        /* =========================================
           ADMIN NAVBAR
        ========================================= */

        .admin-navbar {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;

            height: 72px;

            background: #0b0b0b;

            border-bottom: 1px solid #292929;

            box-shadow:
                0 5px 25px rgba(0, 0, 0, 0.25);

            z-index: 9999;

            animation: navbarSlide 0.6s ease;
        }

        @keyframes navbarSlide {

            from {
                transform: translateY(-100%);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity: 1;
            }

        }


        .admin-navbar .container {
            height: 100%;
        }


        /* BRAND */

        .admin-brand {
            display: flex;
            align-items: center;
            gap: 10px;

            color: #ffffff !important;

            font-size: 23px;
            font-weight: 800;

            letter-spacing: -0.7px;
        }

        .admin-brand:hover {
            color: #ffffff !important;
        }


        .admin-brand-icon {
            width: 40px;
            height: 40px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: #dc2626;

            color: #ffffff;

            border-radius: 9px;

            font-size: 19px;

            box-shadow:
                0 5px 15px rgba(220, 38, 38, 0.35);

            transition: 0.3s ease;
        }

        .admin-brand:hover .admin-brand-icon {
            transform: rotate(-5deg) scale(1.05);
        }


        .brand-highlight {
            color: #ef4444;
        }


        /* ADMIN BADGE */

        .admin-badge {
            margin-left: 7px;

            padding: 5px 9px;

            border: 1px solid #7f1d1d;

            border-radius: 5px;

            background: #450a0a;

            color: #f87171;

            font-size: 9px;
            font-weight: 800;

            letter-spacing: 0.8px;

            text-transform: uppercase;
        }


        /* NAVIGATION */

        .admin-navigation {
            gap: 3px;
        }


        .admin-navigation .nav-link {

            position: relative;

            display: flex;
            align-items: center;

            gap: 7px;

            padding: 24px 12px !important;

            color: #a3a3a3;

            font-size: 13px;
            font-weight: 600;

            transition: all 0.25s ease;
        }


        .admin-navigation .nav-link i {
            font-size: 14px;
        }


        .admin-navigation .nav-link:hover {

            color: #ffffff;

            background: #171717;
        }


        .admin-navigation .nav-link.active {

            color: #ffffff;

            background: #171717;
        }


        .admin-navigation .nav-link.active::after {

            content: "";

            position: absolute;

            left: 12px;
            right: 12px;

            bottom: 0;

            height: 3px;

            background: #dc2626;

            border-radius: 4px 4px 0 0;
        }


        /* RIGHT SIDE */

        .admin-navbar-right {

            display: flex;

            align-items: center;

            gap: 12px;
        }


        .admin-user {

            display: flex;

            align-items: center;

            gap: 9px;

            padding: 6px 10px;

            border-radius: 8px;

            transition: 0.25s ease;
        }


        .admin-user:hover {
            background: #171717;
        }


        .admin-avatar {

            width: 34px;
            height: 34px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 50%;

            background: #dc2626;

            color: #ffffff;

            font-size: 14px;
        }


        .admin-user-info {
            line-height: 1.2;
        }


        .admin-user-name {

            display: block;

            color: #ffffff;

            font-size: 12px;
            font-weight: 700;
        }


        .admin-user-role {

            display: block;

            color: #737373;

            font-size: 10px;

            margin-top: 2px;
        }


        .admin-logout {

            display: flex;

            align-items: center;

            gap: 6px;

            padding: 9px 13px;

            border: 1px solid #3f3f3f;

            border-radius: 7px;

            background: transparent;

            color: #d4d4d4;

            font-size: 12px;
            font-weight: 600;

            transition: all 0.25s ease;
        }


        .admin-logout:hover {

            background: #dc2626;

            border-color: #dc2626;

            color: #ffffff;

            transform: translateY(-1px);
        }


        /* MOBILE TOGGLER */

        .admin-toggler {

            border: 1px solid #404040 !important;

            padding: 7px 9px;

            border-radius: 7px;
        }


        .admin-toggler:focus {

            box-shadow:
                0 0 0 3px rgba(220, 38, 38, 0.15);
        }


        .admin-toggler .navbar-toggler-icon {
            filter: invert(1);
        }


        /* =========================================
           MAIN CONTENT
        ========================================= */

        .admin-main {

            padding-top: 72px;

            min-height: 100vh;

            background:
                radial-gradient(
                    circle at top right,
                    rgba(220, 38, 38, 0.06),
                    transparent 35%
                ),
                #f5f5f5;
        }


        .admin-container {

            max-width: 1400px;

            margin: 0 auto;

            padding: 45px 25px 60px;
        }


        /* =========================================
           PAGE HEADER
        ========================================= */

        .admin-page-header {

            display: flex;

            justify-content: space-between;

            align-items: flex-end;

            margin-bottom: 35px;

            animation: fadeUp 0.7s ease;
        }


        .header-label {

            display: inline-flex;

            align-items: center;

            gap: 7px;

            margin-bottom: 10px;

            color: #dc2626;

            font-size: 11px;

            font-weight: 800;

            text-transform: uppercase;

            letter-spacing: 1.3px;
        }


        .header-label::before {

            content: "";

            width: 25px;
            height: 2px;

            background: #dc2626;

            border-radius: 5px;
        }


        .admin-page-header h1 {

            margin: 0;

            color: #111111;

            font-size: 32px;

            font-weight: 800;

            letter-spacing: -1px;
        }


        .admin-page-header p {

            margin: 8px 0 0;

            color: #737373;

            font-size: 14px;

            max-width: 650px;
        }


        .system-status {

            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 9px 13px;

            background: #ffffff;

            border: 1px solid #e5e5e5;

            border-radius: 8px;

            color: #404040;

            font-size: 12px;

            font-weight: 600;

            box-shadow:
                0 3px 12px rgba(0, 0, 0, 0.04);
        }


        .status-dot {

            width: 8px;
            height: 8px;

            background: #22c55e;

            border-radius: 50%;

            box-shadow:
                0 0 0 4px rgba(34, 197, 94, 0.12);

            animation: pulseStatus 2s infinite;
        }


        @keyframes pulseStatus {

            0%,
            100% {
                box-shadow:
                    0 0 0 4px rgba(34, 197, 94, 0.12);
            }

            50% {
                box-shadow:
                    0 0 0 8px rgba(34, 197, 94, 0.02);
            }

        }


        /* =========================================
           SECTION TITLE
        ========================================= */

        .section-title {

            display: flex;

            align-items: center;

            justify-content: space-between;

            margin-bottom: 17px;

            animation: fadeUp 0.8s ease;
        }


        .section-title h2 {

            margin: 0;

            color: #171717;

            font-size: 17px;

            font-weight: 800;
        }


        .section-title span {

            color: #737373;

            font-size: 11px;

            font-weight: 600;
        }


        /* =========================================
           STATISTICS
        ========================================= */

        .statistics-grid {

            display: grid;

            grid-template-columns:
                repeat(5, 1fr);

            gap: 16px;

            margin-bottom: 40px;
        }


        .stat-card {

            position: relative;

            overflow: hidden;

            display: block;

            min-height: 155px;

            padding: 22px;

            background: #ffffff;

            border: 1px solid #e5e5e5;

            border-radius: 12px;

            box-shadow:
                0 5px 18px rgba(0, 0, 0, 0.045);

            transition:
                transform 0.3s ease,
                box-shadow 0.3s ease,
                border-color 0.3s ease;

            animation: fadeUp 0.7s ease both;
        }


        .stat-card:nth-child(1) {
            animation-delay: 0.05s;
        }

        .stat-card:nth-child(2) {
            animation-delay: 0.10s;
        }

        .stat-card:nth-child(3) {
            animation-delay: 0.15s;
        }

        .stat-card:nth-child(4) {
            animation-delay: 0.20s;
        }

        .stat-card:nth-child(5) {
            animation-delay: 0.25s;
        }


        .stat-card::before {

            content: "";

            position: absolute;

            top: 0;
            left: 0;

            width: 100%;

            height: 3px;

            background: #dc2626;

            transform: scaleX(0);

            transform-origin: left;

            transition: 0.3s ease;
        }


        .stat-card:hover {

            transform: translateY(-6px);

            border-color: #fecaca;

            box-shadow:
                0 14px 30px rgba(0, 0, 0, 0.09);
        }


        .stat-card:hover::before {
            transform: scaleX(1);
        }


        .stat-top {

            display: flex;

            justify-content: space-between;

            align-items: flex-start;
        }


        .stat-icon {

            width: 43px;
            height: 43px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 9px;

            background: #fef2f2;

            color: #dc2626;

            font-size: 18px;
        }


        .stat-arrow {

            color: #a3a3a3;

            font-size: 14px;

            transition: 0.25s ease;
        }


        .stat-card:hover .stat-arrow {

            color: #dc2626;

            transform:
                translate(2px, -2px);
        }


        .stat-number {

            margin-top: 18px;

            color: #171717;

            font-size: 28px;

            font-weight: 800;

            line-height: 1;
        }


        .stat-label {

            margin-top: 7px;

            color: #737373;

            font-size: 12px;

            font-weight: 600;
        }


        /* =========================================
           MANAGEMENT CARDS
        ========================================= */

        .management-grid {

            display: grid;

            grid-template-columns:
                repeat(5, 1fr);

            gap: 16px;

            margin-bottom: 40px;
        }


        .management-card {

            display: flex;

            flex-direction: column;

            min-height: 175px;

            padding: 21px;

            background: #111111;

            border: 1px solid #262626;

            border-radius: 11px;

            color: #ffffff;

            transition:
                transform 0.3s ease,
                box-shadow 0.3s ease,
                background 0.3s ease;

            animation: fadeUp 0.8s ease both;
        }


        .management-card:hover {

            transform: translateY(-5px);

            background: #181818;

            box-shadow:
                0 15px 30px rgba(0, 0, 0, 0.16);
        }


        .management-icon {

            width: 40px;
            height: 40px;

            display: flex;
            align-items: center;
            justify-content: center;

            margin-bottom: 17px;

            border-radius: 8px;

            background: #dc2626;

            color: #ffffff;

            font-size: 17px;
        }


        .management-card h3 {

            margin: 0 0 7px;

            color: #ffffff;

            font-size: 14px;

            font-weight: 700;
        }


        .management-card p {

            margin: 0;

            color: #a3a3a3;

            font-size: 11px;

            line-height: 1.6;

            flex-grow: 1;
        }


        .management-link {

            display: flex;

            align-items: center;

            justify-content: space-between;

            margin-top: 18px;

            padding-top: 13px;

            border-top: 1px solid #2d2d2d;

            color: #f87171;

            font-size: 11px;

            font-weight: 700;
        }


        .management-link i {

            transition: 0.25s ease;
        }


        .management-card:hover .management-link i {

            transform: translateX(4px);

            color: #ffffff;
        }


        /* =========================================
           BOTTOM GRID
        ========================================= */

        .bottom-grid {

            display: grid;

            grid-template-columns:
                2fr 1fr;

            gap: 20px;
        }


        .admin-panel {

            background: #ffffff;

            border: 1px solid #e5e5e5;

            border-radius: 12px;

            box-shadow:
                0 5px 18px rgba(0, 0, 0, 0.045);

            overflow: hidden;

            animation: fadeUp 0.9s ease;
        }


        .panel-header {

            display: flex;

            align-items: center;

            justify-content: space-between;

            padding: 19px 21px;

            border-bottom: 1px solid #eeeeee;
        }


        .panel-header h3 {

            margin: 0;

            color: #171717;

            font-size: 14px;

            font-weight: 800;
        }


        .panel-header-icon {

            color: #dc2626;

            font-size: 16px;
        }


        /* ACTIVITY */

        .activity-list {
            padding: 5px 21px;
        }


        .activity-item {

            display: flex;

            align-items: center;

            gap: 13px;

            padding: 15px 0;

            border-bottom: 1px solid #f0f0f0;
        }


        .activity-item:last-child {
            border-bottom: none;
        }


        .activity-icon {

            width: 36px;
            height: 36px;

            flex-shrink: 0;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 8px;

            background: #fef2f2;

            color: #dc2626;

            font-size: 14px;
        }


        .activity-content {

            flex: 1;
        }


        .activity-title {

            margin: 0;

            color: #404040;

            font-size: 12px;

            font-weight: 600;
        }


        .activity-time {

            margin-top: 3px;

            color: #a3a3a3;

            font-size: 10px;
        }


        .activity-badge {

            padding: 4px 7px;

            background: #f5f5f5;

            border-radius: 5px;

            color: #737373;

            font-size: 9px;

            font-weight: 700;
        }


        /* SYSTEM PANEL */

        .system-panel-content {

            padding: 20px;
        }


        .system-main {

            display: flex;

            align-items: center;

            gap: 13px;

            padding: 15px;

            background: #fafafa;

            border: 1px solid #eeeeee;

            border-radius: 9px;

            margin-bottom: 15px;
        }


        .system-check {

            width: 38px;
            height: 38px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 50%;

            background: #dcfce7;

            color: #16a34a;

            font-size: 16px;
        }


        .system-main strong {

            display: block;

            color: #262626;

            font-size: 12px;
        }


        .system-main span {

            display: block;

            margin-top: 3px;

            color: #737373;

            font-size: 10px;
        }


        .system-details {

            display: flex;

            flex-direction: column;

            gap: 11px;
        }


        .system-detail {

            display: flex;

            justify-content: space-between;

            align-items: center;

            font-size: 11px;
        }


        .system-detail-label {
            color: #737373;
        }


        .system-detail-value {

            color: #404040;

            font-weight: 700;
        }


        .online-text {
            color: #16a34a !important;
        }


        /* =========================================
           FOOTER
        ========================================= */

        .admin-footer {

            margin-top: 45px;

            padding-top: 22px;

            border-top: 1px solid #dedede;

            display: flex;

            align-items: center;

            justify-content: space-between;

            color: #a3a3a3;

            font-size: 10px;
        }


        .admin-footer strong {
            color: #737373;
        }


        /* =========================================
           ANIMATIONS
        ========================================= */

        @keyframes fadeUp {

            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        /* =========================================
           RESPONSIVE
        ========================================= */

        @media (max-width: 1200px) {

            .statistics-grid,
            .management-grid {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .admin-navigation .nav-link {
                padding-left: 8px !important;
                padding-right: 8px !important;
            }

        }


        @media (max-width: 991px) {

            .admin-navbar {
                height: auto;
                min-height: 72px;
            }


            .admin-navbar .container {
                min-height: 72px;
            }


            .admin-navigation {

                padding-top: 10px;

                border-top: 1px solid #292929;

                margin-top: 10px !important;
            }


            .admin-navigation .nav-link {

                padding: 12px !important;

                border-radius: 7px;
            }


            .admin-navigation .nav-link.active::after {
                display: none;
            }


            .admin-navbar-right {

                margin-top: 10px;

                padding: 12px 0;

                border-top: 1px solid #292929;

                justify-content: space-between;
            }


            .admin-main {
                padding-top: 72px;
            }


            .bottom-grid {
                grid-template-columns: 1fr;
            }

        }


        @media (max-width: 768px) {

            .admin-container {
                padding: 32px 18px 45px;
            }


            .admin-page-header {

                flex-direction: column;

                align-items: flex-start;

                gap: 18px;
            }


            .admin-page-header h1 {
                font-size: 27px;
            }


            .statistics-grid,
            .management-grid {

                grid-template-columns:
                    repeat(2, 1fr);

            }

        }


        @media (max-width: 576px) {

            .admin-brand {
                font-size: 20px;
            }


            .admin-brand-icon {

                width: 36px;
                height: 36px;

                font-size: 16px;
            }


            .admin-badge {
                display: none;
            }


            .statistics-grid,
            .management-grid {

                grid-template-columns: 1fr;

            }


            .stat-card {
                min-height: 145px;
            }


            .admin-footer {

                flex-direction: column;

                gap: 8px;

                align-items: flex-start;
            }


            .admin-user-info {
                display: none;
            }

        }


        @media (prefers-reduced-motion: reduce) {

            *,
            *::before,
            *::after {

                animation-duration: 0.01ms !important;

                animation-iteration-count: 1 !important;

                transition-duration: 0.01ms !important;

                scroll-behavior: auto !important;
            }

        }

    </style>

</head>


<body>


<!-- =========================================
     FIXED ADMIN NAVBAR
========================================= -->

<nav class="navbar navbar-expand-lg admin-navbar">

    <div class="container">

        <!-- BRAND -->

        <a class="navbar-brand admin-brand"
           href="${pageContext.request.contextPath}/admin/dashboard">

            <span class="admin-brand-icon">

                <i class="bi bi-briefcase-fill"></i>

            </span>

            <span>
                Hire<span class="brand-highlight">Flow</span>
            </span>

            <span class="admin-badge">
                Admin
            </span>

        </a>


        <!-- MOBILE TOGGLER -->

        <button
            class="navbar-toggler admin-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#adminNavbar"
            aria-controls="adminNavbar"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>


        <!-- NAVIGATION -->

        <div
            class="collapse navbar-collapse"
            id="adminNavbar">


            <ul class="navbar-nav mx-auto admin-navigation">


                <!-- DASHBOARD -->

                <li class="nav-item">

                    <a
                        class="nav-link active"
                        href="${pageContext.request.contextPath}/admin/dashboard">

                        <i class="bi bi-grid-1x2-fill"></i>

                        <span>Dashboard</span>

                    </a>

                </li>


                <!-- USERS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/admin/users">

                        <i class="bi bi-people-fill"></i>

                        <span>Users</span>

                    </a>

                </li>


                <!-- JOBS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/jobs">

                        <i class="bi bi-briefcase"></i>

                        <span>Jobs</span>

                    </a>

                </li>


                <!-- CANDIDATES -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/candidates">

                        <i class="bi bi-person-badge"></i>

                        <span>Candidates</span>

                    </a>

                </li>


                <!-- APPLICATIONS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/applications">

                        <i class="bi bi-file-earmark-text"></i>

                        <span>Applications</span>

                    </a>

                </li>


                <!-- INTERVIEWS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/interviews">

                        <i class="bi bi-calendar-event"></i>

                        <span>Interviews</span>

                    </a>

                </li>

            </ul>


            <!-- ADMIN USER -->

            <div class="admin-navbar-right">


                <div class="admin-user">

                    <span class="admin-avatar">

                        <i class="bi bi-person-fill"></i>

                    </span>


                    <span class="admin-user-info">

                        <span class="admin-user-name">
                            Administrator
                        </span>

                        <span class="admin-user-role">
                            System Admin
                        </span>

                    </span>

                </div>


                <a
                    class="admin-logout"
                    href="${pageContext.request.contextPath}/logout">

                    <i class="bi bi-box-arrow-right"></i>

                    <span>Logout</span>

                </a>

            </div>

        </div>

    </div>

</nav>



<!-- =========================================
     MAIN
========================================= -->

<main class="admin-main">


    <div class="admin-container">


        <!-- PAGE HEADER -->

        <header class="admin-page-header">


            <div>

                <div class="header-label">

                    Administration

                </div>


                <h1>
                    Admin Dashboard
                </h1>


                <p>
                    Manage your HireFlow recruitment platform,
                    monitor users and oversee the complete hiring
                    workflow from one place.
                </p>

            </div>


            <div class="system-status">

                <span class="status-dot"></span>

                System Active

            </div>


        </header>



        <!-- =========================================
             PLATFORM OVERVIEW
        ========================================== -->

        <div class="section-title">

            <h2>
                Platform Overview
            </h2>

            <span>
                Recruitment statistics
            </span>

        </div>


        <section class="statistics-grid">


            <!-- USERS -->

            <a
                href="${pageContext.request.contextPath}/admin/users"
                class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon">

                        <i class="bi bi-people-fill"></i>

                    </div>

                    <i class="bi bi-arrow-up-right stat-arrow"></i>

                </div>


                <div class="stat-number">
                    <%= totalUsers %>
                </div>


                <div class="stat-label">
                    Total Users
                </div>

            </a>



            <!-- JOBS -->

            <a
                href="${pageContext.request.contextPath}/jobs"
                class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon">

                        <i class="bi bi-briefcase-fill"></i>

                    </div>

                    <i class="bi bi-arrow-up-right stat-arrow"></i>

                </div>


                <div class="stat-number">
                    <%= totalJobs %>
                </div>


                <div class="stat-label">
                    Total Jobs
                </div>

            </a>



            <!-- CANDIDATES -->

            <a
                href="${pageContext.request.contextPath}/candidates"
                class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon">

                        <i class="bi bi-person-badge-fill"></i>

                    </div>

                    <i class="bi bi-arrow-up-right stat-arrow"></i>

                </div>


                <div class="stat-number">
                    <%= totalCandidates %>
                </div>


                <div class="stat-label">
                    Total Candidates
                </div>

            </a>



            <!-- APPLICATIONS -->

            <a
                href="${pageContext.request.contextPath}/applications"
                class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon">

                        <i class="bi bi-file-earmark-text-fill"></i>

                    </div>

                    <i class="bi bi-arrow-up-right stat-arrow"></i>

                </div>


                <div class="stat-number">
                    <%= totalApplications %>
                </div>


                <div class="stat-label">
                    Total Applications
                </div>

            </a>



            <!-- INTERVIEWS -->

            <a
                href="${pageContext.request.contextPath}/interviews"
                class="stat-card">

                <div class="stat-top">

                    <div class="stat-icon">

                        <i class="bi bi-calendar-check-fill"></i>

                    </div>

                    <i class="bi bi-arrow-up-right stat-arrow"></i>

                </div>


                <div class="stat-number">
                    <%= totalInterviews %>
                </div>


                <div class="stat-label">
                    Total Interviews
                </div>

            </a>


        </section>



        <!-- =========================================
             QUICK MANAGEMENT
        ========================================== -->

        <div class="section-title">

            <h2>
                Quick Management
            </h2>

            <span>
                Manage platform modules
            </span>

        </div>


        <section class="management-grid">


            <!-- USERS -->

            <a
                href="${pageContext.request.contextPath}/admin/users"
                class="management-card">

                <div class="management-icon">

                    <i class="bi bi-people-fill"></i>

                </div>


                <h3>
                    Manage Users
                </h3>


                <p>
                    View registered users and manage
                    recruiter accounts.
                </p>


                <div class="management-link">

                    <span>
                        Open Users
                    </span>

                    <i class="bi bi-arrow-right"></i>

                </div>

            </a>



            <!-- JOBS -->

            <a
                href="${pageContext.request.contextPath}/jobs"
                class="management-card">

                <div class="management-icon">

                    <i class="bi bi-briefcase-fill"></i>

                </div>


                <h3>
                    Manage Jobs
                </h3>


                <p>
                    Review job openings and manage
                    recruitment positions.
                </p>


                <div class="management-link">

                    <span>
                        Open Jobs
                    </span>

                    <i class="bi bi-arrow-right"></i>

                </div>

            </a>



            <!-- CANDIDATES -->

            <a
                href="${pageContext.request.contextPath}/candidates"
                class="management-card">

                <div class="management-icon">

                    <i class="bi bi-person-badge-fill"></i>

                </div>


                <h3>
                    Manage Candidates
                </h3>


                <p>
                    Review candidate profiles and
                    recruitment information.
                </p>


                <div class="management-link">

                    <span>
                        Open Candidates
                    </span>

                    <i class="bi bi-arrow-right"></i>

                </div>

            </a>



            <!-- APPLICATIONS -->

            <a
                href="${pageContext.request.contextPath}/applications"
                class="management-card">

                <div class="management-icon">

                    <i class="bi bi-file-earmark-text-fill"></i>

                </div>


                <h3>
                    Applications
                </h3>


                <p>
                    Monitor applications and track
                    candidate progress.
                </p>


                <div class="management-link">

                    <span>
                        Open Applications
                    </span>

                    <i class="bi bi-arrow-right"></i>

                </div>

            </a>



            <!-- INTERVIEWS -->

            <a
                href="${pageContext.request.contextPath}/interviews"
                class="management-card">

                <div class="management-icon">

                    <i class="bi bi-calendar-event-fill"></i>

                </div>


                <h3>
                    Interviews
                </h3>


                <p>
                    Monitor scheduled interviews and
                    candidate evaluations.
                </p>


                <div class="management-link">

                    <span>
                        Open Interviews
                    </span>

                    <i class="bi bi-arrow-right"></i>

                </div>

            </a>


        </section>



        <!-- =========================================
             BOTTOM SECTION
        ========================================== -->

        <section class="bottom-grid">


            <!-- RECENT ACTIVITY -->

            <div class="admin-panel">


                <div class="panel-header">

                    <h3>
                        Recent Platform Activity
                    </h3>

                    <i class="bi bi-activity panel-header-icon"></i>

                </div>


                <div class="activity-list">


                    <div class="activity-item">

                        <div class="activity-icon">

                            <i class="bi bi-person-plus-fill"></i>

                        </div>


                        <div class="activity-content">

                            <p class="activity-title">
                                New recruiter registration
                            </p>

                            <div class="activity-time">
                                User management activity
                            </div>

                        </div>


                        <span class="activity-badge">
                            USER
                        </span>

                    </div>



                    <div class="activity-item">

                        <div class="activity-icon">

                            <i class="bi bi-briefcase-fill"></i>

                        </div>


                        <div class="activity-content">

                            <p class="activity-title">
                                Job opening added
                            </p>

                            <div class="activity-time">
                                Recruitment activity
                            </div>

                        </div>


                        <span class="activity-badge">
                            JOB
                        </span>

                    </div>



                    <div class="activity-item">

                        <div class="activity-icon">

                            <i class="bi bi-file-earmark-text-fill"></i>

                        </div>


                        <div class="activity-content">

                            <p class="activity-title">
                                Candidate application received
                            </p>

                            <div class="activity-time">
                                Application activity
                            </div>

                        </div>


                        <span class="activity-badge">
                            APPLICATION
                        </span>

                    </div>



                    <div class="activity-item">

                        <div class="activity-icon">

                            <i class="bi bi-calendar-check-fill"></i>

                        </div>


                        <div class="activity-content">

                            <p class="activity-title">
                                Interview scheduled
                            </p>

                            <div class="activity-time">
                                Interview activity
                            </div>

                        </div>


                        <span class="activity-badge">
                            INTERVIEW
                        </span>

                    </div>


                </div>

            </div>



            <!-- SYSTEM STATUS -->

            <div class="admin-panel">


                <div class="panel-header">

                    <h3>
                        System Status
                    </h3>

                    <i class="bi bi-cpu panel-header-icon"></i>

                </div>


                <div class="system-panel-content">


                    <div class="system-main">

                        <div class="system-check">

                            <i class="bi bi-check-lg"></i>

                        </div>


                        <div>

                            <strong>
                                All Systems Operational
                            </strong>

                            <span>
                                HireFlow is running normally.
                            </span>

                        </div>

                    </div>


                    <div class="system-details">


                        <div class="system-detail">

                            <span class="system-detail-label">
                                Application
                            </span>

                            <span class="system-detail-value online-text">
                                Online
                            </span>

                        </div>


                        <div class="system-detail">

                            <span class="system-detail-label">
                                Database
                            </span>

                            <span class="system-detail-value online-text">
                                Connected
                            </span>

                        </div>


                        <div class="system-detail">

                            <span class="system-detail-label">
                                Authentication
                            </span>

                            <span class="system-detail-value online-text">
                                Active
                            </span>

                        </div>


                        <div class="system-detail">

                            <span class="system-detail-label">
                                Platform
                            </span>

                            <span class="system-detail-value">
                                HireFlow
                            </span>

                        </div>


                    </div>

                </div>

            </div>


        </section>



        <!-- FOOTER -->

        <footer class="admin-footer">

            <div>
                © 2026 <strong>HireFlow</strong>.
                Recruitment Management System.
            </div>

            <div>
                Administrator Panel
            </div>

        </footer>


    </div>

</main>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>