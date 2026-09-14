<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- =========================
         SEO & META
    ========================== -->

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta name="description"
          content="Create your HireFlow account and manage recruitment activities including jobs, candidates, applications and interviews.">

    <meta name="keywords"
          content="HireFlow registration, recruitment management system, applicant tracking system, ATS, recruitment software, candidate management, job management">

    <meta name="author"
          content="HireFlow">

    <meta name="robots"
          content="index, follow">

    <meta name="theme-color"
          content="#2563eb">


    <!-- Open Graph -->

    <meta property="og:title"
          content="Create Account | HireFlow">

    <meta property="og:description"
          content="Create your HireFlow account and simplify your recruitment management process.">

    <meta property="og:type"
          content="website">


    <title>
        Register | HireFlow Recruitment Management System
    </title>


    <!-- =========================
         BOOTSTRAP
    ========================== -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- =========================
         BOOTSTRAP ICONS
    ========================== -->

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


    <!-- =========================
         GOOGLE FONT
    ========================== -->

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
            min-height: 100vh;
            overflow-x: hidden;
        }


        /* =========================
           REGISTER PAGE
        ========================== */

        .register-page {
            min-height: 100vh;

            display: flex;
            align-items: center;
            justify-content: center;

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


        /* =========================
           ANIMATED CIRCLES
        ========================== */

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

            top: 70px;
            left: -60px;
        }


        .circle-two {
            width: 250px;
            height: 250px;

            background: #dbeafe;

            right: -80px;
            top: 50px;

            animation-delay: 2s;
        }


        .circle-three {
            width: 120px;
            height: 120px;

            background: #93c5fd;

            right: 25%;
            bottom: 20px;

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
           MAIN CONTAINER
        ========================== */

        .register-container {
            width: 100%;
            max-width: 500px;

            padding: 25px;

            position: relative;
            z-index: 2;

            animation: fadeUp 0.9s ease forwards;
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


        /* =========================
           BRAND
        ========================== */

        .brand {
            text-align: center;

            margin-bottom: 22px;
        }


        .brand a {
            text-decoration: none;
        }


        .brand-name {
            font-size: 32px;

            font-weight: 800;

            letter-spacing: -1px;

            color: #0f172a;
        }


        .brand-name span {
            color: #2563eb;
        }


        .brand-subtitle {
            color: #64748b;

            font-size: 14px;

            margin-top: 5px;
        }


        /* =========================
           REGISTER CARD
        ========================== */

        .register-card {
            background: white;

            border-radius: 22px;

            padding: 38px 40px;

            border: 1px solid rgba(226, 232, 240, 0.8);

            box-shadow:
                0 25px 70px rgba(15, 23, 42, 0.12);

            animation: cardAppear 1s ease forwards;
        }


        @keyframes cardAppear {

            from {
                opacity: 0;
                transform: scale(0.95);
            }

            to {
                opacity: 1;
                transform: scale(1);
            }
        }


        /* =========================
           REGISTER ICON
        ========================== */

        .register-icon {
            width: 65px;
            height: 65px;

            display: flex;

            align-items: center;
            justify-content: center;

            margin: 0 auto 18px;

            border-radius: 17px;

            background: #dbeafe;

            color: #2563eb;

            font-size: 29px;

            animation: iconFloat 4s ease-in-out infinite;
        }


        @keyframes iconFloat {

            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-7px);
            }
        }


        /* =========================
           HEADING
        ========================== */

        .register-title {
            text-align: center;

            font-size: 28px;

            font-weight: 800;

            margin-bottom: 8px;
        }


        .register-description {
            text-align: center;

            color: #64748b;

            font-size: 14px;

            line-height: 1.7;

            margin-bottom: 25px;
        }


        /* =========================
           ACCOUNT BADGE
        ========================== */

        .account-badge {
            display: flex;

            align-items: center;
            justify-content: center;

            width: fit-content;

            margin: 0 auto 25px;

            padding: 8px 14px;

            border-radius: 30px;

            background: #eff6ff;

            color: #1d4ed8;

            font-size: 13px;

            font-weight: 600;
        }


        .account-dot {
            width: 8px;
            height: 8px;

            background: #22c55e;

            border-radius: 50%;

            margin-right: 7px;

            animation: pulse 1.8s infinite;
        }


        @keyframes pulse {

            0% {
                transform: scale(1);
                opacity: 1;
            }

            50% {
                transform: scale(1.4);
                opacity: 0.5;
            }

            100% {
                transform: scale(1);
                opacity: 1;
            }
        }


        /* =========================
           ERROR MESSAGE
        ========================== */

        .error-message {
            background: #fef2f2;

            color: #dc2626;

            border: 1px solid #fecaca;

            border-radius: 10px;

            padding: 12px 15px;

            font-size: 14px;

            margin-bottom: 20px;

            animation: errorShake 0.4s ease;
        }


        @keyframes errorShake {

            0%, 100% {
                transform: translateX(0);
            }

            25% {
                transform: translateX(-6px);
            }

            75% {
                transform: translateX(6px);
            }
        }


        /* =========================
           FORM
        ========================== */

        .form-label {
            font-size: 14px;

            font-weight: 600;

            color: #334155;

            margin-bottom: 8px;
        }


        .input-wrapper {
            position: relative;
        }


        .input-icon {
            position: absolute;

            left: 15px;
            top: 50%;

            transform: translateY(-50%);

            color: #94a3b8;

            font-size: 17px;

            z-index: 2;

            transition: 0.3s;
        }


        .form-control {
            height: 50px;

            border: 1px solid #cbd5e1;

            border-radius: 10px;

            padding-left: 45px;
            padding-right: 45px;

            font-size: 14px;

            transition: all 0.3s ease;
        }


        .form-control:focus {
            border-color: #2563eb;

            box-shadow:
                0 0 0 4px rgba(37, 99, 235, 0.10);
        }


        /* =========================
           PASSWORD TOGGLE
        ========================== */

        .password-toggle {
            position: absolute;

            right: 15px;
            top: 50%;

            transform: translateY(-50%);

            border: none;

            background: transparent;

            color: #94a3b8;

            cursor: pointer;

            font-size: 17px;

            transition: 0.3s;
        }


        .password-toggle:hover {
            color: #2563eb;
        }


        /* =========================
           REGISTER BUTTON
        ========================== */

        .register-btn {
            width: 100%;

            height: 52px;

            border: none;

            border-radius: 10px;

            background: #2563eb;

            color: white;

            font-size: 15px;

            font-weight: 600;

            transition: all 0.3s ease;

            box-shadow:
                0 8px 25px rgba(37, 99, 235, 0.25);
        }


        .register-btn:hover {
            background: #1d4ed8;

            color: white;

            transform: translateY(-3px);

            box-shadow:
                0 12px 30px rgba(37, 99, 235, 0.35);
        }


        .register-btn:active {
            transform: translateY(0);
        }


        /* =========================
           LOGIN LINK
        ========================== */

        .login-text {
            text-align: center;

            color: #64748b;

            font-size: 14px;

            margin-top: 23px;

            margin-bottom: 0;
        }


        .login-text a {
            color: #2563eb;

            font-weight: 600;

            text-decoration: none;

            transition: 0.3s;
        }


        .login-text a:hover {
            color: #1d4ed8;
        }


        /* =========================
           BACK HOME
        ========================== */

        .back-home {
            text-align: center;

            margin-top: 20px;
        }


        .back-home a {
            display: inline-flex;

            align-items: center;

            gap: 6px;

            color: #64748b;

            font-size: 13px;

            text-decoration: none;

            transition: 0.3s;
        }


        .back-home a:hover {
            color: #2563eb;

            transform: translateX(-3px);
        }


        /* =========================
           FOOTER
        ========================== */

        .footer-text {
            text-align: center;

            color: #94a3b8;

            font-size: 12px;

            margin-top: 22px;
        }


        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 576px) {

            .register-container {
                padding: 18px;
            }

            .register-card {
                padding: 30px 22px;

                border-radius: 18px;
            }

            .register-title {
                font-size: 25px;
            }

            .brand-name {
                font-size: 29px;
            }

            .circle-one {
                width: 130px;
                height: 130px;
            }

            .circle-two {
                width: 180px;
                height: 180px;
            }

        }

    </style>

