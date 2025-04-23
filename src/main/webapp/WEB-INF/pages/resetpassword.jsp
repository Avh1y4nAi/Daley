<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password - Ghar Dalali</title>
    <%-- Make sure CSS path is correct and accessible --%>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/Password.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/styles.css"> <%-- Include main styles if needed --%>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/auth.css"> <%-- Include auth styles if needed --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f8f9fa;
        }

        .card {
            width: 100%;
            max-width: 543px;
            height: 560px;
            background: white;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 74px;
            text-align: center;
            margin: 20px;
        }

        .illustration {
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            height: 180px;
        }

        .illustration img {
            width: 100%;
            max-width: 240px;
        }

        .card h1 {
            font-size: 22px;
            color: #212529;
            margin-bottom: 13px;
            margin-top: -14px;
        }

        .card p {
            font-size: 16px;
            color: #495057;
            margin-bottom: 30px;
        }

        .card .input-field {
            width: 100%;
            padding: 16px;
            border: 1px solid #e9ecef;
            border-radius: 8px;
            font-size: 16px;
            color: #495057;
            background-color: #f8f9fa;
            margin-bottom: 24px;
        }

        .card .input-field::placeholder {
            color: #adb5bd;
        }

        .card .btn-continue {
            padding: 17px 34px;
            margin-top: 7px;
            background-color: #194cf5;

            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .card .btn-continue:hover {
            background-color: #2735f9;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(224, 94, 53, 0.4);

        }

        .card .btn-continue::after {
            content: '';
            position: absolute;
            width: 0;
            height: 100%;
            top: 0;
            left: 0;
            background-color: rgba(255, 255, 255, 0.1);
            transition: width 0.3s ease;
            z-index: 1;
        }

        .card .btn-continue::after {
            transform: translateY(0);
        }

        .card .btn-continue:hover::after {
            width: 100%;
        }
    </style>
<body>
    <%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null && !errorMessage.isEmpty()) {
%>
    <p style="color: red; text-align:center; font-weight: bold;">❌ <%= errorMessage %></p>
<%
    }
%>


    <div id="ui1" class="card" style="height: auto; padding-bottom: 20px;"> <%-- Adjusted height/padding --%>
        <div class="illustration">
             <%-- Ensure image path is correct and accessible --%>
            <img src="<%= request.getContextPath() %>/images/unlocked.png" alt="Reset Password Illustration"/>
        </div>
        <h1>Reset Your Password</h1>
        <p>Please enter and confirm your new password.</p> <%-- Updated text --%>

        <%-- Corrected form action, removed extra action= --%>
        <form action="${pageContext.request.contextPath}/resetPassword" method="post">
            <div class="form-group"> 
                <label for="newPass">New Password</label>
                <input type="password" id="newPass" name="newPassword" class="input-field" placeholder="Enter New Password" required>
            </div>

            <div class="form-group"> <%-- Added form-group for consistency --%>
                <label for="confirmPass">Confirm New Password</label>
                <input type="password" id="confirmPass" name="confirmPassword" class="input-field" placeholder="Confirm New Password" required>
             </div>

            <button type="submit" class="btn-continue btn btn-primary">Reset Password</button> <%-- Added btn classes if using main styles --%>
        </form>
    </div>

</body>
</html>
