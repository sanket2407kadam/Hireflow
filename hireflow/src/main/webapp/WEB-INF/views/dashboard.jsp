<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- =========================
         SEO META
    ========================== -->

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta name="description"
          content="HireFlow recruiter dashboard for managing jobs, candidates, applications, interviews and recruitment activities efficiently.">

    <meta name="keywords"
          content="HireFlow, recruiter dashboard, recruitment management system, applicant tracking system, ATS, candidate management, job management, recruitment software">

    <meta name="author"
          content="HireFlow">

    <meta name="robots"
          content="index, follow">

    <meta name="theme-color"
          content="#2563eb">


    <!-- Open Graph -->

    <meta property="og:title"
          content="Recruiter Dashboard | HireFlow">

    <meta property="og:description"
          content="Manage recruitment activities, candidates, jobs and applications with HireFlow.">

    <meta property="og:type"
          content="website">


    <title>Recruiter Dashboard | HireFlow</title>


    <!-- =========================
         BOOTSTRAP
    ========================== -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- =========================
         BOOTSTRAP ICONS
    ========================== -->

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


    <!-- =========================
         GOOGLE FONT
    ========================== -->

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">


    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        body {

            font-family: 'Inter', sans-serif;

            background: #f8fafc;

            color: #0f172a;

            overflow-x: hidden;

        }


        /* =========================
           NAVBAR
        ========================== */

        .navbar {

            background: #ffffff;

            border-bottom: 1px solid #e2e8f0;

            padding: 14px 0;

            position: sticky;

            top: 0;

            z-index: 1000;

        }


        .navbar-brand {

            font-size: 25px;

            font-weight: 800;

            color: #0f172a !important;

            letter-spacing: -0.8px;

        }


        .navbar-brand span {

            color: #2563eb;

        }


        .nav-link {

            color: #64748b !important;

            font-size: 14px;

            font-weight: 500;

            margin: 0 5px;

            padding: 9px 12px !important;

            border-radius: 8px;

            transition: all 0.3s ease;

        }


        .nav-link:hover {

            color: #2563eb !important;

            background: #eff6ff;

        }


        .nav-link.active {

            color: #2563eb !important;

            background: #eff6ff;

            font-weight: 600;

        }


        /* =========================
           MOBILE NAVBAR BUTTON
        ========================== */

        .navbar-toggler {

            border: 1px solid #e2e8f0;

            padding: 7px 9px;

            border-radius: 8px;

        }


        .navbar-toggler:focus {

            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);

        }


        .navbar-toggler-icon {

            width: 20px;

            height: 20px;

        }


        /* =========================
           PROFILE BUTTON
        ========================== */

        .profile-btn {

            border: 1px solid #e2e8f0;

            background: #ffffff;

            border-radius: 10px;

            padding: 7px 12px;

            display: flex;

            align-items: center;

            gap: 9px;

            transition: 0.3s;

        }


        .profile-btn:hover {

            border-color: #bfdbfe;

            background: #f8fafc;

        }


        .profile-avatar {

            width: 34px;

            height: 34px;

            border-radius: 50%;

            background: #2563eb;

            color: white;

            display: flex;

            align-items: center;

            justify-content: center;

            font-weight: 700;

            font-size: 14px;

        }


        .profile-name {

            font-size: 13px;

            font-weight: 600;

            color: #334155;

            max-width: 130px;

            overflow: hidden;

            text-overflow: ellipsis;

            white-space: nowrap;

        }


        .dropdown-menu {

            border: 1px solid #e2e8f0;

            border-radius: 12px;

            padding: 8px;

            box-shadow: 0 15px 40px rgba(15, 23, 42, 0.12);

        }


        .dropdown-item {

            border-radius: 8px;

            font-size: 14px;

            padding: 9px 12px;

        }


        .dropdown-item:hover {

            background: #eff6ff;

            color: #2563eb;

        }


        /* =========================
           MAIN
        ========================== */

        .dashboard-container {

            max-width: 1400px;

            margin: auto;

            padding: 40px 25px;

        }


        /* =========================
           WELCOME SECTION
        ========================== */

        .welcome-section {

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #1d4ed8
                );

            border-radius: 22px;

            padding: 38px 40px;

            color: white;

            position: relative;

            overflow: hidden;

            animation: fadeUp 0.7s ease;

            box-shadow:
                0 20px 45px
                rgba(37, 99, 235, 0.20);

        }


        .welcome-section::before {

            content: "";

            position: absolute;

            width: 300px;

            height: 300px;

            border-radius: 50%;

            background: rgba(255,255,255,0.08);

            right: -100px;

            top: -130px;

        }


        .welcome-section::after {

            content: "";

            position: absolute;

            width: 180px;

            height: 180px;

            border-radius: 50%;

            background: rgba(255,255,255,0.06);

            right: 180px;

            bottom: -100px;

        }


        .welcome-content {

            position: relative;

            z-index: 2;

        }


        .welcome-label {

            display: inline-flex;

            align-items: center;

            gap: 7px;

            background: rgba(255,255,255,0.15);

            border: 1px solid rgba(255,255,255,0.20);

            padding: 7px 13px;

            border-radius: 30px;

            font-size: 12px;

            font-weight: 600;

            margin-bottom: 15px;

        }


        .welcome-title {

            font-size: 32px;

            font-weight: 800;

            margin-bottom: 10px;

            letter-spacing: -0.7px;

        }


        .welcome-description {

            font-size: 14px;

            color: rgba(255,255,255,0.82);

            max-width: 650px;

            line-height: 1.7;

            margin-bottom: 24px;

        }


        .welcome-actions {

            display: flex;

            gap: 10px;

            flex-wrap: wrap;

        }


        .welcome-btn {

            border: none;

            padding: 11px 18px;

            border-radius: 9px;

            font-size: 13px;

            font-weight: 600;

            text-decoration: none;

            display: inline-flex;

            align-items: center;

            gap: 7px;

            transition: 0.3s;

        }


        .welcome-btn-primary {

            background: white;

            color: #2563eb;

        }


        .welcome-btn-primary:hover {

            background: #eff6ff;

            color: #1d4ed8;

            transform: translateY(-2px);

        }


        .welcome-btn-outline {

            background: rgba(255,255,255,0.10);

            color: white;

            border: 1px solid rgba(255,255,255,0.30);

        }


        .welcome-btn-outline:hover {

            background: rgba(255,255,255,0.18);

            color: white;

            transform: translateY(-2px);

        }


        /* =========================
           SECTION TITLE
        ========================== */

        .section-header {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-top: 38px;

            margin-bottom: 18px;

        }


        .section-title {

            font-size: 20px;

            font-weight: 750;

            margin: 0;

        }


        .section-subtitle {

            color: #64748b;

            font-size: 13px;

            margin-top: 4px;

        }


        /* =========================
           STAT CARDS
        ========================== */

        .stat-card {

            background: white;

            border: 1px solid #e2e8f0;

            border-radius: 16px;

            padding: 22px;

            height: 100%;

            transition: all 0.3s ease;

            animation: fadeUp 0.8s ease;

        }


        .stat-card:hover {

            transform: translateY(-5px);

            border-color: #bfdbfe;

            box-shadow:
                0 15px 35px
                rgba(15,23,42,0.08);

        }


        .stat-top {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 18px;

        }


        .stat-icon {

            width: 48px;

            height: 48px;

            border-radius: 12px;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 21px;

        }


        .icon-blue {

            background: #dbeafe;

            color: #2563eb;

        }


        .icon-green {

            background: #dcfce7;

            color: #16a34a;

        }


        .icon-orange {

            background: #ffedd5;

            color: #ea580c;

        }


        .icon-purple {

            background: #f3e8ff;

            color: #9333ea;

        }


        .stat-change {

            font-size: 11px;

            color: #16a34a;

            background: #f0fdf4;

            padding: 5px 8px;

            border-radius: 20px;

            font-weight: 600;

        }


        .stat-number {

            font-size: 29px;

            font-weight: 800;

            color: #0f172a;

            margin-bottom: 4px;

        }


        .stat-label {

            color: #64748b;

            font-size: 13px;

        }


        /* =========================
           QUICK ACTIONS
        ========================== */

        .quick-card {

            background: white;

            border: 1px solid #e2e8f0;

            border-radius: 16px;

            padding: 22px;

            height: 100%;

        }


        .quick-action {

            display: flex;

            align-items: center;

            gap: 13px;

            padding: 13px;

            border-radius: 10px;

            text-decoration: none;

            color: #334155;

            transition: 0.3s;

            margin-bottom: 8px;

        }


        .quick-action:last-child {

            margin-bottom: 0;

        }


        .quick-action:hover {

            background: #eff6ff;

            color: #2563eb;

            transform: translateX(4px);

        }


        .quick-icon {

            width: 38px;

            height: 38px;

            border-radius: 9px;

            background: #eff6ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            flex-shrink: 0;

        }


        .quick-text strong {

            display: block;

            font-size: 13px;

            margin-bottom: 2px;

        }


        .quick-text span {

            font-size: 11px;

            color: #94a3b8;

        }


        /* =========================
           ACTIVITY
        ========================== */

        .activity-card {

            background: white;

            border: 1px solid #e2e8f0;

            border-radius: 16px;

            padding: 22px;

        }


        .activity-item {

            display: flex;

            gap: 14px;

            padding: 15px 0;

            border-bottom: 1px solid #f1f5f9;

        }


        .activity-item:last-child {

            border-bottom: none;

        }


        .activity-icon {

            width: 40px;

            height: 40px;

            border-radius: 10px;

            background: #eff6ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            flex-shrink: 0;

        }


        .activity-content strong {

            display: block;

            font-size: 13px;

            margin-bottom: 4px;

        }


        .activity-content span {

            color: #94a3b8;

            font-size: 11px;

        }


        /* =========================
           PROFILE CARD
        ========================== */

        .profile-card {

            background: white;

            border: 1px solid #e2e8f0;

            border-radius: 16px;

            padding: 25px;

        }


        .profile-avatar-large {

            width: 65px;

            height: 65px;

            border-radius: 18px;

            background: #2563eb;

            color: white;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 24px;

            font-weight: 800;

            margin-bottom: 15px;

        }


        .profile-name-large {

            font-size: 18px;

            font-weight: 700;

            margin-bottom: 5px;

        }


        .profile-email {

            color: #64748b;

            font-size: 13px;

            margin-bottom: 15px;

            word-break: break-word;

        }


        .role-badge {

            display: inline-block;

            background: #eff6ff;

            color: #2563eb;

            padding: 6px 10px;

            border-radius: 20px;

            font-size: 11px;

            font-weight: 700;

        }


        .profile-detail {

            border-top: 1px solid #f1f5f9;

            margin-top: 20px;

            padding-top: 15px;

        }


        .profile-detail-row {

            display: flex;

            justify-content: space-between;

            padding: 7px 0;

            font-size: 12px;

        }


        .profile-detail-row span:first-child {

            color: #94a3b8;

        }


        .profile-detail-row span:last-child {

            color: #334155;

            font-weight: 600;

        }


        /* =========================
           PROFILE LINK
        ========================== */

        .profile-edit-link {

            display: inline-flex;

            align-items: center;

            gap: 6px;

            margin-top: 18px;

            color: #2563eb;

            font-size: 12px;

            font-weight: 600;

            text-decoration: none;

        }


        .profile-edit-link:hover {

            color: #1d4ed8;

        }


        /* =========================
           FOOTER
        ========================== */

        footer {

            border-top: 1px solid #e2e8f0;

            margin-top: 35px;

            padding: 22px 0;

            text-align: center;

            color: #94a3b8;

            font-size: 12px;

        }


        /* =========================
           ANIMATION
        ========================== */

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


        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 991px) {

            .navbar-nav {

                padding-top: 12px;

            }


            .profile-wrapper {

                margin-top: 12px;

                margin-bottom: 5px;

            }


            .welcome-title {

                font-size: 27px;

            }

        }


        @media (max-width: 576px) {

            .dashboard-container {

                padding: 25px 16px;

            }


            .welcome-section {

                padding: 28px 22px;

                border-radius: 18px;

            }


            .welcome-title {

                font-size: 24px;

            }


            .welcome-description {

                font-size: 13px;

            }


            .welcome-btn {

                width: 100%;

                justify-content: center;

            }


            .profile-name {

                max-width: 100px;

            }


            .section-header {

                margin-top: 28px;

            }

        }

    </style>

