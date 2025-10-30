<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - YouTube Video Suggestion System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #1a1a1a 0%, #0a0a0a 100%);
            color: white;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            position: relative;
            overflow-x: hidden;
        }

        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 50%, rgba(255, 0, 0, 0.15) 0%, transparent 50%),
                        radial-gradient(circle at 80% 80%, rgba(255, 0, 0, 0.1) 0%, transparent 50%);
            pointer-events: none;
            z-index: 0;
        }

        .container {
            position: relative;
            z-index: 1;
            width: 100%;
            max-width: 420px;
            animation: fadeInUp 0.6s ease-out;
        }

        .header {
            text-align: center;
            margin-bottom: 24px;
        }

        .logo {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            box-shadow: 0 8px 30px rgba(255, 0, 0, 0.3);
            position: relative;
        }

        .logo svg {
            width: 34px;
            height: 34px;
            fill: white;
        }

        .admin-badge {
            position: absolute;
            top: -8px;
            right: -8px;
            background: linear-gradient(135deg, #ffd700, #ffa500);
            width: 26px;
            height: 26px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 12px rgba(255, 215, 0, 0.4);
            border: 2px solid #1a1a1a;
        }

        .admin-badge svg {
            width: 14px;
            height: 14px;
            fill: none;
            stroke: #1a1a1a;
            stroke-width: 2.5;
        }

        h1 {
            font-size: clamp(22px, 4vw, 28px);
            font-weight: 700;
            margin-bottom: 6px;
            background: linear-gradient(135deg, #ffd700, #ff6666);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .subtitle {
            font-size: 13px;
            color: #999;
            font-weight: 300;
        }

        .form-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: 20px;
            padding: 32px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
        }

        .admin-notice {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: 10px;
            padding: 12px 16px;
            margin-bottom: 24px;
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 12px;
            color: #ffd700;
        }

        .admin-notice svg {
            width: 18px;
            height: 18px;
            flex-shrink: 0;
        }

        .form-group {
            margin-bottom: 18px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-size: 13px;
            font-weight: 500;
            color: #ccc;
        }

        .input-wrapper {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            width: 18px;
            height: 18px;
            opacity: 0.5;
        }

        input[type="text"], 
        input[type="password"] {
            width: 100%;
            padding: 12px 14px 12px 44px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            background: rgba(255, 255, 255, 0.05);
            color: white;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, 
        input[type="password"]:focus {
            outline: none;
            border-color: rgba(255, 215, 0, 0.5);
            background: rgba(255, 255, 255, 0.08);
            box-shadow: 0 0 0 4px rgba(255, 215, 0, 0.1);
        }

        input::placeholder {
            color: #666;
        }

        .btn-submit {
            width: 100%;
            padding: 13px;
            border-radius: 10px;
            border: none;
            background: linear-gradient(135deg, #ffd700, #ffa500);
            color: #1a1a1a;
            font-weight: 700;
            font-size: 15px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 8px;
            font-family: 'Poppins', sans-serif;
            position: relative;
            overflow: hidden;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .btn-submit::before {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: left 0.5s;
        }

        .btn-submit:hover::before {
            left: 100%;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(255, 215, 0, 0.4);
        }

        .btn-submit:active {
            transform: translateY(0);
        }

        .message {
            padding: 12px 16px;
            border-radius: 10px;
            margin-top: 16px;
            font-size: 13px;
            text-align: center;
            animation: slideDown 0.3s ease-out;
        }

        .message.error {
            background: rgba(239, 68, 68, 0.1);
            border: 1px solid rgba(239, 68, 68, 0.3);
            color: #f87171;
        }

        .footer-links {
            text-align: center;
            margin-top: 20px;
            font-size: 13px;
            color: #999;
        }

        .footer-links a {
            color: #ff6666;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: #ff0000;
        }

        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: #999;
            text-decoration: none;
            font-size: 13px;
            margin-bottom: 16px;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: #ffd700;
        }

        .back-link svg {
            width: 16px;
            height: 16px;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Floating particles */
        .particle {
            position: fixed;
            width: 4px;
            height: 4px;
            background: rgba(255, 215, 0, 0.3);
            border-radius: 50%;
            pointer-events: none;
            animation: float 20s infinite ease-in-out;
        }

        @keyframes float {
            0%, 100% {
                transform: translate(0, 0);
                opacity: 0;
            }
            10%, 90% {
                opacity: 1;
            }
            50% {
                transform: translate(100px, -500px);
            }
        }

        @media (max-width: 480px) {
            .form-card {
                padding: 24px 20px;
            }

            .logo {
                width: 55px;
                height: 55px;
            }

            .logo svg {
                width: 32px;
                height: 32px;
            }

            .admin-badge {
                width: 24px;
                height: 24px;
            }

            .admin-badge svg {
                width: 12px;
                height: 12px;
            }

            h1 {
                font-size: 24px;
            }

            .back-link {
                margin-bottom: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="Index.jsp" class="back-link">
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="19" y1="12" x2="5" y2="12"></line>
                <polyline points="12 19 5 12 12 5"></polyline>
            </svg>
            Back to Home
        </a>

        <div class="header">
            <div class="logo">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                </svg>
                <div class="admin-badge">
                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 2L3.5 6.5v4.5c0 5.5 3.5 10.5 8.5 12 5-1.5 8.5-6.5 8.5-12V6.5L12 2z" stroke-linecap="round" stroke-linejoin="round"/>
                        <polyline points="9 12 11 14 15 10" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
            </div>
            <h1>Admin Access</h1>
            <p class="subtitle">Authorized Personnel Only</p>
        </div>

        <div class="form-card">
            <div class="admin-notice">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
                    <line x1="12" y1="9" x2="12" y2="13"></line>
                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                </svg>
                <span>This area is restricted to administrators only. Unauthorized access is prohibited.</span>
            </div>

            <form method="post">
                <div class="form-group">
                    <label for="username">Admin Username</label>
                    <div class="input-wrapper">
                        <svg class="input-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                        <input type="text" id="username" name="username" placeholder="Enter admin username" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password">Admin Password</label>
                    <div class="input-wrapper">
                        <svg class="input-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <input type="password" id="password" name="password" placeholder="Enter admin password" required>
                    </div>
                </div>

                <button type="submit" class="btn-submit">Access Dashboard</button>
            </form>

            <div class="footer-links">
                <a href="login.jsp">Back to User Login</a>
            </div>
        </div>

<%
if(request.getMethod().equalsIgnoreCase("post")){
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM admin WHERE username=? AND password=?");
        ps.setString(1, uname);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            session.setAttribute("admin", uname);
            response.sendRedirect("adminDashboard.jsp");
        }else{
            out.println("<div class='message error'>✗ Invalid admin credentials. Access denied.</div>");
        }
        con.close();
    }catch(Exception e){ 
        out.println("<div class='message error'>✗ Authentication failed: "+e.getMessage()+"</div>"); 
    }
}
%>
    </div>

    <!-- Floating particles -->
    <script>
        for (let i = 0; i < 30; i++) {
            let p = document.createElement("div");
            p.className = "particle";
            p.style.left = Math.random() * 100 + "%";
            p.style.top = Math.random() * 100 + "%";
            p.style.animationDuration = (Math.random() * 15 + 15) + "s";
            p.style.animationDelay = Math.random() * 5 + "s";
            document.body.appendChild(p);
        }
    </script>
</body>
</html>
