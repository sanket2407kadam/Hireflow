<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Dashboard | HireFlow</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

</head>

<body class="bg-light">

<nav class="navbar navbar-dark bg-primary">

    <div class="container">

        <span class="navbar-brand fw-bold">
            HireFlow
        </span>

        <div>

            <span class="text-white me-3">
                Welcome, ${user.name}
            </span>

            <a
                href="${pageContext.request.contextPath}/logout"
                class="btn btn-light btn-sm">

                Logout

            </a>

        </div>

    </div>

</nav>


<div class="container mt-5">

    <div class="card shadow">

        <div class="card-body">

            <h2>Welcome to HireFlow</h2>

            <p class="text-muted">
                Recruitment Management System
            </p>

            <hr>

            <p>
                <strong>Name:</strong>
                ${user.name}
            </p>

            <p>
                <strong>Email:</strong>
                ${user.email}
            </p>

            <p>
                <strong>Role:</strong>
                ${user.role}
            </p>

        </div>

    </div>

</div>

</body>
</html>