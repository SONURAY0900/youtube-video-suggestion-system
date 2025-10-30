<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - YouTube Video Suggestion System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <script src="https://accounts.google.com/gsi/client" async defer></script>
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
        }

        .logo svg {
            width: 34px;
            height: 34px;
            fill: white;
        }

        h1 {
            font-size: clamp(22px, 4vw, 28px);
            font-weight: 700;
            margin-bottom: 6px;
            background: linear-gradient(135deg, #ffffff, #ff6666);
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
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 32px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
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

        input[type="email"], 
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

        input[type="email"]:focus, 
        input[type="password"]:focus {
            outline: none;
            border-color: rgba(255, 0, 0, 0.5);
            background: rgba(255, 255, 255, 0.08);
            box-shadow: 0 0 0 4px rgba(255, 0, 0, 0.1);
        }

        input::placeholder {
            color: #666;
        }

        .forgot-password {
            text-align: right;
            margin-top: -10px;
            margin-bottom: 18px;
        }

        .forgot-password a {
            font-size: 12px;
            color: #ff6666;
            text-decoration: none;
            transition: color 0.3s;
        }

        .forgot-password a:hover {
            color: #ff0000;
        }

        .btn-submit {
            width: 100%;
            padding: 13px;
            border-radius: 10px;
            border: none;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            color: white;
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 8px;
            font-family: 'Poppins', sans-serif;
            position: relative;
            overflow: hidden;
        }

        .btn-submit::before {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: left 0.5s;
        }

        .btn-submit:hover::before {
            left: 100%;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(255, 0, 0, 0.4);
        }

        .btn-submit:active {
            transform: translateY(0);
        }

        .divider {
            display: flex;
            align-items: center;
            margin: 24px 0 20px;
            color: #666;
            font-size: 12px;
        }

        .divider::before,
        .divider::after {
            content: "";
            flex: 1;
            height: 1px;
            background: rgba(255, 255, 255, 0.1);
        }

        .divider span {
            padding: 0 15px;
        }

        .social-login {
            margin-bottom: 20px;
        }

        #googleSignInBtn {
            width: 100%;
            display: flex;
            justify-content: center;
        }

        .message {
            padding: 12px 16px;
            border-radius: 10px;
            margin-top: 16px;
            font-size: 13px;
            text-align: center;
            animation: slideDown 0.3s ease-out;
        }

        .message.success {
            background: rgba(34, 197, 94, 0.1);
            border: 1px solid rgba(34, 197, 94, 0.3);
            color: #4ade80;
        }

        .message.error {
            background: rgba(239, 68, 68, 0.1);
            border: 1px solid rgba(239, 68, 68, 0.3);
            color: #f87171;
        }

        .message a {
            color: inherit;
            font-weight: 600;
            text-decoration: underline;
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
            color: #ff6666;
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
            background: rgba(255, 255, 255, 0.3);
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
            </div>
            <h1>Welcome Back</h1>
            <p class="subtitle">Sign in to your account</p>
        </div>

        <div class="form-card">
            <!-- Google Sign In Button -->
            <div class="social-login">
                <div id="googleSignInBtn"></div>
            </div>

            <div class="divider">
                <span>OR</span>
            </div>

            <form method="post">
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <div class="input-wrapper">
                        <svg class="input-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="pass">Password</label>
                    <div class="input-wrapper">
                        <svg class="input-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <input type="password" id="pass" name="pass" placeholder="Enter your password" required>
                    </div>
                </div>

                <div class="forgot-password">
                    <a href="forgotPassword.jsp">Forgot password?</a>
                </div>

                <button type="submit" class="btn-submit">Sign In</button>
            </form>

            <div class="footer-links">
                Don't have an account? <a href="register.jsp">Sign up</a>
            </div>
        </div>

<%
if(request.getMethod().equalsIgnoreCase("post")){
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");
        PreparedStatement ps=con.prepareStatement("SELECT * FROM vdusers WHERE email=? AND password=?");
        ps.setString(1,email);
        ps.setString(2,pass);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            session.setAttribute("uid", rs.getInt("id"));
            session.setAttribute("uname", rs.getString("name"));
            session.setAttribute("uemail", rs.getString("email"));
            response.sendRedirect("dashboard.jsp");
        }else{
            out.println("<div class='message error'>✗ Invalid email or password. Please try again.</div>");
        }
        con.close();
    }catch(Exception e){
        out.println("<div class='message error'>✗ Login failed: "+e.getMessage()+"</div>");
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

        // Google Sign-In Configuration
        function handleCredentialResponse(response) {
            // Decode JWT token
            const token = response.credential;
            const base64Url = token.split('.')[1];
            const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
            const jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
                return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
            }).join(''));
            
            const payload = JSON.parse(jsonPayload);
            
            // Send to server
            fetch('googleAuth.jsp', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    name: payload.name,
                    email: payload.email,
                    googleId: payload.sub,
                    picture: payload.picture
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    window.location.href = 'dashboard.jsp';
                } else {
                    alert('Authentication failed: ' + (data.error || 'Unknown error'));
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred during authentication. Please try again.');
            });
        }

        // Initialize Google Sign-In when page loads
        window.onload = function () {
            google.accounts.id.initialize({
                client_id: '252817625899-2upie2jr2ic250sihva5ekj4bcecv4k4.apps.googleusercontent.com',
                callback: handleCredentialResponse
            });
            
            google.accounts.id.renderButton(
                document.getElementById('googleSignInBtn'),
                { 
                    theme: 'filled_black',
                    size: 'large',
                    text: 'signin_with',
                    shape: 'rectangular',
                    width: '100%'
                }
            );
        };
    </script>
</body>
</html>