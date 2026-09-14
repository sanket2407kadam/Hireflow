<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="com.sksolution.hireflow.entity.Candidate" %>

<%
    Candidate candidate =
            (Candidate) request.getAttribute("candidate");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <!-- SEO -->
    <meta
        name="description"
        content="Edit candidate information, professional details, recruitment status and profile information in HireFlow.">

    <meta
        name="keywords"
        content="HireFlow, edit candidate, candidate management, recruitment management, applicant tracking system">

    <meta
        name="author"
        content="HireFlow">

    <meta
        name="robots"
        content="index, follow">

    <title>Edit Candidate | HireFlow Recruitment Management</title>


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
            padding: 55px 0 70px;
        }


        .page-header {
            margin-bottom: 30px;
            animation: fadeDown 0.6s ease both;
        }


        .page-title {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.8px;
            margin-bottom: 8px;
        }


        .page-description {
            color: #64748b;
            font-size: 15px;
            margin-bottom: 0;
        }


        /* ==================================================
           FORM CARD
        ================================================== */

        .edit-card {
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 18px;
            box-shadow: 0 10px 35px rgba(15, 23, 42, 0.07);
            overflow: hidden;
            animation: fadeUp 0.7s ease both;
        }


        .card-header-custom {
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
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            background: #eff6ff;
            color: #2563eb;
            font-size: 21px;
            margin-right: 12px;
        }


        .card-header-title {
            font-size: 18px;
            font-weight: 700;
            margin: 0;
        }


        .card-header-text {
            margin: 5px 0 0;
            color: #64748b;
            font-size: 13px;
        }


        .form-body {
            padding: 30px;
        }


        /* ==================================================
           FORM
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
            font-size: 16px;
            font-weight: 700;
            color: #1e293b;
            padding-bottom: 12px;
            margin-bottom: 20px;
            border-bottom: 1px solid #e2e8f0;
        }


        .section-title i {
            color: #2563eb;
            font-size: 17px;
        }


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


        .form-control:focus,
        .form-select:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
        }


        .form-control:hover,
        .form-select:hover {
            border-color: #bfdbfe;
        }


        .form-control::placeholder {
            color: #94a3b8;
        }


        /* ==================================================
           BUTTONS
        ================================================== */

        .form-actions {
            display: flex;
            gap: 12px;
            padding-top: 8px;
            border-top: 1px solid #e2e8f0;
        }


        .btn-update {
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
            background: #f8fafc;
            border: 1px solid #dbe3ed;
            color: #475569;
            border-radius: 9px;
            padding: 11px 20px;
            font-size: 14px;
            font-weight: 600;
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


            .form-body {
                padding: 22px;
            }


            .card-header-custom {
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


            .form-body {
                padding: 18px;
            }


            .card-header-custom {
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


<!-- ==================================================
     NAVBAR
================================================== -->

<nav class="navbar navbar-expand-lg hireflow-navbar sticky-top">

    <div class="container">

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
                        class="nav-link active"
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
                    Edit Candidate
                </h1>

                <p class="page-description">
                    Update candidate information, professional details,
                    education, skills and recruitment status.
                </p>

            </div>



            <!-- ==================================================
                 EDIT CARD
            ================================================== -->

            <div class="edit-card">


                <!-- Card Header -->

                <div class="card-header-custom">

                    <div class="d-flex align-items-center">

                        <span class="header-icon">
                            <i class="bi bi-person-gear"></i>
                        </span>

                        <div>

                            <h2 class="card-header-title">
                                Candidate Information
                            </h2>

                            <p class="card-header-text">
                                Update the candidate profile details below.
                            </p>

                        </div>

                    </div>

                </div>



                <!-- Form Body -->

                <div class="form-body">


                    <form
                        action="${pageContext.request.contextPath}/candidates/update"
                        method="post">


                        <!-- Hidden ID -->

                        <input
                            type="hidden"
                            name="id"
                            value="<%= candidate.getId() %>">



                        <!-- ==================================================
                             BASIC INFORMATION
                        ================================================== -->

                        <div class="form-section">

                            <h3 class="section-title">

                                <i class="bi bi-person-vcard"></i>

                                Basic Information

                            </h3>


                            <div class="row g-4">


                                <!-- Name -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Full Name
                                    </label>

                                    <input
                                        type="text"
                                        name="name"
                                        class="form-control"
                                        placeholder="Enter candidate name"
                                        value="<%= candidate.getName() %>"
                                        required>

                                </div>


                                <!-- Email -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Email Address
                                    </label>

                                    <input
                                        type="email"
                                        name="email"
                                        class="form-control"
                                        placeholder="candidate@example.com"
                                        value="<%= candidate.getEmail() %>"
                                        required>

                                </div>


                                <!-- Phone -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Phone Number
                                    </label>

                                    <input
                                        type="text"
                                        name="phone"
                                        class="form-control"
                                        placeholder="Enter phone number"
                                        value="<%= candidate.getPhone() != null
                                                ? candidate.getPhone()
                                                : "" %>">

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
                                        placeholder="City / Location"
                                        value="<%= candidate.getLocation() != null
                                                ? candidate.getLocation()
                                                : "" %>">

                                </div>

                            </div>

                        </div>



                        <!-- ==================================================
                             PROFESSIONAL INFORMATION
                        ================================================== -->

                        <div class="form-section">

                            <h3 class="section-title">

                                <i class="bi bi-briefcase"></i>

                                Professional Information

                            </h3>


                            <div class="row g-4">


                                <!-- Skills -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Skills
                                    </label>

                                    <input
                                        type="text"
                                        name="skills"
                                        class="form-control"
                                        placeholder="Java, Spring Boot, SQL"
                                        value="<%= candidate.getSkills() != null
                                                ? candidate.getSkills()
                                                : "" %>">

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
                                        placeholder="e.g. Fresher / 2 Years"
                                        value="<%= candidate.getExperience() != null
                                                ? candidate.getExperience()
                                                : "" %>">

                                </div>


                                <!-- Education -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Education
                                    </label>

                                    <input
                                        type="text"
                                        name="education"
                                        class="form-control"
                                        placeholder="Highest qualification"
                                        value="<%= candidate.getEducation() != null
                                                ? candidate.getEducation()
                                                : "" %>">

                                </div>


                                <!-- Resume -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Resume
                                    </label>

                                    <input
                                        type="text"
                                        name="resume"
                                        class="form-control"
                                        placeholder="Resume file name or URL"
                                        value="<%= candidate.getResume() != null
                                                ? candidate.getResume()
                                                : "" %>">

                                </div>

                            </div>

                        </div>



                        <!-- ==================================================
                             RECRUITMENT INFORMATION
                        ================================================== -->

                        <div class="form-section">

                            <h3 class="section-title">

                                <i class="bi bi-kanban"></i>

                                Recruitment Information

                            </h3>


                            <div class="row g-4">


                                <!-- Status -->

                                <div class="col-md-6">

                                    <label class="form-label">
                                        Candidate Status
                                    </label>

                                    <select
                                        name="status"
                                        class="form-select">


                                        <option
                                            value="APPLIED"
                                            <%= "APPLIED".equals(candidate.getStatus())
                                                    ? "selected"
                                                    : "" %>>

                                            Applied

                                        </option>


                                        <option
                                            value="SHORTLISTED"
                                            <%= "SHORTLISTED".equals(candidate.getStatus())
                                                    ? "selected"
                                                    : "" %>>

                                            Shortlisted

                                        </option>


                                        <option
                                            value="INTERVIEW"
                                            <%= "INTERVIEW".equals(candidate.getStatus())
                                                    ? "selected"
                                                    : "" %>>

                                            Interview

                                        </option>


                                        <option
                                            value="SELECTED"
                                            <%= "SELECTED".equals(candidate.getStatus())
                                                    ? "selected"
                                                    : "" %>>

                                            Selected

                                        </option>


                                        <option
                                            value="REJECTED"
                                            <%= "REJECTED".equals(candidate.getStatus())
                                                    ? "selected"
                                                    : "" %>>

                                            Rejected

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
                                class="btn btn-update">

                                <i class="bi bi-check-circle me-1"></i>

                                Update Candidate

                            </button>


                            <a
                                href="${pageContext.request.contextPath}/candidates"
                                class="btn btn-cancel">

                                <i class="bi bi-arrow-left me-1"></i>

                                Cancel

                            </a>


                        </div>


                    </form>

                </div>

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