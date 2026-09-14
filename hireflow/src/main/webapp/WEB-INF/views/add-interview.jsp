<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Application" %>

<%
    List<Application> applications =
            (List<Application>) request.getAttribute("applications");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Add Interview | HireFlow</title>

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

        .form-label {
            font-weight: 500;
        }

    </style>

</head>

<body>


<!-- NAVBAR -->

<nav class="navbar navbar-dark">

    <div class="container">

        <a
            class="navbar-brand fw-bold"
            href="${pageContext.request.contextPath}/dashboard">

            HireFlow

        </a>

        <div>

            <a
                href="${pageContext.request.contextPath}/interviews"
                class="btn btn-light">

                Interviews

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

    <div class="row justify-content-center">

        <div class="col-md-8">

            <div class="card shadow-sm">

                <div class="card-body p-4">

                    <h2 class="text-center mb-4">
                        Schedule Interview
                    </h2>


                    <form
                        action="${pageContext.request.contextPath}/interviews/add"
                        method="post">


                        <!-- APPLICATION -->

                        <div class="mb-3">

                            <label class="form-label">
                                Candidate / Job Application
                            </label>

                            <select
                                name="applicationId"
                                class="form-select"
                                required>

                                <option value="">
                                    Select Application
                                </option>


                                <%
                                    if (applications != null) {

                                        for (Application app : applications) {
                                %>


                                <option value="<%= app.getId() %>">

                                    <%= app.getCandidate().getName() %>
                                    -
                                    <%= app.getJob().getTitle() %>

                                </option>


                                <%
                                        }
                                    }
                                %>

                            </select>

                        </div>


                        <!-- DATE -->

                        <div class="mb-3">

                            <label class="form-label">
                                Interview Date
                            </label>

                            <input
                                type="date"
                                name="interviewDate"
                                class="form-control"
                                required>

                        </div>


                        <!-- TIME -->

                        <div class="mb-3">

                            <label class="form-label">
                                Interview Time
                            </label>

                            <input
                                type="time"
                                name="interviewTime"
                                class="form-control"
                                required>

                        </div>


                        <!-- INTERVIEWER -->

                        <div class="mb-3">

                            <label class="form-label">
                                Interviewer
                            </label>

                            <input
                                type="text"
                                name="interviewer"
                                class="form-control"
                                placeholder="Enter interviewer name"
                                required>

                        </div>


                        <!-- ROUND -->

                        <div class="mb-3">

                            <label class="form-label">
                                Interview Round
                            </label>

                            <select
                                name="interviewRound"
                                class="form-select"
                                required>

                                <option value="">
                                    Select Round
                                </option>

                                <option value="HR">
                                    HR Round
                                </option>

                                <option value="TECHNICAL">
                                    Technical Round
                                </option>

                                <option value="MANAGERIAL">
                                    Managerial Round
                                </option>

                                <option value="FINAL">
                                    Final Round
                                </option>

                            </select>

                        </div>


                        <!-- MODE -->

                        <div class="mb-3">

                            <label class="form-label">
                                Interview Mode
                            </label>

                            <select
                                name="mode"
                                class="form-select"
                                required>

                                <option value="ONLINE">
                                    Online
                                </option>

                                <option value="OFFLINE">
                                    Offline
                                </option>

                            </select>

                        </div>


                        <!-- STATUS -->

                        <div class="mb-3">

                            <label class="form-label">
                                Interview Status
                            </label>

                            <select
                                name="status"
                                class="form-select"
                                required>

                                <option value="SCHEDULED">
                                    Scheduled
                                </option>

                                <option value="COMPLETED">
                                    Completed
                                </option>

                                <option value="SELECTED">
                                    Selected
                                </option>

                                <option value="REJECTED">
                                    Rejected
                                </option>

                                <option value="CANCELLED">
                                    Cancelled
                                </option>

                            </select>

                        </div>


                        <!-- FEEDBACK -->

                        <div class="mb-3">

                            <label class="form-label">
                                Feedback
                            </label>

                            <textarea
                                name="feedback"
                                class="form-control"
                                rows="4"
                                placeholder="Enter interview feedback"></textarea>

                        </div>


                        <!-- BUTTONS -->

                        <div class="d-flex gap-2">

                            <button
                                type="submit"
                                class="btn btn-primary">

                                Schedule Interview

                            </button>


                            <a
                                href="${pageContext.request.contextPath}/interviews"
                                class="btn btn-secondary">

                                Cancel

                            </a>

                        </div>


                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>

</html>