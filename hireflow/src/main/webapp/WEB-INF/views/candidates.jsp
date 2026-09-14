<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Candidate" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <!-- =====================================================
         SEO
    ====================================================== -->

    <title>Candidates | HireFlow Recruitment Management</title>

    <meta name="description"
          content="Manage, track and organize candidates throughout the hiring process with HireFlow recruitment management system.">

    <meta name="keywords"
          content="HireFlow, candidate management, recruitment management, applicant tracking, hiring, candidates">

    <meta name="author"
          content="HireFlow">

    <meta name="robots"
          content="index, follow">


    <!-- =====================================================
         BOOTSTRAP
    ====================================================== -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- =====================================================
         BOOTSTRAP ICONS
    ====================================================== -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">


    <!-- =====================================================
         GOOGLE FONT
    ====================================================== -->

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">


    <style>

        /* =====================================================
           GLOBAL
        ===================================================== */

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {

            margin: 0;

            font-family: 'Inter', sans-serif;

            background:
                linear-gradient(
                    135deg,
                    #f8fafc 0%,
                    #eef4ff 100%
                );

            color: #1e293b;

            min-height: 100vh;
        }


        /* =====================================================
           HIREFLOW NAVBAR
        ===================================================== */

        .hireflow-navbar {

            background: rgba(255, 255, 255, 0.96);

            backdrop-filter: blur(14px);

            -webkit-backdrop-filter: blur(14px);

            border-bottom: 1px solid #e2e8f0;

            box-shadow:
                0 4px 20px rgba(15, 23, 42, 0.06);

            padding: 12px 0;

            z-index: 1000;
        }


        /* =====================================================
           BRAND
        ===================================================== */

        .hireflow-brand {

            display: flex;

            align-items: center;

            gap: 9px;

            color: #0f172a !important;

            font-size: 24px;

            font-weight: 800;

            letter-spacing: -0.7px;

            text-decoration: none;

            transition: all 0.3s ease;
        }

        .hireflow-brand:hover {

            transform: translateY(-1px);
        }


        .brand-icon {

            width: 38px;

            height: 38px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 10px;

            background: #2563eb;

            color: white;

            font-size: 18px;

            box-shadow:
                0 5px 12px rgba(37, 99, 235, 0.25);
        }


        .brand-highlight {

            color: #2563eb;
        }


        /* =====================================================
           MAIN NAVIGATION
        ===================================================== */

        .main-navigation {

            gap: 4px;
        }


        .main-navigation .nav-link {

            position: relative;

            display: flex;

            align-items: center;

            gap: 7px;

            color: #64748b;

            font-size: 14px;

            font-weight: 600;

            padding: 10px 13px !important;

            border-radius: 9px;

            transition: all 0.25s ease;
        }


        .main-navigation .nav-link i {

            font-size: 15px;
        }


        .main-navigation .nav-link:hover {

            color: #2563eb;

            background: #eff6ff;
        }


        /* =====================================================
           ACTIVE CANDIDATES
        ===================================================== */

        .main-navigation .nav-link.active {

            color: #2563eb;

            background: #eff6ff;
        }


        .main-navigation .nav-link.active::after {

            content: "";

            position: absolute;

            left: 13px;

            right: 13px;

            bottom: 3px;

            height: 2px;

            border-radius: 5px;

            background: #2563eb;
        }


        /* =====================================================
           NAVBAR RIGHT SIDE
        ===================================================== */

        .navbar-actions {

            display: flex;

            align-items: center;

            gap: 10px;
        }


        /* =====================================================
           PROFILE BUTTON
        ===================================================== */

        .profile-button {

            display: flex;

            align-items: center;

            gap: 7px;

            background: #f8fafc;

            border: 1px solid #e2e8f0;

            color: #334155;

            border-radius: 9px;

            padding: 5px 10px 5px 6px;

            font-size: 13px;

            font-weight: 600;

            transition: all 0.25s ease;
        }


        .profile-button:hover {

            background: #f1f5f9;

            border-color: #cbd5e1;
        }


        .profile-button:focus {

            box-shadow:
                0 0 0 3px rgba(37, 99, 235, 0.10);
        }


        .profile-button::after {

            margin-left: 2px;
        }


        /* =====================================================
           PROFILE AVATAR
        ===================================================== */

        .profile-avatar {

            width: 32px;

            height: 32px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 50%;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #60a5fa
                );

            color: white;

            font-size: 14px;
        }


        /* =====================================================
           PROFILE DROPDOWN
        ===================================================== */

        .profile-dropdown {

            min-width: 190px;

            margin-top: 10px !important;

            padding: 8px;

            border: 1px solid #e2e8f0;

            border-radius: 12px;

            box-shadow:
                0 12px 35px rgba(15, 23, 42, 0.12);

            animation:
                dropdownAnimation 0.2s ease;
        }


        @keyframes dropdownAnimation {

            from {

                opacity: 0;

                transform: translateY(-5px);
            }

            to {

                opacity: 1;

                transform: translateY(0);
            }
        }


        .profile-dropdown .dropdown-item {

            padding: 10px 12px;

            border-radius: 8px;

            color: #475569;

            font-size: 14px;

            font-weight: 500;

            transition: 0.2s ease;
        }


        .profile-dropdown .dropdown-item:hover {

            background: #eff6ff;

            color: #2563eb;
        }


        .profile-dropdown .dropdown-item i {

            width: 18px;
        }


        .profile-dropdown .logout-item {

            color: #dc2626;
        }


        .profile-dropdown .logout-item:hover {

            background: #fef2f2;

            color: #dc2626;
        }


        /* =====================================================
           MOBILE NAVBAR
        ===================================================== */

        .navbar-toggler {

            border: 1px solid #e2e8f0;

            border-radius: 8px;

            padding: 6px 9px;
        }


        .navbar-toggler:focus {

            box-shadow:
                0 0 0 3px rgba(37, 99, 235, 0.10);
        }


        .navbar-toggler-icon {

            width: 20px;

            height: 20px;
        }


        /* =====================================================
           MAIN CONTAINER
        ===================================================== */

        .main-container {

            animation:
                pageFadeIn 0.7s ease;
        }


        @keyframes pageFadeIn {

            from {

                opacity: 0;

                transform: translateY(20px);
            }

            to {

                opacity: 1;

                transform: translateY(0);
            }
        }


        /* =====================================================
           PAGE HEADER
        ===================================================== */

        .page-header {

            display: flex;

            justify-content: space-between;

            align-items: center;

            gap: 20px;

            margin-bottom: 25px;
        }


        .page-title {

            font-size: 30px;

            font-weight: 800;

            color: #0f172a;

            margin-bottom: 5px;

            letter-spacing: -0.8px;
        }


        .page-subtitle {

            color: #64748b;

            font-size: 15px;
        }


        /* =====================================================
           ADD CANDIDATE PAGE BUTTON
        ===================================================== */

        .add-btn {

            background: #2563eb;

            border: none;

            border-radius: 10px;

            padding: 11px 18px;

            font-weight: 600;

            box-shadow:
                0 6px 16px rgba(37, 99, 235, 0.25);

            transition: all 0.3s ease;
        }


        .add-btn:hover {

            background: #1d4ed8;

            transform: translateY(-3px);

            box-shadow:
                0 10px 22px rgba(37, 99, 235, 0.30);
        }


        /* =====================================================
           INFO CARD
        ===================================================== */

        .info-card {

            background: rgba(255, 255, 255, 0.90);

            border: 1px solid #e2e8f0;

            border-radius: 14px;

            padding: 18px 20px;

            margin-bottom: 20px;

            box-shadow:
                0 5px 20px rgba(15, 23, 42, 0.05);

            animation:
                slideUp 0.7s ease;
        }


        .info-icon {

            width: 45px;

            height: 45px;

            border-radius: 12px;

            display: flex;

            align-items: center;

            justify-content: center;

            background: #eff6ff;

            color: #2563eb;

            font-size: 20px;
        }


        .info-number {

            font-size: 22px;

            font-weight: 800;

            color: #0f172a;
        }


        .info-label {

            color: #64748b;

            font-size: 13px;
        }


        /* =====================================================
           SEARCH
        ===================================================== */

        .search-box {

            position: relative;

            max-width: 330px;
        }


        .search-box i {

            position: absolute;

            left: 14px;

            top: 50%;

            transform: translateY(-50%);

            color: #94a3b8;

            pointer-events: none;
        }


        .search-box input {

            width: 100%;

            padding: 11px 15px 11px 40px;

            border: 1px solid #e2e8f0;

            border-radius: 10px;

            outline: none;

            font-size: 14px;

            color: #334155;

            transition: all 0.3s ease;
        }


        .search-box input:focus {

            border-color: #2563eb;

            box-shadow:
                0 0 0 3px rgba(37, 99, 235, 0.10);
        }


        /* =====================================================
           CANDIDATE CARD
        ===================================================== */

        .candidate-card {

            border: none;

            border-radius: 16px;

            overflow: hidden;

            background: #ffffff;

            box-shadow:
                0 10px 35px rgba(15, 23, 42, 0.08);

            animation:
                slideUp 0.8s ease;
        }


        @keyframes slideUp {

            from {

                opacity: 0;

                transform: translateY(25px);
            }

            to {

                opacity: 1;

                transform: translateY(0);
            }
        }


        /* =====================================================
           CARD HEADER
        ===================================================== */

        .candidate-card-header {

            padding: 20px 22px;

            border-bottom: 1px solid #eef2f7;

            display: flex;

            justify-content: space-between;

            align-items: center;

            gap: 15px;
        }


        .candidate-card-title {

            font-weight: 700;

            color: #0f172a;

            margin: 0;
        }


        /* =====================================================
           TABLE
        ===================================================== */

        .table {

            margin-bottom: 0;
        }


        .table thead th {

            background: #f8fafc;

            color: #475569;

            font-size: 12px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 0.5px;

            padding: 15px 16px;

            border-bottom: 1px solid #e2e8f0;

            white-space: nowrap;
        }


        .table tbody tr {

            transition: all 0.25s ease;

            animation:
                rowFade 0.5s ease both;
        }


        .table tbody tr:hover {

            background: #f8fbff;

            transform: scale(1.002);
        }


        .table td {

            padding: 16px;

            vertical-align: middle;

            border-bottom: 1px solid #f1f5f9;

            color: #475569;

            font-size: 14px;
        }


        @keyframes rowFade {

            from {

                opacity: 0;

                transform: translateX(-10px);
            }

            to {

                opacity: 1;

                transform: translateX(0);
            }
        }


        /* =====================================================
           CANDIDATE PROFILE
        ===================================================== */

        .candidate-profile {

            display: flex;

            align-items: center;

            gap: 11px;

            min-width: 170px;
        }


        .candidate-avatar {

            width: 40px;

            height: 40px;

            border-radius: 50%;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #60a5fa
                );

            color: white;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 14px;

            font-weight: 700;

            flex-shrink: 0;

            box-shadow:
                0 4px 10px rgba(37, 99, 235, 0.20);
        }


        .candidate-name {

            font-weight: 700;

            color: #0f172a;
        }


        /* =====================================================
           SKILLS
        ===================================================== */

        .skills-text {

            max-width: 180px;

            overflow: hidden;

            text-overflow: ellipsis;

            white-space: nowrap;
        }


        /* =====================================================
           STATUS
        ===================================================== */

        .status-badge {

            display: inline-flex;

            align-items: center;

            gap: 6px;

            padding: 6px 10px;

            border-radius: 20px;

            font-size: 11px;

            font-weight: 700;

            letter-spacing: 0.2px;

            white-space: nowrap;
        }


        .status-dot {

            width: 6px;

            height: 6px;

            border-radius: 50%;

            background: currentColor;
        }


        /* =====================================================
           ACTION BUTTONS
        ===================================================== */

        .action-btn {

            border: none;

            width: 34px;

            height: 34px;

            border-radius: 8px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            text-decoration: none;

            transition: all 0.25s ease;
        }


        .edit-btn {

            background: #fff7ed;

            color: #ea580c;
        }


        .edit-btn:hover {

            background: #ea580c;

            color: white;

            transform: translateY(-2px);
        }


        .delete-btn {

            background: #fef2f2;

            color: #dc2626;
        }


        .delete-btn:hover {

            background: #dc2626;

            color: white;

            transform: translateY(-2px);
        }


        /* =====================================================
           EMPTY STATE
        ===================================================== */

        .empty-state {

            padding: 70px 20px;

            text-align: center;
        }


        .empty-icon {

            width: 75px;

            height: 75px;

            margin: 0 auto 18px;

            border-radius: 50%;

            background: #eff6ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 32px;

            animation:
                floatIcon 2.5s ease-in-out infinite;
        }


        @keyframes floatIcon {

            0%,
            100% {

                transform: translateY(0);
            }

            50% {

                transform: translateY(-8px);
            }
        }


        .empty-title {

            font-weight: 700;

            color: #334155;
        }


        .empty-text {

            color: #94a3b8;

            font-size: 14px;

            margin-bottom: 20px;
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        .page-footer {

            text-align: center;

            color: #94a3b8;

            font-size: 13px;

            padding: 30px 0;
        }


        /* =====================================================
           TABLET
        ===================================================== */

        @media (max-width: 1200px) {

            .main-navigation .nav-link {

                padding-left: 10px !important;

                padding-right: 10px !important;
            }
        }


        /* =====================================================
           MOBILE NAVBAR
        ===================================================== */

        @media (max-width: 991px) {

            .hireflow-navbar {

                padding: 10px 0;
            }


            .navbar-collapse {

                margin-top: 15px;

                padding-top: 12px;

                border-top: 1px solid #e2e8f0;
            }


            .main-navigation {

                gap: 3px;
            }


            .main-navigation .nav-link {

                padding: 11px 13px !important;
            }


            .main-navigation .nav-link.active::after {

                display: none;
            }


            .navbar-actions {

                margin-top: 12px;

                padding-top: 12px;

                border-top: 1px solid #e2e8f0;

                justify-content: flex-start;

                flex-wrap: wrap;
            }
        }


        /* =====================================================
           MOBILE CONTENT
        ===================================================== */

        @media (max-width: 768px) {

            .main-container {

                margin-top: 30px !important;
            }


            .page-header {

                flex-direction: column;

                align-items: flex-start;
            }


            .page-header .add-btn {

                width: 100%;
            }


            .candidate-card-header {

                flex-direction: column;

                align-items: stretch;
            }


            .search-box {

                max-width: 100%;
            }


            .page-title {

                font-size: 25px;
            }


            .page-subtitle {

                font-size: 14px;
            }
        }


        /* =====================================================
           SMALL MOBILE
        ===================================================== */

        @media (max-width: 576px) {

            .hireflow-brand {

                font-size: 21px;
            }


            .brand-icon {

                width: 34px;

                height: 34px;
            }


            .navbar-actions {

                flex-direction: column;

                align-items: stretch;
            }


            .profile-button {

                justify-content: center;
            }


            .candidate-card {

                border-radius: 12px;
            }


            .info-card {

                padding: 16px;
            }
        }

    </style>

</head>


<body>


<!-- =====================================================
     HIREFLOW NAVBAR
===================================================== -->

<nav class="navbar navbar-expand-lg hireflow-navbar sticky-top">

    <div class="container">


        <!-- =================================================
             BRAND
        ================================================== -->

        <a
            class="navbar-brand hireflow-brand"
            href="${pageContext.request.contextPath}/dashboard">

            <span class="brand-icon">

                <i class="bi bi-briefcase-fill"></i>

            </span>


            <span>

                Hire<span class="brand-highlight">Flow</span>

            </span>

        </a>


        <!-- =================================================
             MOBILE TOGGLE
        ================================================== -->

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#hireflowNavbar"
            aria-controls="hireflowNavbar"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>


        <!-- =================================================
             NAVBAR CONTENT
        ================================================== -->

        <div
            class="collapse navbar-collapse"
            id="hireflowNavbar">


            <!-- =================================================
                 MAIN NAVIGATION
            ================================================== -->

            <ul class="navbar-nav mx-auto mb-2 mb-lg-0 main-navigation">


                <!-- DASHBOARD -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/dashboard">

                        <i class="bi bi-grid-1x2-fill"></i>

                        <span>Dashboard</span>

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


                <!-- CANDIDATES ACTIVE -->

                <li class="nav-item">

                    <a
                        class="nav-link active"
                        href="${pageContext.request.contextPath}/candidates">

                        <i class="bi bi-people-fill"></i>

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


            <!-- =================================================
                 RIGHT SIDE - PROFILE ONLY
            ================================================== -->

            <div class="navbar-actions">


                <!-- PROFILE DROPDOWN -->

                <div class="dropdown">

                    <button
                        class="profile-button dropdown-toggle"
                        type="button"
                        data-bs-toggle="dropdown"
                        aria-expanded="false">

                        <span class="profile-avatar">

                            <i class="bi bi-person-fill"></i>

                        </span>


                        <span class="profile-text">

                            Profile

                        </span>

                    </button>


                    <ul
                        class="dropdown-menu dropdown-menu-end profile-dropdown">


                        <!-- MY PROFILE -->

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
                                class="dropdown-item logout-item"
                                href="${pageContext.request.contextPath}/logout">

                                <i class="bi bi-box-arrow-right me-2"></i>

                                Logout

                            </a>

                        </li>

                    </ul>

                </div>

            </div>

        </div>

    </div>

</nav>


<!-- =====================================================
     MAIN CONTENT
===================================================== -->

<div class="container main-container mt-5">


    <!-- =================================================
         PAGE HEADER
    ================================================== -->

    <div class="page-header">

        <div>

            <h1 class="page-title">

                Candidate Management

            </h1>


            <p class="page-subtitle mb-0">

                Manage, track and organize candidates throughout the hiring process.

            </p>

        </div>


        <!-- ADD CANDIDATE REMAINS HERE -->

        <a
            href="${pageContext.request.contextPath}/candidates/add"
            class="btn btn-primary add-btn">

            <i class="bi bi-plus-lg me-1"></i>

            Add Candidate

        </a>

    </div>


    <!-- =================================================
         GET CANDIDATES
    ================================================== -->

    <%

        List<Candidate> candidates =
                (List<Candidate>) request.getAttribute("candidates");


        int candidateCount =
                candidates != null
                ? candidates.size()
                : 0;

    %>


    <!-- =================================================
         TOTAL CANDIDATES
    ================================================== -->

    <div class="info-card">

        <div class="d-flex align-items-center gap-3">

            <div class="info-icon">

                <i class="bi bi-people-fill"></i>

            </div>


            <div>

                <div class="info-number">

                    <%= candidateCount %>

                </div>


                <div class="info-label">

                    Total Candidates

                </div>

            </div>

        </div>

    </div>


    <!-- =================================================
         CANDIDATE TABLE CARD
    ================================================== -->

    <div class="candidate-card">


        <!-- CARD HEADER -->

        <div class="candidate-card-header">

            <div>

                <h5 class="candidate-card-title">

                    <i class="bi bi-people me-2 text-primary"></i>

                    Candidate List

                </h5>


                <small class="text-muted">

                    View and manage all applicants

                </small>

            </div>


            <!-- SEARCH -->

            <div class="search-box">

                <i class="bi bi-search"></i>


                <input
                    type="text"
                    id="candidateSearch"
                    placeholder="Search candidates..."
                    aria-label="Search candidates">

            </div>

        </div>


        <!-- CARD BODY -->

        <div class="card-body p-0">


            <% if (candidates == null || candidates.isEmpty()) { %>


                <!-- EMPTY STATE -->

                <div class="empty-state">

                    <div class="empty-icon">

                        <i class="bi bi-person-plus"></i>

                    </div>


                    <h5 class="empty-title">

                        No candidates found

                    </h5>


                    <p class="empty-text">

                        Start building your talent pool by adding your first candidate.

                    </p>


                    <a
                        href="${pageContext.request.contextPath}/candidates/add"
                        class="btn btn-primary add-btn">

                        <i class="bi bi-person-plus-fill me-1"></i>

                        Add First Candidate

                    </a>

                </div>


            <% } else { %>


                <!-- TABLE -->

                <div class="table-responsive">

                    <table
                        class="table table-hover"
                        id="candidateTable">


                        <thead>

                        <tr>

                            <th>ID</th>

                            <th>Candidate</th>

                            <th>Email</th>

                            <th>Phone</th>

                            <th>Skills</th>

                            <th>Experience</th>

                            <th>Location</th>

                            <th>Status</th>

                            <th>Actions</th>

                        </tr>

                        </thead>


                        <tbody>


                        <%

                            int rowIndex = 0;


                            for (Candidate candidate : candidates) {

                                rowIndex++;


                                String name =
                                        candidate.getName() != null
                                        ? candidate.getName()
                                        : "Candidate";


                                String initial =
                                        name.trim().isEmpty()
                                        ? "C"
                                        : name.trim()
                                              .substring(0, 1)
                                              .toUpperCase();


                                String status =
                                        candidate.getStatus();


                                if (status == null ||
                                    status.trim().isEmpty()) {

                                    status = "UNKNOWN";

                                }


                                String badgeClass =
                                        "bg-secondary-subtle text-secondary";


                                if ("APPLIED"
                                        .equalsIgnoreCase(status)) {

                                    badgeClass =
                                        "bg-primary-subtle text-primary";

                                }

                                else if ("SHORTLISTED"
                                        .equalsIgnoreCase(status)) {

                                    badgeClass =
                                        "bg-warning-subtle text-warning-emphasis";

                                }

                                else if ("INTERVIEW"
                                        .equalsIgnoreCase(status)) {

                                    badgeClass =
                                        "bg-info-subtle text-info-emphasis";

                                }

                                else if ("SELECTED"
                                        .equalsIgnoreCase(status)) {

                                    badgeClass =
                                        "bg-success-subtle text-success";

                                }

                                else if ("REJECTED"
                                        .equalsIgnoreCase(status)) {

                                    badgeClass =
                                        "bg-danger-subtle text-danger";

                                }

                        %>


                        <!-- CANDIDATE ROW -->

                        <tr
                            class="candidate-row"
                            style="animation-delay: <%= rowIndex * 0.05 %>s;">


                            <!-- ID -->

                            <td>

                                <span class="fw-semibold text-muted">

                                    #<%= candidate.getId() %>

                                </span>

                            </td>


                            <!-- CANDIDATE -->

                            <td>

                                <div class="candidate-profile">

                                    <div class="candidate-avatar">

                                        <%= initial %>

                                    </div>


                                    <div>

                                        <div class="candidate-name">

                                            <%= name %>

                                        </div>


                                        <small class="text-muted">

                                            Candidate

                                        </small>

                                    </div>

                                </div>

                            </td>


                            <!-- EMAIL -->

                            <td>

                                <i class="bi bi-envelope me-1 text-muted"></i>

                                <%= candidate.getEmail() != null
                                        ? candidate.getEmail()
                                        : "-" %>

                            </td>


                            <!-- PHONE -->

                            <td>

                                <i class="bi bi-telephone me-1 text-muted"></i>

                                <%= candidate.getPhone() != null
                                        ? candidate.getPhone()
                                        : "-" %>

                            </td>


                            <!-- SKILLS -->

                            <td>

                                <div
                                    class="skills-text"
                                    title="<%= candidate.getSkills() != null
                                            ? candidate.getSkills()
                                            : "-" %>">

                                    <%= candidate.getSkills() != null
                                            ? candidate.getSkills()
                                            : "-" %>

                                </div>

                            </td>


                            <!-- EXPERIENCE -->

                            <td>

                                <%= candidate.getExperience() != null
                                        ? candidate.getExperience()
                                        : "-" %>

                            </td>


                            <!-- LOCATION -->

                            <td>

                                <i class="bi bi-geo-alt me-1 text-muted"></i>

                                <%= candidate.getLocation() != null
                                        ? candidate.getLocation()
                                        : "-" %>

                            </td>


                            <!-- STATUS -->

                            <td>

                                <span
                                    class="status-badge <%= badgeClass %>">

                                    <span class="status-dot"></span>

                                    <%= status %>

                                </span>

                            </td>


                            <!-- ACTIONS -->

                            <td>

                                <div class="d-flex gap-2">


                                    <!-- EDIT -->

                                    <a
                                        href="${pageContext.request.contextPath}/candidates/edit/<%= candidate.getId() %>"
                                        class="action-btn edit-btn"
                                        title="Edit Candidate">

                                        <i class="bi bi-pencil-fill"></i>

                                    </a>


                                    <!-- DELETE -->

                                    <a
                                        href="${pageContext.request.contextPath}/candidates/delete/<%= candidate.getId() %>"
                                        class="action-btn delete-btn"
                                        title="Delete Candidate"
                                        onclick="return confirm('Are you sure you want to delete this candidate?');">

                                        <i class="bi bi-trash-fill"></i>

                                    </a>

                                </div>

                            </td>


                        </tr>


                        <%

                            }

                        %>


                        </tbody>

                    </table>

                </div>


            <% } %>


        </div>

    </div>


    <!-- =================================================
         FOOTER
    ================================================== -->

    <div class="page-footer">

        <i class="bi bi-shield-check me-1"></i>

        HireFlow Recruitment Management System

    </div>


</div>


<!-- =====================================================
     SEARCH SCRIPT
===================================================== -->

<script>

    const searchInput =
        document.getElementById("candidateSearch");


    if (searchInput) {

        searchInput.addEventListener("keyup", function () {

            const searchValue =
                this.value.toLowerCase().trim();


            const rows =
                document.querySelectorAll(".candidate-row");


            rows.forEach(function (row) {

                const rowText =
                    row.innerText.toLowerCase();


                if (rowText.includes(searchValue)) {

                    row.style.display = "";

                } else {

                    row.style.display = "none";

                }

            });

        });

    }

</script>


<!-- =====================================================
     BOOTSTRAP JAVASCRIPT
===================================================== -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>