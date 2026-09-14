<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Application" %>
<%@ page import="com.sksolution.hireflow.entity.Candidate" %>
<%@ page import="com.sksolution.hireflow.entity.Job" %>

<%
    Application application =
            (Application) request.getAttribute("application");

    List<Candidate> candidates =
            (List<Candidate>) request.getAttribute("candidates");

    List<Job> jobs =
            (List<Job>) request.getAttribute("jobs");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Edit Application | HireFlow</title>

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
                href="${pageContext.request.contextPath}/applications"
                class="btn btn-light">

                Applications

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
                        Edit Application
                    </h2>


                    <form
                        action="${pageContext.request.contextPath}/applications/update"
                        method="post">


                        <!-- ID -->

                        <input
                            type="hidden"
                            name="id"
                            value="<%= application.getId() %>">


                        <!-- CANDIDATE -->

                        <div class="mb-3">

                            <label class="form-label">
                                Candidate
                            </label>

                            <select
                                name="candidateId"
                                class="form-select"
                                required>


                                <%
                                    for (Candidate candidate : candidates) {

                                        boolean selected =
                                                application.getCandidate()
                                                        .getId()
                                                        .equals(candidate.getId());
                                %>


                                <option
                                    value="<%= candidate.getId() %>"
                                    <%= selected ? "selected" : "" %>>

                                    <%= candidate.getName() %>
                                    -
                                    <%= candidate.getEmail() %>

                                </option>


                                <%
                                    }
                                %>


                            </select>

                        </div>


                        <!-- JOB -->

                        <div class="mb-3">

                            <label class="form-label">
                                Job
                            </label>

                            <select
                                name="jobId"
                                class="form-select"
                                required>


                                <%
                                    for (Job job : jobs) {

                                        boolean selected =
                                                application.getJob()
                                                        .getId()
                                                        .equals(job.getId());
                                %>


                                <option
                                    value="<%= job.getId() %>"
                                    <%= selected ? "selected" : "" %>>

                                    <%= job.getTitle() %>
                                    -
                                    <%= job.getLocation() %>

                                </option>


                                <%
                                    }
                                %>


                            </select>

                        </div>


                        <!-- STATUS -->

                        <div class="mb-3">

                            <label class="form-label">
                                Application Status
                            </label>

                            <select
                                name="status"
                                class="form-select"
                                required>


                                <option
                                    value="APPLIED"
                                    <%= "APPLIED".equals(application.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Applied

                                </option>


                                <option
                                    value="SHORTLISTED"
                                    <%= "SHORTLISTED".equals(application.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Shortlisted

                                </option>


                                <option
                                    value="INTERVIEW"
                                    <%= "INTERVIEW".equals(application.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Interview

                                </option>


                                <option
                                    value="SELECTED"
                                    <%= "SELECTED".equals(application.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Selected

                                </option>


                                <option
                                    value="REJECTED"
                                    <%= "REJECTED".equals(application.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Rejected

                                </option>


                            </select>

                        </div>


                        <!-- NOTES -->

                        <div class="mb-3">

                            <label class="form-label">
                                Notes
                            </label>

                            <textarea
                                name="notes"
                                class="form-control"
                                rows="4"><%= application.getNotes() != null
                                        ? application.getNotes()
                                        : "" %></textarea>

                        </div>


                        <!-- BUTTONS -->

                        <div class="d-flex gap-2">

                            <button
                                type="submit"
                                class="btn btn-primary">

                                Update Application

                            </button>


                            <a
                                href="${pageContext.request.contextPath}/applications"
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