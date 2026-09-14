<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <!-- SEO -->
    <title>My Profile | HireFlow Recruitment Management System</title>

    <meta name="description"
          content="Manage your HireFlow recruiter profile, account information, email address and professional account details.">

    <meta name="keywords"
          content="HireFlow profile, recruiter profile, recruitment management system, HR profile, recruiter account">

    <meta name="author"
          content="HireFlow">

    <meta name="robots"
          content="noindex, nofollow">

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

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


        /* BRAND */

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


        /* PROFILE BUTTON */

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


        /* PROFILE DROPDOWN */

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

        .page-container {
            max-width: 1100px;
            margin: auto;
            padding: 48px 20px 60px;
            animation: pageAnimation 0.6s ease;
        }

        @keyframes pageAnimation {

            from {
                opacity: 0;
                transform: translateY(18px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        /* PAGE HEADER */

        .page-header {
            margin-bottom: 30px;
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

        .page-subtitle {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 0;
        }


        /* =====================================================
           ALERTS
        ===================================================== */

        .alert {
            border: none;
            border-radius: 10px;
            font-size: 13px;
            margin-bottom: 20px;
            animation: alertAnimation 0.5s ease;
        }

        @keyframes alertAnimation {

            from {
                opacity: 0;
                transform: translateY(-8px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        /* =====================================================
           PROFILE CARD
        ===================================================== */

        .profile-card {
            background: #ffffff;
            border: 1px solid #e2e8f0;
            border-radius: 18px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(15, 23, 42, 0.05);
            animation: cardAnimation 0.8s ease;
            transition: box-shadow 0.3s ease;
        }

        @keyframes cardAnimation {

            from {
                opacity: 0;
                transform: translateY(22px) scale(0.99);
            }

            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }

        }

        .profile-card:hover {
            box-shadow: 0 14px 38px rgba(15, 23, 42, 0.08);
        }


        /* PROFILE TOP */

        .profile-top {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
            padding-bottom: 25px;
            border-bottom: 1px solid #f1f5f9;
        }

        .avatar {
            width: 75px;
            height: 75px;
            flex-shrink: 0;
            border-radius: 20px;
            background: linear-gradient(135deg, #2563eb, #60a5fa);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            box-shadow: 0 8px 20px rgba(37, 99, 235, 0.22);
            animation: avatarAnimation 1s ease;
        }

        @keyframes avatarAnimation {

            from {
                opacity: 0;
                transform: scale(0.75) rotate(-5deg);
            }

            to {
                opacity: 1;
                transform: scale(1) rotate(0);
            }

        }

        .profile-name {
            font-size: 22px;
            font-weight: 700;
            color: #0f172a;
        }

        .profile-role {
            color: #64748b;
            font-size: 13px;
            margin-top: 4px;
        }


        /* =====================================================
           FORM
        ===================================================== */

        .form-section-title {
            font-size: 15px;
            font-weight: 700;
            color: #334155;
            margin-bottom: 20px;
        }

        .form-label {
            font-size: 13px;
            font-weight: 600;
            color: #334155;
            margin-bottom: 7px;
        }

        .form-control {
            height: 48px;
            border-radius: 9px;
            border: 1px solid #cbd5e1;
            font-size: 14px;
            color: #334155;
            transition: all 0.25s ease;
        }

        .form-control:hover {
            border-color: #94a3b8;
        }

        .form-control:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.10);
            transform: translateY(-1px);
        }

        .form-control[readonly] {
            background: #f8fafc;
            color: #64748b;
            cursor: not-allowed;
        }


        /* =====================================================
           SAVE BUTTON
        ===================================================== */

        .btn-save {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: #2563eb;
            border: none;
            color: white;
            padding: 11px 20px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            box-shadow: 0 5px 14px rgba(37, 99, 235, 0.20);
            transition: all 0.25s ease;
        }

        .btn-save:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(37, 99, 235, 0.25);
        }

        .btn-save:active {
            transform: translateY(0);
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        footer {
            text-align: center;
            color: #94a3b8;
            font-size: 12px;
            padding: 25px;
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

            .page-container {
                padding: 32px 15px 45px;
            }

            .page-title {
                font-size: 26px;
            }

            .profile-card {
                padding: 22px;
                border-radius: 14px;
            }

            .profile-top {
                align-items: flex-start;
            }

            .avatar {
                width: 65px;
                height: 65px;
                font-size: 24px;
            }

            .profile-name {
                font-size: 19px;
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
                        class="nav-link"
                        href="${pageContext.request.contextPath}/interviews">

                        <i class="bi bi-calendar-event"></i>

                        <span>Interviews</span>

                    </a>

                </li>


            </ul>


            <!-- PROFILE DROPDOWN -->

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

<main class="page-container">


    <!-- PAGE HEADER -->

    <div class="page-header">

        <h1 class="page-title">
            My Profile
        </h1>

        <p class="page-subtitle">
            Manage your HireFlow account information and profile details.
        </p>

    </div>


    <!-- SUCCESS MESSAGE -->

    <% if (request.getAttribute("success") != null) { %>

        <div class="alert alert-success">

            <i class="bi bi-check-circle me-2"></i>

            <%= request.getAttribute("success") %>

        </div>

    <% } %>


    <!-- ERROR MESSAGE -->

    <% if (request.getAttribute("error") != null) { %>

        <div class="alert alert-danger">

            <i class="bi bi-exclamation-circle me-2"></i>

            <%= request.getAttribute("error") %>

        </div>

    <% } %>



    <!-- PROFILE CARD -->

    <section class="profile-card">


        <!-- PROFILE HEADER -->

        <div class="profile-top">

            <div class="avatar">

                <i class="bi bi-person"></i>

            </div>


            <div>

                <div class="profile-name">

                    ${user.name}

                </div>


                <div class="profile-role">

                    ${user.role}

                </div>

            </div>

        </div>



        <!-- FORM -->

        <form
            action="${pageContext.request.contextPath}/profile/update"
            method="post">


            <h2 class="form-section-title">
                Account Information
            </h2>


            <div class="row g-4">


                <!-- NAME -->

                <div class="col-md-6">

                    <label
                        for="name"
                        class="form-label">

                        Full Name

                    </label>

                    <input
                        type="text"
                        id="name"
                        name="name"
                        class="form-control"
                        value="${user.name}"
                        autocomplete="name"
                        required>

                </div>


                <!-- EMAIL -->

                <div class="col-md-6">

                    <label
                        for="email"
                        class="form-label">

                        Email Address

                    </label>

                    <input
                        type="email"
                        id="email"
                        name="email"
                        class="form-control"
                        value="${user.email}"
                        autocomplete="email"
                        required>

                </div>


                <!-- ROLE -->

                <div class="col-md-6">

                    <label
                        for="role"
                        class="form-label">

                        Account Role

                    </label>

                    <input
                        type="text"
                        id="role"
                        class="form-control"
                        value="${user.role}"
                        readonly>

                </div>


                <!-- STATUS -->

                <div class="col-md-6">

                    <label
                        for="status"
                        class="form-label">

                        Account Status

                    </label>

                    <input
                        type="text"
                        id="status"
                        class="form-control"
                        value="Active"
                        readonly>

                </div>


            </div>



            <!-- SAVE -->

            <div class="mt-4">

                <button
                    type="submit"
                    class="btn-save">

                    <i class="bi bi-check-lg"></i>

                    Save Changes

                </button>

            </div>


        </form>


    </section>


</main>



<!-- FOOTER -->

<footer>

    © 2026 HireFlow. All rights reserved.

</footer>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>