</head>


<body>


<!-- =====================================================
     NAVBAR
====================================================== -->

<nav class="navbar navbar-expand-lg">

    <div class="container">


        <!-- BRAND -->

        <a
            class="navbar-brand"
            href="${pageContext.request.contextPath}/dashboard">

            Hire<span>Flow</span>

        </a>


        <!-- MOBILE TOGGLE -->

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#mainNavbar"
            aria-controls="mainNavbar"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>


        <!-- NAVIGATION -->

        <div
            class="collapse navbar-collapse"
            id="mainNavbar">


            <ul class="navbar-nav mx-auto">


                <!-- DASHBOARD -->

                <li class="nav-item">

                    <a
                        class="nav-link active"
                        href="${pageContext.request.contextPath}/dashboard">

                        <i class="bi bi-grid me-1"></i>

                        Dashboard

                    </a>

                </li>


                <!-- JOBS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/jobs">

                        <i class="bi bi-briefcase me-1"></i>

                        Jobs

                    </a>

                </li>


                <!-- CANDIDATES -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/candidates">

                        <i class="bi bi-people me-1"></i>

                        Candidates

                    </a>

                </li>


                <!-- APPLICATIONS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/applications">

                        <i class="bi bi-file-earmark-text me-1"></i>

                        Applications

                    </a>

                </li>


                <!-- INTERVIEWS -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/interviews">

                        <i class="bi bi-calendar-event me-1"></i>

                        Interviews

                    </a>

                </li>


            </ul>


            <!-- =================================================
                 PROFILE DROPDOWN
            ================================================== -->

            <div class="profile-wrapper dropdown">


                <button
                    class="profile-btn dropdown-toggle"
                    type="button"
                    data-bs-toggle="dropdown"
                    aria-expanded="false">


                    <div class="profile-avatar">

                        <i class="bi bi-person"></i>

                    </div>


                    <span class="profile-name">

                        ${user.name}

                    </span>


                </button>


                <ul class="dropdown-menu dropdown-menu-end">


                    <!-- PROFILE -->

                    <li>

                        <a
                            class="dropdown-item"
                            href="${pageContext.request.contextPath}/profile">

                            <i class="bi bi-person me-2"></i>

                            My Profile

                        </a>

                    </li>


                    <!-- SETTINGS -->

                    <li>

                        <a
                            class="dropdown-item"
                            href="${pageContext.request.contextPath}/settings">

                            <i class="bi bi-gear me-2"></i>

                            Settings

                        </a>

                    </li>


                    <li>

                        <hr class="dropdown-divider">

                    </li>


                    <!-- LOGOUT -->

                    <li>

                        <a
                            class="dropdown-item text-danger"
                            href="${pageContext.request.contextPath}/logout">

                            <i class="bi bi-box-arrow-right me-2"></i>

                            Logout

                        </a>

                    </li>


                </ul>

            </div>


        </div>

    </div>

