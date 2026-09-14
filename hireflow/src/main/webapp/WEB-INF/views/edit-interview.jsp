<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.sksolution.hireflow.entity.Interview" %>
<%@ page import="com.sksolution.hireflow.entity.Application" %>

<%
    Interview interview =
            (Interview) request.getAttribute("interview");

    List<Application> applications =
            (List<Application>) request.getAttribute("applications");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Edit Interview | HireFlow</title>

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
                        Edit Interview
                    </h2>


                    <form
                        action="${pageContext.request.contextPath}/interviews/update"
                        method="post">


                        <!-- ID -->

                        <input
                            type="hidden"
                            name="id"
                            value="<%= interview.getId() %>">


                        <!-- APPLICATION -->

                        <div class="mb-3">

                            <label class="form-label">
                                Candidate / Job Application
                            </label>

                            <select
                                name="applicationId"
                                class="form-select"
                                required>


                                <%
                                    for (Application app : applications) {

                                        boolean selected =
                                                interview.getApplication()
                                                        .getId()
                                                        .equals(app.getId());
                                %>


                                <option
                                    value="<%= app.getId() %>"
                                    <%= selected ? "selected" : "" %>>

                                    <%= app.getCandidate().getName() %>
                                    -
                                    <%= app.getJob().getTitle() %>

                                </option>


                                <%
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
                                value="<%= interview.getInterviewDate() %>"
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
                                value="<%= interview.getInterviewTime() %>"
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
                                value="<%= interview.getInterviewer() %>"
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


                                <option
                                    value="HR"
                                    <%= "HR".equals(interview.getInterviewRound())
                                            ? "selected"
                                            : "" %>>

                                    HR Round

                                </option>


                                <option
                                    value="TECHNICAL"
                                    <%= "TECHNICAL".equals(interview.getInterviewRound())
                                            ? "selected"
                                            : "" %>>

                                    Technical Round

                                </option>


                                <option
                                    value="MANAGERIAL"
                                    <%= "MANAGERIAL".equals(interview.getInterviewRound())
                                            ? "selected"
                                            : "" %>>

                                    Managerial Round

                                </option>


                                <option
                                    value="FINAL"
                                    <%= "FINAL".equals(interview.getInterviewRound())
                                            ? "selected"
                                            : "" %>>

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


                                <option
                                    value="ONLINE"
                                    <%= "ONLINE".equals(interview.getMode())
                                            ? "selected"
                                            : "" %>>

                                    Online

                                </option>


                                <option
                                    value="OFFLINE"
                                    <%= "OFFLINE".equals(interview.getMode())
                                            ? "selected"
                                            : "" %>>

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


                                <option
                                    value="SCHEDULED"
                                    <%= "SCHEDULED".equals(interview.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Scheduled

                                </option>


                                <option
                                    value="COMPLETED"
                                    <%= "COMPLETED".equals(interview.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Completed

                                </option>


                                <option
                                    value="SELECTED"
                                    <%= "SELECTED".equals(interview.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Selected

                                </option>


                                <option
                                    value="REJECTED"
                                    <%= "REJECTED".equals(interview.getStatus())
                                            ? "selected"
                                            : "" %>>

                                    Rejected

                                </option>


                                <option
                                    value="CANCELLED"
                                    <%= "CANCELLED".equals(interview.getStatus())
                                            ? "selected"
                                            : "" %>>

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
                                rows="4"><%= interview.getFeedback() != null
                                        ? interview.getFeedback()
                                        : "" %></textarea>

                        </div>


                        <!-- BUTTONS -->

                        <div class="d-flex gap-2">

                            <button
                                type="submit"
                                class="btn btn-primary">

                                Update Interview

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