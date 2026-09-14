<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- =========================
         BASIC SEO
    ========================== -->

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta name="description"
          content="HireFlow is a modern Recruitment Management System by SK Solution for managing jobs, candidates, applications and interviews efficiently.">

    <meta name="keywords"
          content="HireFlow, recruitment management system, applicant tracking system, ATS, job management, candidate management, recruitment software, SK Solution">

    <meta name="author"
          content="SK Solution">

    <meta name="robots"
          content="index, follow">

    <meta name="theme-color"
          content="#2563eb">


    <!-- Open Graph SEO -->

    <meta property="og:title"
          content="HireFlow - Recruitment Management System">

    <meta property="og:description"
          content="Manage jobs, candidates, applications and interviews with HireFlow.">

    <meta property="og:type"
          content="website">


    <title>
        HireFlow | Recruitment Management System | SK Solution
    </title>


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


    <!-- =========================
         CUSTOM CSS
    ========================== -->

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
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid #e5e7eb;
            padding: 16px 0;
        }

        .navbar-brand {
            font-size: 25px;
            font-weight: 800;
            color: #2563eb !important;
            letter-spacing: -0.5px;
        }

        .navbar-brand span {
            color: #0f172a;
        }

        .nav-link {
            color: #475569 !important;
            font-weight: 500;
            margin-left: 18px;
            transition: 0.3s;
        }

        .nav-link:hover {
            color: #2563eb !important;
        }


        /* =========================
           HERO
        ========================== */

        .hero {
            min-height: 680px;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;

            background:
                radial-gradient(
                    circle at 10% 20%,
                    rgba(37, 99, 235, 0.13),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 90% 80%,
                    rgba(59, 130, 246, 0.12),
                    transparent 30%
                ),
                #f8fafc;
        }


        /* Animated background circles */

        .circle {
            position: absolute;
            border-radius: 50%;
            filter: blur(1px);
            opacity: 0.35;
            animation: float 7s ease-in-out infinite;
        }

        .circle-one {
            width: 180px;
            height: 180px;
            background: #bfdbfe;
            top: 100px;
            left: -60px;
        }

        .circle-two {
            width: 250px;
            height: 250px;
            background: #dbeafe;
            right: -80px;
            top: 80px;
            animation-delay: 2s;
        }

        .circle-three {
            width: 120px;
            height: 120px;
            background: #93c5fd;
            right: 30%;
            bottom: 30px;
            animation-delay: 4s;
        }


        @keyframes float {

            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-25px);
            }
        }


        /* =========================
           HERO CONTENT
        ========================== */

        .hero-content {
            position: relative;
            z-index: 2;
            animation: fadeUp 1s ease forwards;
        }


        @keyframes fadeUp {

            from {
                opacity: 0;
                transform: translateY(35px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }


        .badge-custom {
            display: inline-block;
            padding: 9px 16px;
            border-radius: 30px;
            background: #dbeafe;
            color: #1d4ed8;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 22px;
            animation: fadeUp 0.8s ease forwards;
        }


        .hero h1 {
            font-size: clamp(42px, 6vw, 70px);
            font-weight: 800;
            line-height: 1.05;
            letter-spacing: -2px;
            margin-bottom: 25px;
        }

        .hero h1 span {
            color: #2563eb;
        }


        .hero-description {
            max-width: 650px;
            font-size: 18px;
            line-height: 1.8;
            color: #64748b;
            margin-bottom: 35px;
        }


        /* =========================
           BUTTONS
        ========================== */

        .btn-primary-custom {
            background: #2563eb;
            border: none;
            color: white;
            padding: 13px 28px;
            border-radius: 9px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 8px 25px rgba(37, 99, 235, 0.25);
        }

        .btn-primary-custom:hover {
            background: #1d4ed8;
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 12px 30px rgba(37, 99, 235, 0.35);
        }


        .btn-outline-custom {
            padding: 12px 28px;
            border: 1px solid #cbd5e1;
            border-radius: 9px;
            color: #334155;
            font-weight: 600;
            margin-left: 10px;
            transition: 0.3s;
        }

        .btn-outline-custom:hover {
            background: white;
            border-color: #2563eb;
            color: #2563eb;
            transform: translateY(-3px);
        }


        /* =========================
           HERO CARD
        ========================== */

        .hero-card {
            position: relative;
            z-index: 2;
            background: white;
            border-radius: 22px;
            padding: 30px;
            box-shadow: 0 25px 70px rgba(15, 23, 42, 0.12);
            animation: cardFloat 5s ease-in-out infinite;
        }


        @keyframes cardFloat {

            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-12px);
            }
        }


        .dashboard-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .dashboard-title {
            font-size: 18px;
            font-weight: 700;
        }

        .online-dot {
            width: 10px;
            height: 10px;
            background: #22c55e;
            border-radius: 50%;
            display: inline-block;
            margin-right: 6px;
        }


        .mini-stat {
            background: #f8fafc;
            border-radius: 12px;
            padding: 18px;
            margin-bottom: 12px;
            transition: 0.3s;
        }

        .mini-stat:hover {
            transform: translateX(5px);
            background: #eff6ff;
        }

        .mini-stat i {
            font-size: 25px;
            color: #2563eb;
        }

        .mini-stat h4 {
            font-size: 22px;
            font-weight: 800;
            margin: 0;
        }

        .mini-stat p {
            font-size: 13px;
            color: #64748b;
            margin: 0;
        }


        /* =========================
           FEATURES
        ========================== */

        .features {
            padding: 100px 0;
            background: white;
        }

        .section-title {
            text-align: center;
            margin-bottom: 55px;
        }

        .section-title h2 {
            font-size: 38px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .section-title p {
            color: #64748b;
            max-width: 600px;
            margin: auto;
        }


        .feature-card {
            padding: 30px;
            border: 1px solid #e5e7eb;
            border-radius: 16px;
            height: 100%;
            transition: all 0.35s ease;
            background: white;
        }

        .feature-card:hover {
            transform: translateY(-8px);
            border-color: #bfdbfe;
            box-shadow: 0 20px 45px rgba(15, 23, 42, 0.08);
        }


        .feature-icon {
            width: 55px;
            height: 55px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 13px;
            background: #dbeafe;
            color: #2563eb;
            font-size: 25px;
            margin-bottom: 20px;
        }

        .feature-card h4 {
            font-size: 19px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .feature-card p {
            color: #64748b;
            line-height: 1.7;
            margin: 0;
        }


        /* =========================
           STATS
        ========================== */

        .stats {
            padding: 70px 0;
            background: #0f172a;
            color: white;
        }

        .stat-box {
            text-align: center;
        }

        .stat-box h3 {
            font-size: 38px;
            font-weight: 800;
            color: #60a5fa;
        }

        .stat-box p {
            color: #cbd5e1;
            margin: 0;
        }


        /* =========================
           CTA
        ========================== */

        .cta {
            padding: 100px 0;
            background: #eff6ff;
            text-align: center;
        }

        .cta h2 {
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .cta p {
            color: #64748b;
            margin-bottom: 30px;
        }


        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #020617;
            color: white;
            padding: 35px 0;
        }

        footer p {
            color: #94a3b8;
            margin: 0;
        }


        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 991px) {

            .hero {
                padding: 80px 0;
            }

            .hero-card {
                margin-top: 50px;
            }

            .nav-link {
                margin-left: 0;
            }
        }


        @media (max-width: 576px) {

            .hero h1 {
                font-size: 42px;
            }

            .hero-description {
                font-size: 16px;
            }

            .btn-outline-custom {
                margin-left: 0;
                margin-top: 12px;
            }

            .section-title h2 {
                font-size: 30px;
            }

            .cta h2 {
                font-size: 30px;
            }
        }

    </style>

</head>


<body>


<!-- =========================
     NAVBAR
========================== -->

<nav class="navbar navbar-expand-lg sticky-top">

    <div class="container">

        <a class="navbar-brand"
           href="${pageContext.request.contextPath}/home">

            Hire<span>Flow</span>

        </a>


        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">

            <span class="navbar-toggler-icon"></span>

        </button>


        <div class="collapse navbar-collapse"
             id="navbarNav">

            <ul class="navbar-nav ms-auto align-items-lg-center">

                <li class="nav-item">
                    <a class="nav-link"
                       href="#features">
                        Features
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="#about">
                        About
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/login">
                        Login
                    </a>
                </li>

                <li class="nav-item">
                    <a class="btn btn-primary-custom ms-lg-3"
                       href="${pageContext.request.contextPath}/register">
                        Get Started
                    </a>
                </li>

            </ul>

        </div>

    </div>

</nav>



<!-- =========================
     HERO SECTION
========================== -->

<section class="hero">

    <div class="circle circle-one"></div>
    <div class="circle circle-two"></div>
    <div class="circle circle-three"></div>


    <div class="container">

        <div class="row align-items-center">


            <!-- HERO CONTENT -->

            <div class="col-lg-7">

                <div class="hero-content">

                    <div class="badge-custom">

                        <i class="bi bi-stars"></i>

                        Smart Recruitment Management

                    </div>


                    <h1>

                        Hire the right talent.
                        <br>

                        <span>Build great teams.</span>

                    </h1>


                    <p class="hero-description">

                        HireFlow is a modern recruitment management
                        system that helps organizations manage jobs,
                        candidates, applications and interviews from
                        one simple platform.

                    </p>


                    <div>

                        <a href="${pageContext.request.contextPath}/register"
                           class="btn btn-primary-custom">

                            Get Started

                            <i class="bi bi-arrow-right ms-2"></i>

                        </a>


                        <a href="${pageContext.request.contextPath}/login"
                           class="btn btn-outline-custom">

                            Login

                        </a>

                    </div>

                </div>

            </div>


            <!-- HERO DASHBOARD CARD -->

            <div class="col-lg-5">

                <div class="hero-card">

                    <div class="dashboard-header">

                        <div class="dashboard-title">

                            Recruitment Overview

                        </div>

                        <div>

                            <span class="online-dot"></span>

                            Live

                        </div>

                    </div>


                    <div class="row">


                        <div class="col-6">

                            <div class="mini-stat">

                                <i class="bi bi-briefcase"></i>

                                <h4>Jobs</h4>

                                <p>Manage openings</p>

                            </div>

                        </div>


                        <div class="col-6">

                            <div class="mini-stat">

                                <i class="bi bi-people"></i>

                                <h4>Talent</h4>

                                <p>Manage candidates</p>

                            </div>

                        </div>


                        <div class="col-6">

                            <div class="mini-stat">

                                <i class="bi bi-file-earmark-text"></i>

                                <h4>Apps</h4>

                                <p>Track applications</p>

                            </div>

                        </div>


                        <div class="col-6">

                            <div class="mini-stat">

                                <i class="bi bi-calendar-check"></i>

                                <h4>Interviews</h4>

                                <p>Schedule interviews</p>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================
     FEATURES
========================== -->

<section class="features"
         id="features">

    <div class="container">

        <div class="section-title">

            <h2>
                Everything you need to hire better
            </h2>

            <p>
                Manage the complete recruitment process
                from job creation to final selection.
            </p>

        </div>


        <div class="row g-4">


            <!-- JOB MANAGEMENT -->

            <div class="col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">

                        <i class="bi bi-briefcase"></i>

                    </div>

                    <h4>
                        Job Management
                    </h4>

                    <p>
                        Create, update and manage job
                        openings with complete details.
                    </p>

                </div>

            </div>


            <!-- CANDIDATE MANAGEMENT -->

            <div class="col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">

                        <i class="bi bi-person-badge"></i>

                    </div>

                    <h4>
                        Candidate Management
                    </h4>

                    <p>
                        Maintain candidate information,
                        skills, experience and resumes.
                    </p>

                </div>

            </div>


            <!-- APPLICATION TRACKING -->

            <div class="col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">

                        <i class="bi bi-kanban"></i>

                    </div>

                    <h4>
                        Application Tracking
                    </h4>

                    <p>
                        Track applications and monitor
                        candidate progress efficiently.
                    </p>

                </div>

            </div>


            <!-- INTERVIEW MANAGEMENT -->

            <div class="col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">

                        <i class="bi bi-calendar-event"></i>

                    </div>

                    <h4>
                        Interview Management
                    </h4>

                    <p>
                        Schedule interviews, manage rounds
                        and record candidate feedback.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================
     STATS
========================== -->

<section class="stats"
         id="about">

    <div class="container">

        <div class="row g-4">


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <h3>01</h3>

                    <p>
                        Unified Platform
                    </p>

                </div>

            </div>


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <h3>04+</h3>

                    <p>
                        Recruitment Modules
                    </p>

                </div>

            </div>


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <h3>100%</h3>

                    <p>
                        Centralized Data
                    </p>

                </div>

            </div>


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <h3>24/7</h3>

                    <p>
                        Recruitment Access
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================
     CTA
========================== -->

<section class="cta">

    <div class="container">

        <h2>
            Ready to simplify recruitment?
        </h2>

        <p>
            Start managing your recruitment process
            with HireFlow today.
        </p>


        <a href="${pageContext.request.contextPath}/register"
           class="btn btn-primary-custom">

            Create Your Account

            <i class="bi bi-arrow-right ms-2"></i>

        </a>

    </div>

</section>



<!-- =========================
     FOOTER
========================== -->

<footer>

    <div class="container">

        <div class="row align-items-center">

            <div class="col-md-6">

                <h5 class="mb-2">
                    HireFlow
                </h5>

                <p>
                    Recruitment Management System
                    by SK Solution.
                </p>

            </div>


            <div class="col-md-6 text-md-end mt-3 mt-md-0">

                <p>
                    © 2026 SK Solution. All rights reserved.
                </p>

            </div>

        </div>

    </div>

</footer>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>