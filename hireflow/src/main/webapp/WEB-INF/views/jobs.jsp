<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Job" %>

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
        content="Manage job openings, job details, locations, salaries, required skills and recruitment status with HireFlow recruitment management system.">

    <meta
        name="keywords"
        content="HireFlow, job management, recruitment management, job openings, recruitment system, applicant tracking system, hiring">

    <meta
        name="author"
        content="HireFlow">

    <meta
        name="robots"
        content="index, follow">


    <title>
        Jobs | HireFlow Recruitment Management
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
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
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
           ADD JOB BUTTON
        ================================================== */

        .add-job-btn {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            background: #2563eb;
            border: none;
            color: white;
            border-radius: 9px;
            padding: 11px 18px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            white-space: nowrap;
            transition: all 0.25s ease;
        }


        .add-job-btn:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(37, 99, 235, 0.22);
        }



        /* ==================================================
           JOB CARD
        ================================================== */

        .jobs-card {
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 17px;
            box-shadow: 0 10px 35px rgba(15, 23, 42, 0.07);
            overflow: hidden;
            animation: fadeUp 0.7s ease both;
        }


        .jobs-card-header {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 22px 24px;
            border-bottom: 1px solid #e2e8f0;
            background: linear-gradient(
                135deg,
                #ffffff,
                #f8fbff
            );
        }


        .jobs-icon {
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #eff6ff;
            color: #2563eb;
            border-radius: 11px;
            font-size: 18px;
        }


        .jobs-card-title {
            margin: 0;
            font-size: 17px;
            font-weight: 700;
        }


        .jobs-card-subtitle {
            margin: 4px 0 0;
            color: #64748b;
            font-size: 12px;
        }


        .jobs-card-body {
            padding: 0;
        }



        /* ==================================================
           TABLE
        ================================================== */

        .table-wrapper {
            overflow-x: auto;
        }


        .jobs-table {
            margin: 0;
            min-width: 1050px;
        }


        .jobs-table thead th {
            background: #f8fafc;
            color: #475569;
            border-bottom: 1px solid #e2e8f0;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            padding: 15px 16px;
            white-space: nowrap;
        }


        .jobs-table tbody td {
            vertical-align: middle;
            color: #475569;
            font-size: 13px;
            padding: 17px 16px;
            border-color: #eef2f7;
        }


        .jobs-table tbody tr {
            transition: all 0.25s ease;
            animation: tableRow 0.5s ease both;
        }


        .jobs-table tbody tr:nth-child(2) {
            animation-delay: 0.05s;
        }


        .jobs-table tbody tr:nth-child(3) {
            animation-delay: 0.10s;
        }


        .jobs-table tbody tr:nth-child(4) {
            animation-delay: 0.15s;
        }


        .jobs-table tbody tr:nth-child(5) {
            animation-delay: 0.20s;
        }


        .jobs-table tbody tr:hover {
            background: #f8fbff;
            transform: translateX(2px);
        }


        .job-number {
            color: #94a3b8;
            font-weight: 600;
        }


        .job-title {
            color: #0f172a;
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 4px;
        }


        .skills {
            display: block;
            max-width: 220px;
            color: #94a3b8;
            font-size: 11px;
            line-height: 1.5;
        }


        .job-detail {
            display: inline-flex;
            align-items: center;
            gap: 5px;
        }


        .job-detail i {
            color: #94a3b8;
            font-size: 13px;
        }



        /* ==================================================
           STATUS
        ================================================== */

        .status-badge {
            display: inline-flex;
            align-items: center;
            gap: 5px;
            border-radius: 20px;
            padding: 6px 10px;
            font-size: 11px;
            font-weight: 700;
        }


        .status-open {
            background: #ecfdf5;
            color: #047857;
        }


        .status-closed {
            background: #fef2f2;
            color: #dc2626;
        }


        .status-dot {
            width: 6px;
            height: 6px;
            border-radius: 50%;
            background: currentColor;
        }



        /* ==================================================
           ACTION BUTTONS
        ================================================== */

        .action-buttons {
            display: flex;
            gap: 6px;
            white-space: nowrap;
        }


        .action-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
            border-radius: 7px;
            padding: 7px 10px;
            font-size: 12px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.22s ease;
        }


        .edit-btn {
            background: #fff7ed;
            border: 1px solid #fed7aa;
            color: #c2410c;
        }


        .edit-btn:hover {
            background: #ffedd5;
            color: #9a3412;
            transform: translateY(-1px);
        }


        .delete-btn {
            background: #fef2f2;
            border: 1px solid #fecaca;
            color: #dc2626;
        }


        .delete-btn:hover {
            background: #fee2e2;
            color: #b91c1c;
            transform: translateY(-1px);
        }



        /* ==================================================
           EMPTY STATE
        ================================================== */

        .empty-state {
            text-align: center;
            padding: 70px 20px;
            animation: fadeUp 0.7s ease both;
        }


        .empty-icon {
            width: 70px;
            height: 70px;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #eff6ff;
            color: #2563eb;
            border-radius: 50%;
            font-size: 29px;
            animation: floating 2.5s ease-in-out infinite;
        }


        .empty-state h3 {
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 8px;
        }


        .empty-state p {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 22px;
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


        @keyframes tableRow {

            from {
                opacity: 0;
                transform: translateX(-12px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }

        }


        @keyframes floating {

            0%,
            100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-7px);
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

            .page-header {
                align-items: flex-start;
                flex-direction: column;
            }


            .page-title {
                font-size: 27px;
            }


            .add-job-btn {
                width: 100%;
                justify-content: center;
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


            .jobs-card-header {
                padding: 18px;
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
                        class="nav-link active"
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
                        class="nav-link"
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

            <div class="page-header">


                <div>

                    <h1 class="page-title">
                        Job Management
                    </h1>

                    <p class="page-description">
                        Create, manage and monitor your job openings
                        throughout the recruitment process.
                    </p>

                </div>



                <a
                    href="${pageContext.request.contextPath}/jobs/add"
                    class="add-job-btn">

                    <i class="bi bi-plus-lg"></i>

                    Add New Job

                </a>


            </div>



            <!-- ================= JOB CARD ================= -->

            <div class="jobs-card">


                <!-- Card Header -->

                <div class="jobs-card-header">


                    <div class="jobs-icon">

                        <i class="bi bi-briefcase"></i>

                    </div>


                    <div>

                        <h2 class="jobs-card-title">
                            Job Openings
                        </h2>

                        <p class="jobs-card-subtitle">
                            View and manage all available job opportunities
                        </p>

                    </div>


                </div>



                <!-- Card Body -->

                <div class="jobs-card-body">


                    <%
                        List<Job> jobs =
                                (List<Job>) request.getAttribute("jobs");

                        if (jobs != null && !jobs.isEmpty()) {
                    %>


                        <!-- ================= JOB TABLE ================= -->

                        <div class="table-wrapper">

                            <table
                                class="table jobs-table align-middle">


                                <thead>

                                    <tr>

                                        <th>#</th>

                                        <th>Job Title</th>

                                        <th>Location</th>

                                        <th>Salary</th>

                                        <th>Job Type</th>

                                        <th>Experience</th>

                                        <th>Status</th>

                                        <th>Actions</th>

                                    </tr>

                                </thead>



                                <tbody>


                                <%
                                    int count = 1;

                                    for (Job job : jobs) {
                                %>


                                    <tr>


                                        <!-- Number -->

                                        <td>

                                            <span class="job-number">
                                                <%= count++ %>
                                            </span>

                                        </td>



                                        <!-- Job Title -->

                                        <td>

                                            <div class="job-title">

                                                <%= job.getTitle() %>

                                            </div>


                                            <small class="skills">

                                                <%= job.getSkills() != null
                                                        ? job.getSkills()
                                                        : "No skills specified" %>

                                            </small>

                                        </td>



                                        <!-- Location -->

                                        <td>

                                            <span class="job-detail">

                                                <i class="bi bi-geo-alt"></i>

                                                <%= job.getLocation() != null
                                                        ? job.getLocation()
                                                        : "Not specified" %>

                                            </span>

                                        </td>



                                        <!-- Salary -->

                                        <td>

                                            <span class="job-detail">

                                                <i class="bi bi-currency-rupee"></i>

                                                <%= job.getSalary() != null
                                                        ? job.getSalary()
                                                        : "Not specified" %>

                                            </span>

                                        </td>



                                        <!-- Job Type -->

                                        <td>

                                            <span class="job-detail">

                                                <i class="bi bi-clock"></i>

                                                <%= job.getJobType() != null
                                                        ? job.getJobType()
                                                        : "Not specified" %>

                                            </span>

                                        </td>



                                        <!-- Experience -->

                                        <td>

                                            <span class="job-detail">

                                                <i class="bi bi-person-workspace"></i>

                                                <%= job.getExperience() != null
                                                        ? job.getExperience()
                                                        : "Not specified" %>

                                            </span>

                                        </td>



                                        <!-- Status -->

                                        <td>

                                            <%
                                                String jobStatus =
                                                        job.getStatus() != null
                                                                ? job.getStatus()
                                                                : "OPEN";

                                                boolean isOpen =
                                                        "OPEN".equalsIgnoreCase(jobStatus);
                                            %>


                                            <span class="status-badge
                                                <%= isOpen
                                                        ? "status-open"
                                                        : "status-closed" %>">

                                                <span class="status-dot"></span>

                                                <%= jobStatus %>

                                            </span>

                                        </td>



                                        <!-- Actions -->

                                        <td>

                                            <div class="action-buttons">


                                                <a
                                                    href="${pageContext.request.contextPath}/jobs/edit/<%= job.getId() %>"
                                                    class="action-btn edit-btn">

                                                    <i class="bi bi-pencil-square"></i>

                                                    Edit

                                                </a>


                                                <a
                                                    href="${pageContext.request.contextPath}/jobs/delete/<%= job.getId() %>"
                                                    class="action-btn delete-btn"

                                                    onclick="return confirm('Are you sure you want to delete this job?');">

                                                    <i class="bi bi-trash3"></i>

                                                    Delete

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


                    <%
                        } else {
                    %>


                        <!-- ================= EMPTY STATE ================= -->

                        <div class="empty-state">


                            <div class="empty-icon">

                                <i class="bi bi-briefcase"></i>

                            </div>


                            <h3>
                                No Jobs Found
                            </h3>


                            <p>
                                You haven't added any job openings yet.
                                Start by creating your first job opportunity.
                            </p>


                            <a
                                href="${pageContext.request.contextPath}/jobs/add"
                                class="add-job-btn">

                                <i class="bi bi-plus-lg"></i>

                                Add Your First Job

                            </a>


                        </div>


                    <%
                        }
                    %>


                </div>

            </div>

        </div>

    </section>

</main>



<!-- ================= Bootstrap JS ================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>