</head>


<body>


<!-- =========================
     REGISTER PAGE
========================== -->

<section class="register-page">


    <!-- Animated Background -->

    <div class="circle circle-one"></div>

    <div class="circle circle-two"></div>

    <div class="circle circle-three"></div>


    <div class="register-container">


        <!-- =========================
             BRAND
        ========================== -->

        <div class="brand">

            <a href="${pageContext.request.contextPath}/home">

                <div class="brand-name">
                    Hire<span>Flow</span>
                </div>

            </a>

            <div class="brand-subtitle">
                Recruitment Management System
            </div>

        </div>


        <!-- =========================
             REGISTER CARD
        ========================== -->

        <div class="register-card">


            <!-- Register Icon -->

            <div class="register-icon">

                <i class="bi bi-person-plus"></i>

            </div>


            <!-- Account Badge -->

            <div class="account-badge">

                <span class="account-dot"></span>

                Start Your Recruitment Journey

            </div>


            <!-- Heading -->

            <h1 class="register-title">

                Create Account

            </h1>


            <p class="register-description">

                Create your HireFlow account and
                start managing recruitment efficiently.

            </p>


            <!-- =========================
                 ERROR MESSAGE
            ========================== -->

            <% if (request.getAttribute("error") != null) { %>

                <div class="error-message">

                    <i class="bi bi-exclamation-circle me-2"></i>

                    <%= request.getAttribute("error") %>

                </div>

            <% } %>


            <!-- =========================
                 REGISTRATION FORM
            ========================== -->

            <form
                action="${pageContext.request.contextPath}/register"
                method="post">


                <!-- NAME -->

                <div class="mb-3">

                    <label class="form-label">
                        Full Name
                    </label>

                    <div class="input-wrapper">

                        <input
                            type="text"
                            name="name"
                            class="form-control"
                            placeholder="Enter your full name"
                            autocomplete="name"
                            required>

                        <i class="bi bi-person input-icon"></i>

                    </div>

                </div>


                <!-- EMAIL -->

                <div class="mb-3">

                    <label class="form-label">
                        Email Address
                    </label>

                    <div class="input-wrapper">

                        <input
                            type="email"
                            name="email"
                            class="form-control"
                            placeholder="Enter your email address"
                            autocomplete="email"
                            required>

                        <i class="bi bi-envelope input-icon"></i>

                    </div>

                </div>


                <!-- PASSWORD -->

                <div class="mb-4">

                    <label class="form-label">
                        Password
                    </label>

                    <div class="input-wrapper">

                        <input
                            type="password"
                            name="password"
                            id="password"
                            class="form-control"
                            placeholder="Create a password"
                            autocomplete="new-password"
                            required>

                        <i class="bi bi-lock input-icon"></i>

                        <button
                            type="button"
                            class="password-toggle"
                            onclick="togglePassword()"
                            aria-label="Show password">

                            <i
                                class="bi bi-eye"
                                id="passwordIcon">
                            </i>

                        </button>

                    </div>

                </div>


                <!-- REGISTER BUTTON -->

                <button
                    type="submit"
                    class="register-btn">

                    Create HireFlow Account

                    <i class="bi bi-arrow-right ms-2"></i>

                </button>

            </form>


            <!-- LOGIN LINK -->

            <p class="login-text">

                Already have an account?

                <a href="${pageContext.request.contextPath}/login">
                    Sign In
                </a>

            </p>


        </div>


        <!-- BACK HOME -->

        <div class="back-home">

            <a href="${pageContext.request.contextPath}/home">

                <i class="bi bi-arrow-left"></i>

                Back to Home

            </a>

        </div>


        <!-- FOOTER -->

        <div class="footer-text">

            © 2026 HireFlow. All rights reserved.

        </div>


    </div>

</section>


<!-- =========================
     PASSWORD SCRIPT
========================== -->

<script>

    function togglePassword() {

        const password =
            document.getElementById("password");

        const icon =
            document.getElementById("passwordIcon");


        if (password.type === "password") {

            password.type = "text";

            icon.classList.remove("bi-eye");

            icon.classList.add("bi-eye-slash");

        } else {

            password.type = "password";

            icon.classList.remove("bi-eye-slash");

            icon.classList.add("bi-eye");

        }

    }

</script>


</body>

</html>