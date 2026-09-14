<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Application" %>

<%
    List<Application> applications =
            (List<Application>) request.getAttribute("applications");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <!-- ================= SEO ================= -->

    <meta
        name="description"
        content="Manage and track candidate applications with HireFlow recruitment management system. Monitor candidates, jobs, application status, interviews and recruitment progress.">

    <meta
        name="keywords"
        content="HireFlow, applications, candidate applications, recruitment management, applicant tracking system, hiring, recruitment, job applications">

    <meta
        name="author"
        content="HireFlow">

    <meta
        name="robots"
        content="index, follow">


    <title>
        Applications | HireFlow Recruitment Management
    </title>


    <!-- ================= Bootstrap ================= -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- ================= Bootstrap Icons ================= -->

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


    <!-- ================= Google Font ================= -->

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">


    <style>

        * {
            box-sizing: border-box;
        }


        body {
            margin: 0;
            background: #f8fafc;
            color: #0f172a;
            font-family: "Inter", sans-serif;
        }



        /* ==================================================
           NAVBAR
        ================================================== */

        .hireflow-navbar {
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border-bottom: 1px solid #e2e8f0;
            box-shadow: 0 4px 20px rgba(15, 23, 42, 0.06);
            padding: 12px 0;
            z-index: 1000;
        }


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
            box-shadow: 0 5px 12px rgba(37, 99, 235, 0.25);
        }


        .brand-highlight {
            color: #2563eb;
        }


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


        .navbar-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }


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
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
        }


        .profile-button::after {
            margin-left: 2px;
        }


        .profile-avatar {
            width: 32px;
            height: 32px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: linear-gradient(135deg, #2563eb, #60a5fa);
            color: white;
            font-size: 14px;
        }


        .profile-dropdown {
            min-width: 190px;
            margin-top: 10px !important;
            padding: 8px;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            box-shadow: 0 12px 35px rgba(15, 23, 42, 0.12);
            animation: dropdownAnimation 0.2s ease;
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


        .navbar-toggler {
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            padding: 6px 9px;
        }


        .navbar-toggler:focus {
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
        }


        .navbar-toggler-icon {
            width: 20px;
            height: 20px;
        }



        /* ==================================================
           PAGE
        ================================================== */

        .page-section {
            padding: 50px 0 70px;
        }


        .page-header {
            animation: fadeDown 0.6s ease both;
        }


        .page-title {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.8px;
            margin-bottom: 7px;
        }


        .page-description {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 0;
        }



        /* ==================================================
           ADD BUTTON
        ================================================== */

        .btn-add-application {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: #2563eb;
            border: none;
            color: white;
            border-radius: 9px;
            padding: 11px 17px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.25s ease;
        }


        .btn-add-application:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(37, 99, 235, 0.22);
        }



        /* ==================================================
           APPLICATION CARD
        ================================================== */

        .application-card {
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 17px;
            box-shadow: 0 10px 35px rgba(15, 23, 42, 0.06);
            overflow: hidden;
            animation: fadeUp 0.7s ease both;
        }


        .card-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            padding: 20px 22px;
            border-bottom: 1px solid #e2e8f0;
        }


        .application-count {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #475569;
            font-size: 13px;
            font-weight: 600;
        }


        .application-count i {
            color: #2563eb;
        }


        .search-box {
            position: relative;
            width: 280px;
        }


        .search-box i {
            position: absolute;
            left: 13px;
            top: 50%;
            transform: translateY(-50%);
            color: #94a3b8;
            font-size: 14px;
        }


        .search-input {
            width: 100%;
            height: 40px;
            padding: 8px 12px 8px 37px;
            border: 1px solid #dbe3ed;
            border-radius: 9px;
            outline: none;
            color: #334155;
            font-size: 13px;
            transition: all 0.25s ease;
        }


        .search-input:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
        }



        /* ==================================================
           TABLE
        ================================================== */

        .table-container {
            padding: 0;
        }


        .application-table {
            margin-bottom: 0;
        }


        .application-table thead th {
            background: #f8fafc;
            color: #64748b;
            border-bottom: 1px solid #e2e8f0;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            padding: 15px 16px;
            white-space: nowrap;
        }


        .application-table tbody td {
            color: #475569;
            font-size: 13px;
            padding: 17px 16px;
            vertical-align: middle;
            border-bottom: 1px solid #eef2f7;
        }


        .application-table tbody tr {
            transition: all 0.25s ease;
            animation: rowAnimation 0.5s ease both;
        }


        .application-table tbody tr:hover {
            background: #f8fbff;
            transform: scale(1.002);
        }


        .application-table tbody tr:last-child td {
            border-bottom: none;
        }


        .application-id {
            color: #94a3b8;
            font-weight: 600;
        }


        .candidate-name,
        .job-title {
            color: #1e293b;
            font-weight: 700;
        }


        .candidate-email {
            color: #64748b;
        }


        .location-text {
            display: inline-flex;
            align-items: center;
            gap: 5px;
        }


        .location-text i {
            color: #94a3b8;
        }



        /* ==================================================
           STATUS BADGES
        ================================================== */

        .status-badge {
            display: inline-flex;
            align-items: center;
            gap: 5px;
            border-radius: 20px;
            padding: 6px 10px;
            font-size: 11px;
            font-weight: 700;
            white-space: nowrap;
        }


        .status-applied {
            background: #eff6ff;
            color: #2563eb;
        }


        .status-shortlisted {
            background: #fff7ed;
            color: #c2410c;
        }


        .status-interview {
            background: #ecfeff;
            color: #0e7490;
        }


        .status-selected {
            background: #f0fdf4;
            color: #15803d;
        }


        .status-rejected {
            background: #fef2f2;
            color: #dc2626;
        }


        .status-default {
            background: #f1f5f9;
            color: #475569;
        }



        /* ==================================================
           ACTION BUTTONS
        ================================================== */

        .action-buttons {
            display: flex;
            align-items: center;
            gap: 6px;
        }


        .btn-edit {
            width: 34px;
            height: 34px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #fde68a;
            border-radius: 8px;
            background: #fffbeb;
            color: #d97706;
            text-decoration: none;
            transition: all 0.2s ease;
        }


        .btn-edit:hover {
            background: #fef3c7;
            color: #b45309;
            transform: translateY(-2px);
        }


        .btn-delete {
            width: 34px;
            height: 34px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #fecaca;
            border-radius: 8px;
            background: #fef2f2;
            color: #dc2626;
            text-decoration: none;
            transition: all 0.2s ease;
        }


        .btn-delete:hover {
            background: #fee2e2;
            color: #b91c1c;
            transform: translateY(-2px);
        }



        /* ==================================================
           NOTES
        ================================================== */

        .notes-text {
            max-width: 180px;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }



        /* ==================================================
           EMPTY STATE
        ================================================== */

        .empty-state {
            padding: 70px 20px;
            text-align: center;
            animation: fadeUp 0.7s ease both;
        }


        .empty-icon {
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            border-radius: 18px;
            background: #eff6ff;
            color: #2563eb;
            font-size: 28px;
            animation: floatingIcon 2.5s ease-in-out infinite;
        }


        .empty-state h5 {
            color: #1e293b;
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 8px;
        }


        .empty-state p {
            color: #64748b;
            font-size: 13px;
            margin-bottom: 20px;
        }



        /* ==================================================
           ANIMATIONS
        ================================================== */

        @keyframes fadeUp {

            from {
                opacity: 0;
                transform: translateY(25px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        @keyframes fadeDown {

            from {
                opacity: 0;
                transform: translateY(-15px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        @keyframes rowAnimation {

            from {
                opacity: 0;
                transform: translateX(-12px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }

        }


        @keyframes floatingIcon {

            0%,
            100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-6px);
            }

        }



        /* ==================================================
           RESPONSIVE
        ================================================== */

        @media (max-width: 1200px) {

            .main-navigation .nav-link {
                padding-left: 10px !important;
                padding-right: 10px !important;
            }

        }


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


            .page-section {
                padding-top: 40px;
            }

        }


        @media (max-width: 768px) {

            .page-title {
                font-size: 27px;
            }


            .page-header {
                margin-bottom: 25px;
            }


            .card-toolbar {
                flex-direction: column;
                align-items: stretch;
            }


            .search-box {
                width: 100%;
            }

        }


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


            .page-section {
                padding: 30px 0 50px;
            }


            .page-title {
                font-size: 24px;
            }


            .btn-add-application {
                width: 100%;
                justify-content: center;
            }


            .application-card {
                border-radius: 13px;
            }

        }

    </style>

</head>


<body>



<!-- ==================================================
     NAVBAR
================================================== -->

<nav class="navbar navbar-expand-lg hireflow-navbar sticky-top">

    <div class="container">


        <!-- Brand -->

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



        <!-- Mobile Toggle -->

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



        <!-- Navigation -->

        <div
            class="collapse navbar-collapse"
            id="hireflowNavbar">


            <ul class="navbar-nav mx-auto mb-2 mb-lg-0 main-navigation">


                <!-- Dashboard -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/dashboard">

                        <i class="bi bi-grid-1x2-fill"></i>

                        <span>Dashboard</span>

                    </a>

                </li>



                <!-- Jobs -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/jobs">

                        <i class="bi bi-briefcase"></i>

                        <span>Jobs</span>

                    </a>

                </li>



                <!-- Candidates -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/candidates">

                        <i class="bi bi-people-fill"></i>

                        <span>Candidates</span>

                    </a>

                </li>



                <!-- Applications -->

                <li class="nav-item">

                    <a
                        class="nav-link active"
                        href="${pageContext.request.contextPath}/applications">

                        <i class="bi bi-file-earmark-text"></i>

                        <span>Applications</span>

                    </a>

                </li>



                <!-- Interviews -->

                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/interviews">

                        <i class="bi bi-calendar-event"></i>

                        <span>Interviews</span>

                    </a>

                </li>


            </ul>



            <!-- Profile -->

            <div class="navbar-actions">

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


                        <li>

                            <a
                                class="dropdown-item"
                                href="${pageContext.request.contextPath}/profile">

                                <i class="bi bi-person me-2"></i>

                                My Profile

                            </a>

                        </li>


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



<!-- ==================================================
     MAIN CONTENT
================================================== -->

<main>

    <section class="page-section">

        <div class="container">


            <!-- ================= PAGE HEADER ================= -->

            <div
                class="page-header d-flex justify-content-between align-items-center mb-4">

                <div>

                    <h1 class="page-title">
                        Applications
                    </h1>

                    <p class="page-description">
                        Track candidate applications and monitor
                        recruitment progress from one place.
                    </p>

                </div>


                <a
                    href="${pageContext.request.contextPath}/applications/add"
                    class="btn-add-application">

                    <i class="bi bi-plus-lg"></i>

                    Add Application

                </a>

            </div>



            <!-- ================= APPLICATION CARD ================= -->

            <div class="application-card">


                <!-- Toolbar -->

                <div class="card-toolbar">


                    <div class="application-count">

                        <i class="bi bi-file-earmark-person"></i>

                        <span>
                            Application Records
                        </span>

                    </div>


                    <!-- Search -->

                    <div class="search-box">

                        <i class="bi bi-search"></i>

                        <input
                            type="search"
                            id="applicationSearch"
                            class="search-input"
                            placeholder="Search applications...">

                    </div>


                </div>



                <% if (applications == null || applications.isEmpty()) { %>


                    <!-- ================= EMPTY STATE ================= -->

                    <div class="empty-state">


                        <div class="empty-icon">

                            <i class="bi bi-file-earmark-text"></i>

                        </div>


                        <h5>
                            No applications found
                        </h5>


                        <p>
                            Start by creating a new candidate application
                            in your recruitment pipeline.
                        </p>


                        <a
                            href="${pageContext.request.contextPath}/applications/add"
                            class="btn-add-application">

                            <i class="bi bi-plus-lg"></i>

                            Add Application

                        </a>


                    </div>


                <% } else { %>


                    <!-- ================= APPLICATION TABLE ================= -->

                    <div class="table-responsive table-container">


                        <table
                            class="table application-table"
                            id="applicationsTable">


                            <thead>

                            <tr>

                                <th>ID</th>

                                <th>Candidate</th>

                                <th>Email</th>

                                <th>Job</th>

                                <th>Location</th>

                                <th>Status</th>

                                <th>Applied At</th>

                                <th>Notes</th>

                                <th>Actions</th>

                            </tr>

                            </thead>



                            <tbody>


                            <%
                                int rowIndex = 0;

                                for (Application app : applications) {

                                    String status = app.getStatus();

                                    String statusClass = "status-default";


                                    if ("APPLIED".equals(status)) {

                                        statusClass = "status-applied";

                                    }
                                    else if ("SHORTLISTED".equals(status)) {

                                        statusClass = "status-shortlisted";

                                    }
                                    else if ("INTERVIEW".equals(status)) {

                                        statusClass = "status-interview";

                                    }
                                    else if ("SELECTED".equals(status)) {

                                        statusClass = "status-selected";

                                    }
                                    else if ("REJECTED".equals(status)) {

                                        statusClass = "status-rejected";

                                    }

                                    rowIndex++;
                            %>


                            <tr
                                style="animation-delay: <%= rowIndex * 0.04 %>s;">


                                <!-- ID -->

                                <td>

                                    <span class="application-id">

                                        #<%= app.getId() %>

                                    </span>

                                </td>



                                <!-- Candidate -->

                                <td>

                                    <span class="candidate-name">

                                        <%= app.getCandidate() != null
                                                ? app.getCandidate().getName()
                                                : "-" %>

                                    </span>

                                </td>



                                <!-- Email -->

                                <td>

                                    <span class="candidate-email">

                                        <%= app.getCandidate() != null
                                                ? app.getCandidate().getEmail()
                                                : "-" %>

                                    </span>

                                </td>



                                <!-- Job -->

                                <td>

                                    <span class="job-title">

                                        <%= app.getJob() != null
                                                ? app.getJob().getTitle()
                                                : "-" %>

                                    </span>

                                </td>



                                <!-- Location -->

                                <td>

                                    <span class="location-text">

                                        <i class="bi bi-geo-alt"></i>

                                        <%= app.getJob() != null
                                                && app.getJob().getLocation() != null
                                                ? app.getJob().getLocation()
                                                : "-" %>

                                    </span>

                                </td>



                                <!-- Status -->

                                <td>

                                    <span
                                        class="status-badge <%= statusClass %>">

                                        <i class="bi bi-circle-fill"
                                           style="font-size: 6px;"></i>

                                        <%= status != null
                                                ? status
                                                : "UNKNOWN" %>

                                    </span>

                                </td>



                                <!-- Applied At -->

                                <td>

                                    <%= app.getAppliedAt() != null
                                            ? app.getAppliedAt()
                                            : "-" %>

                                </td>



                                <!-- Notes -->

                                <td>

                                    <span class="notes-text"
                                          title="<%= app.getNotes() != null
                                                  ? app.getNotes()
                                                  : "-" %>">

                                        <%= app.getNotes() != null
                                                ? app.getNotes()
                                                : "-" %>

                                    </span>

                                </td>



                                <!-- Actions -->

                                <td>

                                    <div class="action-buttons">


                                        <a
                                            href="${pageContext.request.contextPath}/applications/edit/<%= app.getId() %>"
                                            class="btn-edit"
                                            title="Edit Application"
                                            aria-label="Edit Application">

                                            <i class="bi bi-pencil"></i>

                                        </a>


                                        <a
                                            href="${pageContext.request.contextPath}/applications/delete/<%= app.getId() %>"
                                            class="btn-delete"
                                            title="Delete Application"
                                            aria-label="Delete Application"
                                            onclick="return confirm('Are you sure you want to delete this application?');">

                                            <i class="bi bi-trash3"></i>

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

    </section>

</main>



<!-- ================= Bootstrap JS ================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>



<!-- ================= Application Search ================= -->

<script>

    const searchInput =
        document.getElementById("applicationSearch");

    if (searchInput) {

        searchInput.addEventListener("input", function () {

            const searchValue =
                this.value.toLowerCase().trim();

            const rows =
                document.querySelectorAll(
                    "#applicationsTable tbody tr"
                );


            rows.forEach(function (row) {

                const rowText =
                    row.textContent.toLowerCase();

                if (rowText.includes(searchValue)) {

                    row.style.display = "";

                } else {

                    row.style.display = "none";

                }

            });

        });

    }

</script>


</body>

</html>