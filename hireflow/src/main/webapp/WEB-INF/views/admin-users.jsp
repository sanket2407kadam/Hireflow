<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.User" %>

<%
    List<User> users =
            (List<User>) request.getAttribute("users");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Manage Users | HireFlow Admin</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        body {
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: #2563eb !important;
        }

        .card {
            border: none;
            border-radius: 12px;
        }

        .table td {
            vertical-align: middle;
        }

    </style>

</head>


<body>


<!-- NAVBAR -->

<nav class="navbar navbar-dark">

    <div class="container">

        <a
            class="navbar-brand fw-bold"
            href="${pageContext.request.contextPath}/admin/dashboard">

            HireFlow Admin

        </a>


        <div>

            <a
                href="${pageContext.request.contextPath}/admin/dashboard"
                class="btn btn-light">

                Dashboard

            </a>


            <a
                href="${pageContext.request.contextPath}/logout"
                class="btn btn-outline-light ms-2">

                Logout

            </a>

        </div>

    </div>

</nav>


<!-- MAIN -->

<div class="container mt-5">


    <div class="mb-4">

        <h2>
            Manage Users
        </h2>

        <p class="text-muted">
            View registered users and their roles.
        </p>

    </div>


    <div class="card shadow-sm">

        <div class="card-body">


            <% if (users == null || users.isEmpty()) { %>


                <div class="text-center py-5">

                    <h5 class="text-muted">
                        No users found
                    </h5>

                </div>


            <% } else { %>


                <div class="table-responsive">

                    <table class="table table-hover align-middle">


                        <thead class="table-light">

                        <tr>

                            <th>ID</th>

                            <th>Name</th>

                            <th>Email</th>

                            <th>Role</th>

                            <th>Action</th>

                        </tr>

                        </thead>


                        <tbody>


                        <%
                            for (User user : users) {
                        %>


                        <tr>


                            <td>
                                <%= user.getId() %>
                            </td>


                            <td>

                                <strong>
                                    <%= user.getName() %>
                                </strong>

                            </td>


                            <td>
                                <%= user.getEmail() %>
                            </td>


                            <td>

                                <%
                                    String role = user.getRole();

                                    String badgeClass =
                                            "bg-secondary";

                                    if ("ADMIN".equalsIgnoreCase(role)) {
                                        badgeClass = "bg-danger";
                                    }
                                    else if ("RECRUITER".equalsIgnoreCase(role)) {
                                        badgeClass = "bg-primary";
                                    }
                                %>


                                <span class="badge <%= badgeClass %>">

                                    <%= role %>

                                </span>

                            </td>


                            <td>


                                <%
                                    if (!"ADMIN".equalsIgnoreCase(user.getRole())) {
                                %>


                                <a
                                    href="${pageContext.request.contextPath}/admin/users/delete/<%= user.getId() %>"
                                    class="btn btn-sm btn-danger"
                                    onclick="return confirm('Are you sure you want to delete this user?');">

                                    Delete

                                </a>


                                <%
                                    } else {
                                %>


                                <span class="text-muted">
                                    Admin
                                </span>


                                <%
                                    }
                                %>


                            </td>


                        </tr>


                        <%
                            }
                        %>


                        </tbody>

                    </table>

                </div>


            <% } %>


        </div>

    </div>


</div>

</body>

</html>