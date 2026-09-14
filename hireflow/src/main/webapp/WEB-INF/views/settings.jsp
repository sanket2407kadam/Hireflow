<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <!-- SEO -->
    <title>Settings | HireFlow Recruitment Management System</title>

    <meta name="description"
          content="Manage your HireFlow account settings, account information, password and security preferences.">

    <meta name="keywords"
          content="HireFlow settings, recruiter account settings, password settings, recruitment management system, HR management">

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

            box-shadow:
                0 4px 20px rgba(15, 23, 42, 0.06);

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

            box-shadow:
                0 5px 12px rgba(37, 99, 235, 0.25);
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


        /* =====================================================
           PROFILE BUTTON
        ===================================================== */

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

            box-shadow:
                0 0 0 3px rgba(37, 99, 235, 0.10);
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

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #60a5fa
                );

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


        /* MOBILE NAVBAR */

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
           MAIN CONTENT
        ===================================================== */

        .page-container {

            max-width: 1000px;

            margin: auto;

            padding: 48px 20px 60px;

            animation:
                pageAnimation 0.6s ease;
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

            animation:
                headerAnimation 0.7s ease;
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
           ALERT
        ===================================================== */

        .alert {

            border: none;

            border-radius: 10px;

            font-size: 13px;

            margin-bottom: 20px;

            animation:
                alertAnimation 0.5s ease;
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
           SETTINGS CARD
        ===================================================== */

        .settings-card {

            background: white;

            border: 1px solid #e2e8f0;

            border-radius: 18px;

            padding: 30px;

            margin-bottom: 20px;

            box-shadow:
                0 10px 30px rgba(15, 23, 42, 0.05);

            animation:
                cardAnimation 0.7s ease both;

            transition:
                box-shadow 0.3s ease,
                transform 0.3s ease;
        }


        .settings-card:nth-of-type(2) {

            animation-delay: 0.10s;
        }


        .settings-card:nth-of-type(3) {

            animation-delay: 0.20s;
        }


        .settings-card:hover {

            box-shadow:
                0 14px 38px rgba(15, 23, 42, 0.08);

            transform: translateY(-2px);
        }


        @keyframes cardAnimation {

            from {

                opacity: 0;

                transform:
                    translateY(22px)
                    scale(0.98);
            }

            to {

                opacity: 1;

                transform:
                    translateY(0)
                    scale(1);
            }
        }


        /* =====================================================
           SETTING ICON
        ===================================================== */

        .setting-icon {

            width: 45px;

            height: 45px;

            border-radius: 11px;

            background: #eff6ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 20px;

            margin-bottom: 15px;

            transition:
                transform 0.3s ease,
                background 0.3s ease;
        }


        .settings-card:hover .setting-icon {

            transform:
                scale(1.08)
                rotate(-3deg);

            background: #dbeafe;
        }


        .settings-title {

            font-size: 18px;

            font-weight: 700;

            margin-bottom: 6px;
        }


        .settings-description {

            color: #64748b;

            font-size: 13px;

            margin-bottom: 25px;
        }


        /* =====================================================
           FORM
        ===================================================== */

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

            transition:
                border-color 0.25s ease,
                box-shadow 0.25s ease,
                transform 0.25s ease;
        }


        .form-control:hover {

            border-color: #94a3b8;
        }


        .form-control:focus {

            border-color: #2563eb;

            box-shadow:
                0 0 0 4px rgba(37, 99, 235, 0.10);

            transform: translateY(-1px);
        }


        .form-control[readonly] {

            background: #f8fafc;

            color: #64748b;

            cursor: not-allowed;
        }


        /* =====================================================
           PASSWORD
        ===================================================== */

        .input-wrapper {

            position: relative;
        }


        .input-wrapper .form-control {

            padding-right: 48px;
        }


        .password-toggle {

            position: absolute;

            right: 14px;

            top: 50%;

            transform: translateY(-50%);

            border: none;

            background: transparent;

            color: #94a3b8;

            cursor: pointer;

            font-size: 16px;

            padding: 4px;

            transition: color 0.2s ease;
        }


        .password-toggle:hover {

            color: #2563eb;
        }


        /* =====================================================
           BUTTONS
        ===================================================== */

        .btn-save {

            display: inline-flex;

            align-items: center;

            gap: 6px;

            background: #2563eb;

            color: white;

            border: none;

            padding: 11px 20px;

            border-radius: 9px;

            font-size: 14px;

            font-weight: 600;

            box-shadow:
                0 5px 14px rgba(37, 99, 235, 0.20);

            transition:
                all 0.25s ease;
        }


        .btn-save:hover {

            background: #1d4ed8;

            color: white;

            transform: translateY(-2px);

            box-shadow:
                0 8px 18px rgba(37, 99, 235, 0.25);
        }


        .btn-save:active {

            transform: translateY(0);
        }


        .btn-logout {

            border-radius: 9px;

            padding: 10px 17px;

            font-size: 14px;

            font-weight: 600;

            transition: all 0.25s ease;
        }


        .btn-logout:hover {

            transform: translateY(-2px);
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

                border-top:
                    1px solid #e2e8f0;
            }


            .main-navigation {

                gap: 3px;
            }


            .main-navigation .nav-link {

                padding:
                    11px 13px !important;
            }


            .main-navigation
            .nav-link.active::after {

                display: none;
            }


            .navbar-actions {

                margin-top: 12px;

                padding-top: 12px;

                border-top:
                    1px solid #e2e8f0;

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

                padding:
                    32px 15px 45px;
            }


            .page-title {

                font-size: 26px;
            }


            .settings-card {

                padding: 22px;

                border-radius: 14px;
            }


            .settings-title {

                font-size: 17px;
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

<main class="page-container">


    <!-- PAGE HEADER -->

    <header class="page-header">

        <h1 class="page-title">
            Settings
        </h1>

        <p class="page-subtitle">
            Manage your HireFlow account and security preferences.
        </p>

    </header>


    <!-- =================================================
         SUCCESS
    ================================================= -->

    <% if (request.getAttribute("success") != null) { %>

        <div class="alert alert-success">

            <i class="bi bi-check-circle me-2"></i>

            <%= request.getAttribute("success") %>

        </div>

    <% } %>


    <!-- =================================================
         ERROR
    ================================================= -->

    <% if (request.getAttribute("error") != null) { %>

        <div class="alert alert-danger">

            <i class="bi bi-exclamation-circle me-2"></i>

            <%= request.getAttribute("error") %>

        </div>

    <% } %>



    <!-- =================================================
         ACCOUNT INFORMATION
    ================================================= -->

    <section
        class="settings-card"
        aria-labelledby="accountInformationTitle">


        <div class="setting-icon">

            <i class="bi bi-person"></i>

        </div>


        <h2
            id="accountInformationTitle"
            class="settings-title">

            Account Information

        </h2>


        <p class="settings-description">

            View your current HireFlow account information.

        </p>


        <div class="row g-3">


            <!-- NAME -->

            <div class="col-md-6">

                <label
                    for="accountName"
                    class="form-label">

                    Name

                </label>


                <input
                    type="text"
                    id="accountName"
                    class="form-control"
                    value="${user.name}"
                    readonly>

            </div>


            <!-- EMAIL -->

            <div class="col-md-6">

                <label
                    for="accountEmail"
                    class="form-label">

                    Email

                </label>


                <input
                    type="email"
                    id="accountEmail"
                    class="form-control"
                    value="${user.email}"
                    readonly>

            </div>


            <!-- ROLE -->

            <div class="col-md-6">

                <label
                    for="accountRole"
                    class="form-label">

                    Role

                </label>


                <input
                    type="text"
                    id="accountRole"
                    class="form-control"
                    value="${user.role}"
                    readonly>

            </div>


            <!-- STATUS -->

            <div class="col-md-6">

                <label
                    for="accountStatus"
                    class="form-label">

                    Status

                </label>


                <input
                    type="text"
                    id="accountStatus"
                    class="form-control"
                    value="Active"
                    readonly>

            </div>


        </div>


    </section>



    <!-- =================================================
         CHANGE PASSWORD
    ================================================= -->

    <section
        class="settings-card"
        aria-labelledby="changePasswordTitle">


        <div class="setting-icon">

            <i class="bi bi-shield-lock"></i>

        </div>


        <h2
            id="changePasswordTitle"
            class="settings-title">

            Change Password

        </h2>


        <p class="settings-description">

            Update your password to keep your HireFlow account secure.

        </p>


        <form
            action="${pageContext.request.contextPath}/settings/update-password"
            method="post">


            <!-- CURRENT PASSWORD -->

            <div class="mb-3">

                <label
                    for="currentPassword"
                    class="form-label">

                    Current Password

                </label>


                <div class="input-wrapper">


                    <input
                        type="password"
                        name="currentPassword"
                        id="currentPassword"
                        class="form-control"
                        autocomplete="current-password"
                        required>


                    <button
                        type="button"
                        class="password-toggle"
                        aria-label="Show current password"
                        onclick="togglePassword('currentPassword','currentIcon')">


                        <i
                            class="bi bi-eye"
                            id="currentIcon">
                        </i>


                    </button>


                </div>

            </div>



            <!-- NEW PASSWORD -->

            <div class="mb-3">

                <label
                    for="newPassword"
                    class="form-label">

                    New Password

                </label>


                <div class="input-wrapper">


                    <input
                        type="password"
                        name="newPassword"
                        id="newPassword"
                        class="form-control"
                        autocomplete="new-password"
                        required>


                    <button
                        type="button"
                        class="password-toggle"
                        aria-label="Show new password"
                        onclick="togglePassword('newPassword','newIcon')">


                        <i
                            class="bi bi-eye"
                            id="newIcon">
                        </i>


                    </button>


                </div>

            </div>



            <!-- CONFIRM PASSWORD -->

            <div class="mb-4">

                <label
                    for="confirmPassword"
                    class="form-label">

                    Confirm New Password

                </label>


                <div class="input-wrapper">


                    <input
                        type="password"
                        name="confirmPassword"
                        id="confirmPassword"
                        class="form-control"
                        autocomplete="new-password"
                        required>


                    <button
                        type="button"
                        class="password-toggle"
                        aria-label="Show confirm password"
                        onclick="togglePassword('confirmPassword','confirmIcon')">


                        <i
                            class="bi bi-eye"
                            id="confirmIcon">
                        </i>


                    </button>


                </div>

            </div>



            <!-- UPDATE -->

            <button
                type="submit"
                class="btn-save">

                <i class="bi bi-check-lg"></i>

                Update Password

            </button>


        </form>


    </section>



    <!-- =================================================
         SESSION
    ================================================= -->

    <section
        class="settings-card"
        aria-labelledby="sessionTitle">


        <div class="setting-icon">

            <i class="bi bi-box-arrow-right"></i>

        </div>


        <h2
            id="sessionTitle"
            class="settings-title">

            Session

        </h2>


        <p class="settings-description">

            Sign out from your current HireFlow session.

        </p>


        <a
            href="${pageContext.request.contextPath}/logout"
            class="btn btn-outline-danger btn-logout">

            <i class="bi bi-box-arrow-right me-1"></i>

            Logout

        </a>


    </section>


</main>



<!-- =====================================================
     FOOTER
===================================================== -->

<footer>

    © 2026 HireFlow. All rights reserved.

</footer>



<!-- =====================================================
     PASSWORD TOGGLE
===================================================== -->

<script>

    function togglePassword(inputId, iconId) {

        const input =
            document.getElementById(inputId);

        const icon =
            document.getElementById(iconId);


        if (input.type === "password") {

            input.type = "text";

            icon.classList.remove("bi-eye");

            icon.classList.add("bi-eye-slash");

        } else {

            input.type = "password";

            icon.classList.remove("bi-eye-slash");

            icon.classList.add("bi-eye");

        }

    }

</script>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>