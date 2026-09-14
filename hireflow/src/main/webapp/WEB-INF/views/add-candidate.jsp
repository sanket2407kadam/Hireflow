<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0">

    <meta
        name="description"
        content="Add a new candidate to HireFlow. Manage candidate profiles, skills, experience, education, location and recruitment status.">

    <meta
        name="keywords"
        content="HireFlow, add candidate, candidate management, recruitment management, applicant tracking system, hiring">

    <meta
        name="author"
        content="HireFlow">

    <meta
        name="robots"
        content="index, follow">

    <title>Add Candidate | HireFlow Recruitment Management</title>


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
            font-family: 'Inter', sans-serif;
            background: #f8fafc;
            color: #0f172a;
        }


        /* =========================================
           NAVBAR
        ========================================= */

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


        /* =========================================
           PROFILE
        ========================================= */

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


        /* =========================================
           PAGE
        ========================================= */

        .page-section {
            padding: 50px 0 70px;
        }

        .page-header {
            margin-bottom: 28px;
            animation: fadeDown 0.7s ease both;
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
            line-height: 1.7;
        }


        /* =========================================
           FORM CARD
        ========================================= */

        .candidate-card {
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 18px;
            box-shadow: 0 10px 35px rgba(15, 23, 42, 0.07);
            overflow: hidden;
            animation: fadeUp 0.8s ease both;
        }

        .card-header-custom {
            padding: 25px 30px;
            border-bottom: 1px solid #e2e8f0;
            background: linear-gradient(
                135deg,
                #ffffff,
                #f8fbff
            );
        }

        .form-icon {
            width: 46px;
            height: 46px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            background: #eff6ff;
            color: #2563eb;
            font-size: 21px;
            margin-bottom: 12px;
        }

        .card-heading {
            font-size: 19px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .card-subheading {
            color: #64748b;
            font-size: 13px;
            margin-bottom: 0;
        }

        .card-body-custom {
            padding: 30px;
        }


        /* =========================================
           FORM
        ========================================= */

        .form-section-title {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 15px;
            font-weight: 700;
            color: #334155;
            margin-bottom: 18px;
        }

        .form-section-title i {
            color: #2563eb;
        }

        .form-label {
            color: #334155;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 7px;
        }

        .form-control,
        .form-select {
            min-height: 46px;
            border: 1px solid #dbe3ec;
            border-radius: 10px;
            padding: 10px 13px;
            font-size: 14px;
            color: #334155;
            background-color: #fff;
            transition: all 0.25s ease;
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
            box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.10);
        }

        .field-help {
            color: #94a3b8;
            font-size: 11px;
            margin-top: 5px;
        }


        /* =========================================
           BUTTONS
        ========================================= */

        .form-actions {
            display: flex;
            align-items: center;
            gap: 10px;
            padding-top: 25px;
            margin-top: 10px;
            border-top: 1px solid #e2e8f0;
        }

        .btn-add {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-height: 44px;
            padding: 10px 20px;
            border: none;
            border-radius: 9px;
            background: #2563eb;
            color: white;
            font-size: 13px;
            font-weight: 600;
            box-shadow: 0 5px 15px rgba(37, 99, 235, 0.20);
            transition: all 0.25s ease;
        }

        .btn-add:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(37, 99, 235, 0.25);
        }

        .btn-cancel {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-height: 44px;
            padding: 10px 20px;
            border: 1px solid #dbe3ec;
            border-radius: 9px;
            background: white;
            color: #475569;
            font-size: 13px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.25s ease;
        }

        .btn-cancel:hover {
            background: #f8fafc;
            border-color: #cbd5e1;
            color: #334155;
            transform: translateY(-2px);
        }


        /* =========================================
           ANIMATIONS
        ========================================= */

        @keyframes fadeDown {

            from {
                opacity: 0;
                transform: translateY(-18px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }

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

        .form-group-animate {
            animation: fadeUp 0.6s ease both;
        }

        .delay-1 {
            animation-delay: 0.05s;
        }

        .delay-2 {
            animation-delay: 0.10s;
        }

        .delay-3 {
            animation-delay: 0.15s;
        }

        .delay-4 {
            animation-delay: 0.20s;
        }

        .delay-5 {
            animation-delay: 0.25s;
        }

        .delay-6 {
            animation-delay: 0.30s;
        }

        .delay-7 {
            animation-delay: 0.35s;
        }

        .delay-8 {
            animation-delay: 0.40s;
        }


        /* =========================================
           RESPONSIVE
        ========================================= */

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
                padding: 35px 0 50px;
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

            .page-title {
                font-size: 26px;
            }

            .card-header-custom,
            .card-body-custom {
                padding: 22px 18px;
            }

            .form-actions {
                flex-direction: column;
                align-items: stretch;
            }

            .btn-add,
            .btn-cancel {
                width: 100%;
            }

        }

    </style>

</head>


<body>


<!-- =========================================
     NAVBAR
========================================= -->

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


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/dashboard">

                        <i class="bi bi-grid-1x2-fill"></i>

                        <span>Dashboard</span>

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/jobs">

                        <i class="bi bi-briefcase"></i>

                        <span>Jobs</span>

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/candidates">

                        <i class="bi bi-people-fill"></i>

                        <span>Candidates</span>

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/applications">

                        <i class="bi bi-file-earmark-text"></i>

                        <span>Applications</span>

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="${pageContext.request.contextPath}/interviews">

                        <i class="bi bi-calendar-event"></i>

                        <span>Interviews</span>

                    </a>

                </li>

            </ul>


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



<!-- =========================================
     MAIN CONTENT
========================================= -->

<main>

    <section class="page-section">

        <div class="container">


            <!-- Page Header -->

            <div class="page-header">

                <h1 class="page-title">
                    Add Candidate
                </h1>

                <p class="page-description">

                    Create a candidate profile and add their professional
                    information to your HireFlow recruitment pipeline.

                </p>

            </div>



            <!-- Candidate Form -->

            <div class="row justify-content-center">

                <div class="col-xl-9 col-lg-10">


                    <div class="candidate-card">


                        <!-- Card Header -->

                        <div class="card-header-custom">

                            <div class="form-icon">

                                <i class="bi bi-person-plus-fill"></i>

                            </div>


                            <h2 class="card-heading">
                                Candidate Information
                            </h2>


                            <p class="card-subheading">

                                Enter the candidate's contact,
                                professional and recruitment details.

                            </p>

                        </div>



                        <!-- Card Body -->

                        <div class="card-body-custom">


                            <form
                                action="${pageContext.request.contextPath}/candidates/add"
                                method="post">


                                <!-- Basic Information -->

                                <div class="form-section-title">

                                    <i class="bi bi-person-vcard"></i>

                                    <span>Basic Information</span>

                                </div>


                                <div class="row g-4">


                                    <div class="col-md-6 form-group-animate delay-1">

                                        <label class="form-label">
                                            Full Name
                                        </label>

                                        <input
                                            type="text"
                                            name="name"
                                            class="form-control"
                                            placeholder="Enter candidate name"
                                            autocomplete="name"
                                            required>

                                    </div>


                                    <div class="col-md-6 form-group-animate delay-2">

                                        <label class="form-label">
                                            Email Address
                                        </label>

                                        <input
                                            type="email"
                                            name="email"
                                            class="form-control"
                                            placeholder="candidate@example.com"
                                            autocomplete="email"
                                            required>

                                    </div>


                                    <div class="col-md-6 form-group-animate delay-3">

                                        <label class="form-label">
                                            Phone Number
                                        </label>

                                        <input
                                            type="tel"
                                            name="phone"
                                            class="form-control"
                                            placeholder="Enter phone number"
                                            autocomplete="tel">

                                    </div>


                                    <div class="col-md-6 form-group-animate delay-4">

                                        <label class="form-label">
                                            Location
                                        </label>

                                        <input
                                            type="text"
                                            name="location"
                                            class="form-control"
                                            placeholder="e.g. Mumbai">

                                    </div>

                                </div>


                                <hr class="my-5">



                                <!-- Professional Information -->

                                <div class="form-section-title">

                                    <i class="bi bi-briefcase-fill"></i>

                                    <span>Professional Information</span>

                                </div>


                                <div class="row g-4">


                                    <div class="col-md-6 form-group-animate delay-5">

                                        <label class="form-label">
                                            Skills
                                        </label>

                                        <input
                                            type="text"
                                            name="skills"
                                            class="form-control"
                                            placeholder="Java, Spring Boot, SQL, React">

                                        <div class="field-help">
                                            Separate multiple skills with commas.
                                        </div>

                                    </div>


                                    <div class="col-md-6 form-group-animate delay-6">

                                        <label class="form-label">
                                            Experience
                                        </label>

                                        <input
                                            type="text"
                                            name="experience"
                                            class="form-control"
                                            placeholder="e.g. Fresher / 2 Years">

                                    </div>


                                    <div class="col-md-6 form-group-animate delay-7">

                                        <label class="form-label">
                                            Education
                                        </label>

                                        <input
                                            type="text"
                                            name="education"
                                            class="form-control"
                                            placeholder="e.g. B.Sc. IT">

                                    </div>


                                    <div class="col-md-6 form-group-animate delay-8">

                                        <label class="form-label">
                                            Resume
                                        </label>

                                        <input
                                            type="text"
                                            name="resume"
                                            class="form-control"
                                            placeholder="Resume file name or link">

                                        <div class="field-help">
                                            Add a resume filename or accessible link.
                                        </div>

                                    </div>

                                </div>


                                <hr class="my-5">



                                <!-- Recruitment Information -->

                                <div class="form-section-title">

                                    <i class="bi bi-kanban-fill"></i>

                                    <span>Recruitment Information</span>

                                </div>


                                <div class="row g-4">


                                    <div class="col-md-6">

                                        <label class="form-label">
                                            Candidate Status
                                        </label>

                                        <select
                                            name="status"
                                            class="form-select">

                                            <option value="APPLIED">
                                                Applied
                                            </option>

                                            <option value="SHORTLISTED">
                                                Shortlisted
                                            </option>

                                            <option value="INTERVIEW">
                                                Interview
                                            </option>

                                            <option value="SELECTED">
                                                Selected
                                            </option>

                                            <option value="REJECTED">
                                                Rejected
                                            </option>

                                        </select>

                                    </div>

                                </div>



                                <!-- Actions -->

                                <div class="form-actions">

                                    <button
                                        type="submit"
                                        class="btn-add">

                                        <i class="bi bi-person-plus-fill"></i>

                                        Add Candidate

                                    </button>


                                    <a
                                        href="${pageContext.request.contextPath}/candidates"
                                        class="btn-cancel">

                                        <i class="bi bi-arrow-left"></i>

                                        Cancel

                                    </a>

                                </div>


                            </form>

                        </div>

                    </div>

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