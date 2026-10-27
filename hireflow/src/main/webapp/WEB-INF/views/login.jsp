`
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Login to HireFlow Recruitment Management System to manage jobs, candidates and applications.">
    <meta name="theme-color" content="#2563eb">

    <title>Login | HireFlow Recruitment Management System</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

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

        .login-page {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            padding: 25px 0;
            background:
                radial-gradient(circle at 10% 20%, rgba(37,99,235,.13), transparent 30%),
                radial-gradient(circle at 90% 80%, rgba(59,130,246,.12), transparent 30%),
                #f8fafc;
        }

        .circle {
            position: absolute;
            border-radius: 50%;
            opacity: .35;
            animation: float 7s ease-in-out infinite;
            pointer-events: none;
        }

        .circle-one {
            width: 180px;
            height: 180px;
            background: #bfdbfe;
            top: 80px;
            left: -60px;
        }

        .circle-two {
            width: 250px;
            height: 250px;
            background: #dbeafe;
            right: -80px;
            top: 60px;
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
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .login-container {
            width: 100%;
            max-width: 470px;
            padding: 20px;
            position: relative;
            z-index: 2;
            animation: fadeUp .7s ease both;
        }

        .brand {
            text-align: center;
            margin-bottom: 25px;
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

        .login-card {
            background: #fff;
            border: 1px solid #e2e8f0;
            border-radius: 22px;
            padding: 38px;
            box-shadow: 0 25px 70px rgba(15,23,42,.10);
        }

        .login-icon {
            width: 65px;
            height: 65px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            border-radius: 17px;
            background: #dbeafe;
            color: #2563eb;
            font-size: 29px;
            animation: float 4s ease-in-out infinite;
        }

        .login-title {
            text-align: center;
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 8px;
        }

        .login-description {
            text-align: center;
            color: #64748b;
            font-size: 14px;
            line-height: 1.7;
            margin-bottom: 25px;
        }

        .security-badge {
            display: flex;
            align-items: center;
            justify-content: center;
            width: fit-content;
            margin: 0 auto 22px;
            padding: 8px 14px;
            border-radius: 30px;
            background: #eff6ff;
            color: #1d4ed8;
            font-size: 13px;
            font-weight: 600;
        }

        .security-dot {
            width: 8px;
            height: 8px;
            background: #22c55e;
            border-radius: 50%;
            margin-right: 8px;
        }

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
            pointer-events: none;
        }

        .form-control {
            height: 50px;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            padding-left: 45px;
            padding-right: 45px;
            font-size: 14px;
            transition: all .25s ease;
        }

        .form-control:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 4px rgba(37,99,235,.10);
        }

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
        }

        .password-toggle:hover {
            color: #2563eb;
        }

        .error-message {
            background: #fef2f2;
            color: #dc2626;
            border: 1px solid #fecaca;
            border-radius: 10px;
            padding: 12px 15px;
            font-size: 14px;
            margin-bottom: 20px;
            overflow-wrap: anywhere;
        }

        .login-btn {
            width: 100%;
            min-height: 52px;
            border: none;
            border-radius: 10px;
            background: #2563eb;
            color: white;
            font-size: 15px;
            font-weight: 600;
            transition: all .25s ease;
            box-shadow: 0 8px 25px rgba(37,99,235,.25);
        }

        .login-btn:hover {
            background: #1d4ed8;
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(37,99,235,.30);
        }

        .register-text {
            text-align: center;
            color: #64748b;
            font-size: 14px;
            margin: 24px 0 0;
        }

        .register-text a {
            color: #2563eb;
            font-weight: 600;
            text-decoration: none;
        }

        .register-text a:hover {
            color: #1d4ed8;
            text-decoration: underline;
        }

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
            transition: color .2s ease;
        }

        .back-home a:hover {
            color: #2563eb;
        }

        .footer-text {
            text-align: center;
            color: #94a3b8;
            font-size: 12px;
            margin-top: 22px;
        }

        @media (max-width: 576px) {
            .login-container { padding: 15px; }
            .login-card { padding: 28px 22px; border-radius: 18px; }
            .login-title { font-size: 25px; }
            .brand-name { font-size: 29px; }
            .circle-one { width: 130px; height: 130px; }
            .circle-two { width: 180px; height: 180px; }
        }
    </style>
</head>

<body>
<section class="login-page">

    <div class="circle circle-one"></div>
    <div class="circle circle-two"></div>
    <div class="circle circle-three"></div>

    <main class="login-container">

        <div class="brand">
            <a href="${pageContext.request.contextPath}/">
                <div class="brand-name">Hire<span>Flow</span></div>
            </a>
            <div class="brand-subtitle">Recruitment Management System</div>
        </div>

        <div class="login-card">

            <div class="login-icon">
                <i class="bi bi-person-lock"></i>
            </div>

            <div class="security-badge">
                <span class="security-dot"></span>
                Secure Recruitment Portal
            </div>

            <h1 class="login-title">Welcome Back</h1>

            <p class="login-description">
                Sign in to your HireFlow account and manage your recruitment activities.
            </p>

            <% if (request.getAttribute("error") != null) { %>
                <div class="error-message" role="alert">
                    <i class="bi bi-exclamation-circle me-2"></i>
                    <%= org.springframework.web.util.HtmlUtils.htmlEscape(
                        String.valueOf(request.getAttribute("error"))
                    ) %>
                </div>
            <% } %>

            <form action="${pageContext.request.contextPath}/login" method="post">

                <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>

                    <div class="input-wrapper">
                        <input
                            type="email"
                            id="email"
                            name="email"
                            class="form-control"
                            placeholder="Enter your email address"
                            autocomplete="username"
                            required>

                        <i class="bi bi-envelope input-icon"></i>
                    </div>
                </div>

                <div class="mb-4">
                    <label for="password" class="form-label">Password</label>

                    <div class="input-wrapper">
                        <input
                            type="password"
                            id="password"
                            name="password"
                            class="form-control"
                            placeholder="Enter your password"
                            autocomplete="current-password"
                            required>

                        <i class="bi bi-lock input-icon"></i>

                        <button
                            type="button"
                            class="password-toggle"
                            onclick="togglePassword()"
                            aria-label="Show password">
                            <i class="bi bi-eye" id="passwordIcon"></i>
                        </button>
                    </div>
                </div>

                <button type="submit" class="login-btn">
                    Sign In to HireFlow
                    <i class="bi bi-arrow-right ms-2"></i>
                </button>

            </form>

            <p class="register-text">
                Don't have an account?
                <a href="${pageContext.request.contextPath}/register">
                    Create an account
                </a>
            </p>

        </div>

        <div class="back-home">
            <a href="${pageContext.request.contextPath}/">
                <i class="bi bi-arrow-left"></i>
                Back to Home
            </a>
        </div>

        <div class="footer-text">
            © 2026 HireFlow. All rights reserved.
        </div>

    </main>
</section>

<script>
    function togglePassword() {
        const password = document.getElementById("password");
        const icon = document.getElementById("passwordIcon");
        const button = document.querySelector(".password-toggle");

        if (password.type === "password") {
            password.type = "text";
            icon.classList.replace("bi-eye", "bi-eye-slash");
            button.setAttribute("aria-label", "Hide password");
        } else {
            password.type = "password";
            icon.classList.replace("bi-eye-slash", "bi-eye");
            button.setAttribute("aria-label", "Show password");
        }
    }
</script>

</body>
</html>
