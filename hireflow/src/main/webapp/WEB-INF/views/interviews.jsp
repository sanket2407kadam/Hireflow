<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Interview" %>

<%
    List<Interview> interviews =
            (List<Interview>) request.getAttribute("interviews");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <!-- SEO -->
    <title>Interviews | HireFlow Recruitment Management System</title>

    <meta name="description"
          content="Manage candidate interviews, interview schedules, feedback, interview rounds and recruitment decisions with HireFlow.">

    <meta name="keywords"
          content="HireFlow, recruitment interviews, candidate interviews, interview scheduling, recruitment management system, HR interview management">

    <meta name="author"
          content="HireFlow">

    <meta name="robots"
          content="index, follow">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Google Font -->
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


        /* =====================================================
           NAVBAR
        ===================================================== */

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


        /* NAVIGATION */

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
            transform: translateY(-1px);
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


        /* PROFILE */

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


        /* MOBILE NAVBAR */

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


        /* =====================================================
           PAGE
        ===================================================== */

        .page-section {
            padding: 45px 0 60px;
            animation: pageFadeIn 0.6s ease;
        }

        @keyframes pageFadeIn {

            from {
                opacity: 0;
                transform: translateY(15px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        /* PAGE HEADER */

        .page-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 28px;
            animation: headerAnimation 0.7s ease;
        }

        @keyframes headerAnimation {

            from {
                opacity: 0;
                transform: translateY(-12px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }

        .page-title {
            font-size: 30px;
            font-weight: 800;
            letter-spacing: -0.8px;
            margin-bottom: 7px;
        }

        .page-description {
            color: #64748b;
            font-size: 14px;
            margin: 0;
        }


        /* ADD BUTTON */

        .btn-schedule {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: #2563eb;
            border: none;
            color: white;
            padding: 11px 18px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            box-shadow: 0 5px 14px rgba(37, 99, 235, 0.20);
            transition: all 0.25s ease;
        }

        .btn-schedule:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(37, 99, 235, 0.25);
        }


        /* =====================================================
           INTERVIEW CARD
        ===================================================== */

        .interview-card {
            border: 1px solid #e2e8f0;
            border-radius: 14px;
            background: white;
            box-shadow: 0 6px 25px rgba(15, 23, 42, 0.05);
            overflow: hidden;
            animation: cardAnimation 0.8s ease;
        }

        @keyframes cardAnimation {

            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }

        .interview-card-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 24px;
            border-bottom: 1px solid #e2e8f0;
        }

        .card-title {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 16px;
            font-weight: 700;
            margin: 0;
        }

        .card-title-icon {
            width: 34px;
            height: 34px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 9px;
            background: #eff6ff;
            color: #2563eb;
        }


        /* =====================================================
           TABLE
        ===================================================== */

        .table-wrapper {
            overflow-x: auto;
        }

        .interview-table {
            margin: 0;
            min-width: 1200px;
        }

        .interview-table thead th {
            background: #f8fafc;
            color: #475569;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            padding: 14px 16px;
            border-bottom: 1px solid #e2e8f0;
            white-space: nowrap;
        }

        .interview-table tbody td {
            padding: 16px;
            color: #334155;
            font-size: 13px;
            vertical-align: middle;
            border-bottom: 1px solid #f1f5f9;
        }

        .interview-table tbody tr {
            animation: rowAnimation 0.5s ease both;
            transition: all 0.2s ease;
        }

        .interview-table tbody tr:nth-child(1) {
            animation-delay: 0.05s;
        }

        .interview-table tbody tr:nth-child(2) {
            animation-delay: 0.10s;
        }

        .interview-table tbody tr:nth-child(3) {
            animation-delay: 0.15s;
        }

        .interview-table tbody tr:nth-child(4) {
            animation-delay: 0.20s;
        }

        .interview-table tbody tr:nth-child(5) {
            animation-delay: 0.25s;
        }

        @keyframes rowAnimation {

            from {
                opacity: 0;
                transform: translateX(-8px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }

        }

        .interview-table tbody tr:hover {
            background: #f8fbff;
        }


        /* CANDIDATE */

        .candidate-name {
            color: #0f172a;
            font-weight: 700;
        }

        .job-title {
            color: #475569;
            font-weight: 500;
        }

        .interviewer {
            font-weight: 600;
            color: #334155;
        }

        .feedback-text {
            max-width: 220px;
            color: #64748b;
            line-height: 1.5;
        }


        /* BADGES */

        .status-badge,
        .mode-badge {
            display: inline-flex;
            align-items: center;
            gap: 5px;
            padding: 6px 10px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            white-space: nowrap;
        }

        .mode-badge {
            background: #f1f5f9;
            color: #334155;
        }

        .status-scheduled {
            background: #dbeafe;
            color: #1d4ed8;
        }

        .status-completed {
            background: #cffafe;
            color: #0e7490;
        }

        .status-selected {
            background: #dcfce7;
            color: #15803d;
        }

        .status-rejected {
            background: #fee2e2;
            color: #b91c1c;
        }

        .status-cancelled {
            background: #f1f5f9;
            color: #475569;
        }

        .status-default {
            background: #f1f5f9;
            color: #475569;
        }


        /* ACTION BUTTONS */

        .action-buttons {
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .action-btn {
            width: 34px;
            height: 34px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 8px;
            border: 1px solid transparent;
            text-decoration: none;
            transition: all 0.2s ease;
        }

        .edit-btn {
            background: #fff7ed;
            color: #ea580c;
            border-color: #fed7aa;
        }

        .edit-btn:hover {
            background: #ffedd5;
            color: #c2410c;
            transform: translateY(-2px);
        }

        .delete-btn {
            background: #fef2f2;
            color: #dc2626;
            border-color: #fecaca;
        }

        .delete-btn:hover {
            background: #fee2e2;
            color: #b91c1c;
            transform: translateY(-2px);
        }


        /* =====================================================
           EMPTY STATE
        ===================================================== */

        .empty-state {
            text-align: center;
            padding: 70px 20px;
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
            font-size: 30px;
            animation: emptyFloat 2.5s ease-in-out infinite;
        }

        @keyframes emptyFloat {

            0%,
            100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-7px);
            }

        }

        .empty-state h5 {
            color: #334155;
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .empty-state p {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 20px;
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

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

            .page-header {
                align-items: flex-start;
                flex-direction: column;
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
                padding: 30px 0 45px;
            }

            .page-title {
                font-size: 25px;
            }

            .btn-schedule {
                width: 100%;
                justify-content: center;
            }

            .interview-card-header {
                padding: 17px;
            }

        }

    </style>

</head>


<body>


<!-- =====================================================
     NAVBAR
===================================================== -->

<nav class="navbar navbar-expand-lg hireflow-navbar sticky-top">

    <div class="container">

        <!-- BRAND -->

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


        <!-- MOBILE TOGGLER -->

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


        <!-- NAVIGATION -->

        <div
            class="collapse navbar-collapse"
            id="hireflowNavbar">


            <ul
                class="navbar-nav mx-auto mb-2 mb-lg-0 main-navigation">


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


                <!-- CANDIDATES -->

                <li class="nav-item">

                    <a
                        class="nav-link"
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
                        class="nav-link active"
                        href="${pageContext.request.contextPath}/interviews">

                        <i class="bi bi-calendar-event"></i>

                        <span>Interviews</span>

                    </a>

                </li>


            </ul>


            <!-- PROFILE -->

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



<!-- =====================================================
     MAIN CONTENT
===================================================== -->

<main>

    <section class="page-section">

        <div class="container">


            <!-- PAGE HEADER -->

            <div class="page-header">

                <div>

                    <h1 class="page-title">
                        Interviews
                    </h1>

                    <p class="page-description">
                        Schedule, manage and track candidate interviews
                        throughout your recruitment process.
                    </p>

                </div>


                <a
                    href="${pageContext.request.contextPath}/interviews/add"
                    class="btn-schedule">

                    <i class="bi bi-calendar-plus"></i>

                    Schedule Interview

                </a>

            </div>



            <!-- INTERVIEW CARD -->

            <div class="interview-card">


                <div class="interview-card-header">

                    <h2 class="card-title">

                        <span class="card-title-icon">

                            <i class="bi bi-calendar-event"></i>

                        </span>

                        Scheduled Interviews

                    </h2>

                </div>



                <% if (interviews == null || interviews.isEmpty()) { %>


                    <!-- EMPTY STATE -->

                    <div class="empty-state">

                        <div class="empty-icon">

                            <i class="bi bi-calendar-x"></i>

                        </div>


                        <h5>
                            No interviews scheduled
                        </h5>


                        <p>
                            Schedule an interview for an application
                            to begin the interview process.
                        </p>


                        <a
                            href="${pageContext.request.contextPath}/interviews/add"
                            class="btn-schedule">

                            <i class="bi bi-calendar-plus"></i>

                            Schedule Interview

                        </a>

                    </div>


                <% } else { %>


                    <!-- TABLE -->

                    <div class="table-wrapper">

                        <table
                            class="table interview-table align-middle">


                            <thead>

                            <tr>

                                <th>ID</th>

                                <th>Candidate</th>

                                <th>Job</th>

                                <th>Date</th>

                                <th>Time</th>

                                <th>Interviewer</th>

                                <th>Round</th>

                                <th>Mode</th>

                                <th>Status</th>

                                <th>Feedback</th>

                                <th>Actions</th>

                            </tr>

                            </thead>


                            <tbody>


                            <%
                                for (Interview interview : interviews) {

                                    String status =
                                            interview.getStatus();

                                    String statusClass =
                                            "status-default";


                                    if ("SCHEDULED".equals(status)) {

                                        statusClass =
                                                "status-scheduled";

                                    }
                                    else if ("COMPLETED".equals(status)) {

                                        statusClass =
                                                "status-completed";

                                    }
                                    else if ("SELECTED".equals(status)) {

                                        statusClass =
                                                "status-selected";

                                    }
                                    else if ("REJECTED".equals(status)) {

                                        statusClass =
                                                "status-rejected";

                                    }
                                    else if ("CANCELLED".equals(status)) {

                                        statusClass =
                                                "status-cancelled";

                                    }
                            %>


                            <tr>


                                <!-- ID -->

                                <td>

                                    <strong>
                                        #<%= interview.getId() %>
                                    </strong>

                                </td>


                                <!-- CANDIDATE -->

                                <td>

                                    <span class="candidate-name">

                                        <%= interview.getApplication()
                                                .getCandidate()
                                                .getName() %>

                                    </span>

                                </td>


                                <!-- JOB -->

                                <td>

                                    <span class="job-title">

                                        <%= interview.getApplication()
                                                .getJob()
                                                .getTitle() %>

                                    </span>

                                </td>


                                <!-- DATE -->

                                <td>

                                    <i class="bi bi-calendar3 me-1 text-primary"></i>

                                    <%= interview.getInterviewDate() %>

                                </td>


                                <!-- TIME -->

                                <td>

                                    <i class="bi bi-clock me-1 text-primary"></i>

                                    <%= interview.getInterviewTime() %>

                                </td>


                                <!-- INTERVIEWER -->

                                <td>

                                    <span class="interviewer">

                                        <i class="bi bi-person me-1"></i>

                                        <%= interview.getInterviewer() %>

                                    </span>

                                </td>


                                <!-- ROUND -->

                                <td>

                                    <%= interview.getInterviewRound() %>

                                </td>


                                <!-- MODE -->

                                <td>

                                    <span class="mode-badge">

                                        <i class="bi bi-camera-video"></i>

                                        <%= interview.getMode() %>

                                    </span>

                                </td>


                                <!-- STATUS -->

                                <td>

                                    <span class="status-badge <%= statusClass %>">

                                        <%= status %>

                                    </span>

                                </td>


                                <!-- FEEDBACK -->

                                <td>

                                    <div class="feedback-text">

                                        <%= interview.getFeedback() != null
                                                && !interview.getFeedback()
                                                        .trim()
                                                        .isEmpty()
                                                ? interview.getFeedback()
                                                : "-" %>

                                    </div>

                                </td>


                                <!-- ACTIONS -->

                                <td>

                                    <div class="action-buttons">


                                        <a
                                            href="${pageContext.request.contextPath}/interviews/edit/<%= interview.getId() %>"
                                            class="action-btn edit-btn"
                                            title="Edit Interview">

                                            <i class="bi bi-pencil"></i>

                                        </a>


                                        <a
                                            href="${pageContext.request.contextPath}/interviews/delete/<%= interview.getId() %>"
                                            class="action-btn delete-btn"
                                            title="Delete Interview"
                                            onclick="return confirm('Are you sure you want to delete this interview?');">

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



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>