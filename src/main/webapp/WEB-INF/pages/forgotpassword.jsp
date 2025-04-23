<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset UI</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
</head>

<body>
	<%
	    String status = (String) request.getAttribute("status");
	    if ("not_found".equals(status)) {
	%>
	    <script>
	        Swal.fire({
	            icon: 'error',
	            title: 'Username not found',
	            text: 'Please check the username and try again.',
	            confirmButtonColor: '#d33'
	        });
	    </script>
	<%
	    }
	%>	

    <div id="ui1" class="card">
        <div class="illustration">
           <img src="<%= request.getContextPath() %>/images/Digital Security Concept.png" />
        </div>
        <h1>Forgot your password?</h1>
        <p>Enter your Username to reset the password</p>
        <form action="${pageContext.request.contextPath}/forgotPassword" method="post">
	        <input type="text" name = "username" class="input-field" placeholder="Enter your username" required>
	        <button type = "submit" class="btn-continue">Continue</button>
        </form>
    </div>
</body>

</html>