</nav>


<!-- =====================================================
     MAIN DASHBOARD
====================================================== -->

<main class="dashboard-container">


    <!-- =================================================
         WELCOME
    ================================================== -->

    <section class="welcome-section">

        <div class="welcome-content">


            <div class="welcome-label">

                <i class="bi bi-stars"></i>

                Recruiter Workspace

            </div>


            <h1 class="welcome-title">

                Welcome back, ${user.name}

            </h1>


            <p class="welcome-description">

                Manage your recruitment workflow from one place.
                Create job openings, review candidates, track applications
                and organize interviews efficiently with HireFlow.

            </p>


            <div class="welcome-actions">


                <!-- CREATE JOB -->

                <a
                    href="${pageContext.request.contextPath}/jobs"
                    class="welcome-btn welcome-btn-primary">

                    <i class="bi bi-plus-lg"></i>

                    Create New Job

                </a>


                <!-- VIEW CANDIDATES -->

                <a
                    href="${pageContext.request.contextPath}/candidates"
                    class="welcome-btn welcome-btn-outline">

                    <i class="bi bi-people"></i>

                    View Candidates

                </a>


            </div>


        </div>

    </section>


    <!-- =================================================
         STATISTICS
    ================================================== -->

    <div class="section-header">

        <div>

            <h2 class="section-title">

                Recruitment Overview

            </h2>


            <p class="section-subtitle">

                Track your recruitment activities at a glance.

            </p>

        </div>

    </div>


    <div class="row g-4">


        <!-- JOBS -->

        <div class="col-xl-3 col-md-6">

            <a
                href="${pageContext.request.contextPath}/jobs"
                style="text-decoration:none;">

                <div class="stat-card">

                    <div class="stat-top">

                        <div class="stat-icon icon-blue">

                            <i class="bi bi-briefcase"></i>

                        </div>


                        <span class="stat-change">

                            +12%

                        </span>

                    </div>


                    <div class="stat-number">

                        24

                    </div>


                    <div class="stat-label">

                        Active Job Openings

                    </div>

                </div>

            </a>

        </div>


        <!-- CANDIDATES -->

        <div class="col-xl-3 col-md-6">

            <a
                href="${pageContext.request.contextPath}/candidates"
                style="text-decoration:none;">

                <div class="stat-card">

                    <div class="stat-top">

                        <div class="stat-icon icon-green">

                            <i class="bi bi-people"></i>

                        </div>


                        <span class="stat-change">

                            +18%

                        </span>

                    </div>


                    <div class="stat-number">

                        186

                    </div>


                    <div class="stat-label">

                        Total Candidates

                    </div>

                </div>

            </a>

        </div>


        <!-- APPLICATIONS -->

        <div class="col-xl-3 col-md-6">

            <a
                href="${pageContext.request.contextPath}/applications"
                style="text-decoration:none;">

                <div class="stat-card">

                    <div class="stat-top">

                        <div class="stat-icon icon-orange">

                            <i class="bi bi-file-earmark-text"></i>

                        </div>


                        <span class="stat-change">

                            +9%

                        </span>

                    </div>


                    <div class="stat-number">

                        72

                    </div>


                    <div class="stat-label">

                        New Applications

                    </div>

                </div>

            </a>

        </div>


        <!-- INTERVIEWS -->

        <div class="col-xl-3 col-md-6">

            <a
                href="${pageContext.request.contextPath}/interviews"
                style="text-decoration:none;">

                <div class="stat-card">

                    <div class="stat-top">

                        <div class="stat-icon icon-purple">

                            <i class="bi bi-calendar-check"></i>

                        </div>


                        <span class="stat-change">

                            +6%

                        </span>

                    </div>


                    <div class="stat-number">

                        18

                    </div>


                    <div class="stat-label">

                        Upcoming Interviews

                    </div>

                </div>

            </a>

        </div>


    </div>


    <!-- =================================================
         LOWER SECTION
    ================================================== -->

    <div class="row g-4 mt-2">


        <!-- =================================================
             QUICK ACTIONS
        ================================================== -->

        <div class="col-lg-4">


            <div class="section-header mt-0">

                <div>

                    <h2 class="section-title">

                        Quick Actions

                    </h2>


                    <p class="section-subtitle">

                        Common recruiter tasks.

                    </p>

                </div>

            </div>


            <div class="quick-card">


                <!-- CREATE JOB -->

                <a
                    href="${pageContext.request.contextPath}/jobs"
                    class="quick-action">


                    <div class="quick-icon">

                        <i class="bi bi-plus-lg"></i>

                    </div>


                    <div class="quick-text">

                        <strong>

                            Create Job Opening

                        </strong>


                        <span>

                            Publish a new recruitment opportunity

                        </span>

                    </div>


                </a>


                <!-- ADD CANDIDATE -->

                <a
                    href="${pageContext.request.contextPath}/candidates"
                    class="quick-action">


                    <div class="quick-icon">

                        <i class="bi bi-person-plus"></i>

                    </div>


                    <div class="quick-text">

                        <strong>

                            Add Candidate

                        </strong>


                        <span>

                            Add a candidate to your talent pool

                        </span>

                    </div>


                </a>


                <!-- SCHEDULE INTERVIEW -->

                <a
                    href="${pageContext.request.contextPath}/interviews"
                    class="quick-action">


                    <div class="quick-icon">

                        <i class="bi bi-calendar-plus"></i>

                    </div>


                    <div class="quick-text">

                        <strong>

                            Schedule Interview

                        </strong>


                        <span>

                            Organize candidate interviews

                        </span>

                    </div>


                </a>


                <!-- SEARCH CANDIDATES -->

                <a
                    href="${pageContext.request.contextPath}/candidates"
                    class="quick-action">


                    <div class="quick-icon">

                        <i class="bi bi-search"></i>

                    </div>


                    <div class="quick-text">

                        <strong>

                            Search Candidates

                        </strong>


                        <span>

                            Find suitable candidates quickly

                        </span>

                    </div>


                </a>


            </div>

        </div>


        <!-- =================================================
             RECENT ACTIVITY
        ================================================== -->

        <div class="col-lg-5">


            <div class="section-header mt-0">

                <div>

                    <h2 class="section-title">

                        Recent Activity

                    </h2>


                    <p class="section-subtitle">

                        Latest recruitment updates.

                    </p>

                </div>

            </div>


            <div class="activity-card">


                <div class="activity-item">


                    <div class="activity-icon">

                        <i class="bi bi-person-plus"></i>

                    </div>


                    <div class="activity-content">

                        <strong>

                            New candidate application received

                        </strong>


                        <span>

                            Software Developer • 10 minutes ago

                        </span>

                    </div>


                </div>


                <div class="activity-item">


                    <div class="activity-icon">

                        <i class="bi bi-calendar-check"></i>

                    </div>


                    <div class="activity-content">

                        <strong>

                            Interview scheduled

                        </strong>


                        <span>

                            Java Developer • Today

                        </span>

                    </div>


                </div>


                <div class="activity-item">


                    <div class="activity-icon">

                        <i class="bi bi-briefcase"></i>

                    </div>


                    <div class="activity-content">

                        <strong>

                            New job opening created

                        </strong>


                        <span>

                            Backend Developer • Yesterday

                        </span>

                    </div>


                </div>


                <div class="activity-item">


                    <div class="activity-icon">

                        <i class="bi bi-check-circle"></i>

                    </div>


                    <div class="activity-content">

                        <strong>

                            Candidate moved to shortlisted

                        </strong>


                        <span>

                            Full Stack Developer • Yesterday

                        </span>

                    </div>


                </div>


            </div>

        </div>


        <!-- =================================================
             PROFILE
        ================================================== -->

        <div class="col-lg-3">


            <div class="section-header mt-0">

                <div>

                    <h2 class="section-title">

                        Your Profile

                    </h2>


                    <p class="section-subtitle">

                        Account information.

                    </p>

                </div>

            </div>


            <div class="profile-card">


                <div class="profile-avatar-large">

                    <i class="bi bi-person"></i>

                </div>


                <div class="profile-name-large">

                    ${user.name}

                </div>


                <div class="profile-email">

                    ${user.email}

                </div>


                <span class="role-badge">

                    ${user.role}

                </span>


                <div class="profile-detail">


                    <div class="profile-detail-row">

                        <span>

                            Account

                        </span>


                        <span>

                            Active

                        </span>

                    </div>


                    <div class="profile-detail-row">

                        <span>

                            Platform

                        </span>


                        <span>

                            HireFlow

                        </span>

                    </div>


                </div>


                <!-- EDIT PROFILE -->

                <a
                    href="${pageContext.request.contextPath}/profile"
                    class="profile-edit-link">

                    <i class="bi bi-pencil-square"></i>

                    Edit Profile

                </a>


            </div>

        </div>


    </div>


</main>


<!-- =====================================================
     FOOTER
====================================================== -->

<footer>

    <div class="container">

        © 2026 HireFlow. All rights reserved.

        <br>

        Recruitment Management System

    </div>

</footer>


<!-- =====================================================
     BOOTSTRAP JS
====================================================== -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>