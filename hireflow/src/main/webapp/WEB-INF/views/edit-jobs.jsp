<%@ page contentType="text/html;charset=UTF-8" %>

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
        content="Edit and update job openings in HireFlow recruitment management system. Manage job details, salary, skills, experience, employment type and job status.">

    <meta
        name="keywords"
        content="HireFlow, edit job, update job, recruitment management, job management, job openings, hiring, applicant tracking system">

    <meta
        name="author"
        content="HireFlow">

    <meta
        name="robots"
        content="index, follow">


    <title>
        Edit Job | HireFlow Recruitment Management
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
           FORM CARD
        ================================================== */

        .job-form-card {
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 18px;
            box-shadow: 0 10px 35px rgba(15, 23, 42, 0.07);
            overflow: hidden;
            animation: fadeUp 0.7s ease both;
        }


        .form-card-header {
            display: flex;
            align-items: center;
            gap: 13px;
            padding: 24px 28px;
            border-bottom: 1px solid #e2e8f0;
            background: linear-gradient(
                135deg,
                #ffffff,
                #f8fbff
            );
        }


        .header-icon {
            width: 46px;
            height: 46px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            background: #eff6ff;
            color: #2563eb;
            font-size: 21px;
        }


        .form-card-title {
            margin: 0;
            font-size: 18px;
            font-weight: 700;
        }


        .form-card-description {
            margin: 4px 0 0;
            color: #64748b;
            font-size: 12px;
        }


        .form-card-body {
            padding: 30px;
        }



        /* ==================================================
           FORM SECTIONS
        ================================================== */

        .form-section {
            margin-bottom: 32px;
            animation: fadeUp 0.8s ease both;
        }


        .form-section:nth-child(2) {
            animation-delay: 0.08s;
        }


        .form-section:nth-child(3) {
            animation-delay: 0.16s;
        }


        .section-title {
            display: flex;
            align-items: center;
            gap: 9px;
            color: #1e293b;
            font-size: 16px;
            font-weight: 700;
            padding-bottom: 12px;
            margin-bottom: 20px;
            border-bottom: 1px solid #e2e8f0;
        }


        .section-title i {
            color: #2563eb;
            font-size: 17px;
        }



        /* ==================================================
           FORM CONTROLS
        ================================================== */

        .form-label {
            color: #334155;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 8px;
        }


        .form-control,
        .form-select {
            min-height: 46px;
            border: 1px solid #dbe3ed;
            border-radius: 9px;
            color: #1e293b;
            font-size: 14px;
            padding: 10px 13px;
            transition: all 0.25s ease;
        }


        textarea.form-control {
            min-height: 130px;
            resize: vertical;
        }


        .form-control::placeholder {
            color: #94a3b8;
        }


        .form-control:hover,
        .form-select:hover {
            border-color: #bfdbfe;
        }


        .form-control:focus,
        .form-select:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
            transform: translateY(-1px);
        }



        /* ==================================================
           STATUS
        ================================================== */

        .status-open {
            color: #15803d;
        }


        .status-closed {
            color: #dc2626;
        }



        /* ==================================================
           ACTION BUTTONS
        ================================================== */

        .form-actions {
            display: flex;
            gap: 12px;
            padding-top: 8px;
            border-top: 1px solid #e2e8f0;
        }


        .btn-update {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 7px;
            background: #2563eb;
            border: none;
            color: white;
            border-radius: 9px;
            padding: 11px 20px;
            font-size: 14px;
            font-weight: 600;
            transition: all 0.25s ease;
        }


        .btn-update:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(37, 99, 235, 0.22);
        }


        .btn-cancel {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 7px;
            background: #f8fafc;
            border: 1px solid #dbe3ed;
            color: #475569;
            border-radius: 9px;
            padding: 11px 20px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.25s ease;
        }


        .btn-cancel:hover {
            background: #f1f5f9;
            color: #1e293b;
            transform: translateY(-2px);
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


            .form-card-body {
                padding: 22px;
            }


            .form-card-header {
                padding: 20px 22px;
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


            .form-card-body {
                padding: 18px;
            }


            .form-card-header {
                padding: 18px;
            }


            .form-actions {
                flex-direction: column;
            }


            .btn-update,
            .btn-cancel {
                width: 100%;
            }

        }

    </style>

</head>


<body>


<%
    Job job = (Job) request.getAttribute("job");
%>



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


            <!-- Page Header -->

            <div class="page-header">

                <h1 class="page-title">
                    Edit Job
                </h1>

                <p class="page-description">
                    Update the job position, requirements,
                    employment details and recruitment status.
                </p>

            </div>



            <!-- Form Card -->

            <div class="job-form-card">


                <!-- Card Header -->

                <div class="form-card-header">

                    <div class="header-icon">

                        <i class="bi bi-pencil-square"></i>

                    </div>


                    <div>

                        <h2 class="form-card-title">
                            Update Job Information
                        </h2>

                        <p class="form-card-description">
                            Modify the details of this job opening
                            and save your changes.
                        </p>

                    </div>

                </div>



                <!-- Card Body -->

                <div class="form-card-body">


                    <form
                        action="${pageContext.request.contextPath}/jobs/update"
                        method="post">


                        <!-- Job ID -->

                        <input
                            type="hidden"
                            name="id"
                            value="<%= job.getId() %>">



                        <!-- ==================================================
                             POSITION INFORMATION
                        ================================================== -->

                        <div class="form-section">


                            <h3 class="section-title">

                                <i class="bi bi-file-earmark-text"></i>

                                Position Information

                            </h3>


                            <div class="row g-4">


                                <!-- Job Title -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Job Title
                                    </label>

                                    <input
                                        type="text"
                                        name="title"
                                        class="form-control"
                                        value="<%= job.getTitle() != null ? job.getTitle() : "" %>"
                                        placeholder="e.g. Java Developer"
                                        required>

                                </div>



                                <!-- Location -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Location
                                    </label>

                                    <input
                                        type="text"
                                        name="location"
                                        class="form-control"
                                        value="<%= job.getLocation() != null ? job.getLocation() : "" %>"
                                        placeholder="e.g. Mumbai">

                                </div>



                                <!-- Description -->

                                <div class="col-12">

                                    <label class="form-label">
                                        Job Description
                                    </label>

                                    <textarea
                                        name="description"
                                        class="form-control"
                                        rows="5"
                                        placeholder="Enter job description"
                                        required><%= job.getDescription() != null ? job.getDescription() : "" %></textarea>

                                </div>

                            </div>

                        </div>



                        <!-- ==================================================
                             EMPLOYMENT DETAILS
                        ================================================== -->

                        <div class="form-section">


                            <h3 class="section-title">

                                <i class="bi bi-building"></i>

                                Employment Details

                            </h3>


                            <div class="row g-4">


                                <!-- Salary -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Salary
                                    </label>

                                    <input
                                        type="text"
                                        name="salary"
                                        class="form-control"
                                        value="<%= job.getSalary() != null ? job.getSalary() : "" %>"
                                        placeholder="e.g. ₹4 - ₹6 LPA">

                                </div>



                                <!-- Job Type -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Job Type
                                    </label>

                                    <select
                                        name="jobType"
                                        class="form-select">


                                        <option
                                            value="FULL TIME"
                                            <%= "FULL TIME".equals(job.getJobType()) ? "selected" : "" %>>

                                            Full Time

                                        </option>


                                        <option
                                            value="PART TIME"
                                            <%= "PART TIME".equals(job.getJobType()) ? "selected" : "" %>>

                                            Part Time

                                        </option>


                                        <option
                                            value="INTERNSHIP"
                                            <%= "INTERNSHIP".equals(job.getJobType()) ? "selected" : "" %>>

                                            Internship

                                        </option>


                                        <option
                                            value="CONTRACT"
                                            <%= "CONTRACT".equals(job.getJobType()) ? "selected" : "" %>>

                                            Contract

                                        </option>


                                    </select>

                                </div>



                                <!-- Experience -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Experience
                                    </label>

                                    <input
                                        type="text"
                                        name="experience"
                                        class="form-control"
                                        value="<%= job.getExperience() != null ? job.getExperience() : "" %>"
                                        placeholder="e.g. 0-2 Years">

                                </div>



                                <!-- Skills -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Required Skills
                                    </label>

                                    <input
                                        type="text"
                                        name="skills"
                                        class="form-control"
                                        value="<%= job.getSkills() != null ? job.getSkills() : "" %>"
                                        placeholder="Java, Spring Boot, SQL">

                                </div>

                            </div>

                        </div>



                        <!-- ==================================================
                             JOB STATUS
                        ================================================== -->

                        <div class="form-section">


                            <h3 class="section-title">

                                <i class="bi bi-toggle-on"></i>

                                Recruitment Status

                            </h3>


                            <div class="row g-4">


                                <div class="col-md-6">

                                    <label class="form-label">
                                        Job Status
                                    </label>

                                    <select
                                        name="status"
                                        class="form-select">


                                        <option
                                            value="OPEN"
                                            <%= "OPEN".equals(job.getStatus()) ? "selected" : "" %>>

                                            Open

                                        </option>


                                        <option
                                            value="CLOSED"
                                            <%= "CLOSED".equals(job.getStatus()) ? "selected" : "" %>>

                                            Closed

                                        </option>


                                    </select>

                                </div>

                            </div>

                        </div>



                        <!-- ==================================================
                             ACTIONS
                        ================================================== -->

                        <div class="form-actions">


                            <button
                                type="submit"
                                class="btn-update">

                                <i class="bi bi-check-circle"></i>

                                Update Job

                            </button>


                            <a
                                href="${pageContext.request.contextPath}/jobs"
                                class="btn-cancel">

                                <i class="bi bi-arrow-left"></i>

                                Cancel

                            </a>


                        </div>


                    </form>

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