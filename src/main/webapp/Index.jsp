<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YouTube Video Suggestion System</title>
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
            overflow-x: hidden;
            position: relative;
        }

        /* Animated gradient overlay */
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
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .logo-container {
            margin-bottom: 20px;
            animation: fadeInDown 1s ease-out;
        }

        .logo {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 10px 40px rgba(255, 0, 0, 0.3);
            margin: 0 auto;
        }

        .logo svg {
            width: 45px;
            height: 45px;
            fill: white;
        }

        h1 {
            font-size: clamp(28px, 5vw, 48px);
            font-weight: 700;
            text-align: center;
            margin-bottom: 20px;
            background: linear-gradient(135deg, #ffffff, #ff6666);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: fadeInDown 1s ease-out 0.2s both;
        }

        .description {
            font-size: clamp(14px, 2vw, 18px);
            line-height: 1.8;
            max-width: 700px;
            margin: 0 auto 40px;
            text-align: center;
            color: #cccccc;
            font-weight: 300;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .description strong {
            color: #ff6666;
            font-weight: 600;
        }

        .feature-highlight {
            display: inline-block;
            padding: 2px 8px;
            background: rgba(255, 0, 0, 0.1);
            border-radius: 4px;
            border: 1px solid rgba(255, 0, 0, 0.3);
        }

        .btn-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            max-width: 900px;
            width: 100%;
            margin: 0 auto;
            padding: 0 20px;
            animation: fadeInUp 1s ease-out 0.6s both;
        }

        @media (max-width: 768px) {
            .btn-container {
                grid-template-columns: 1fr;
                max-width: 400px;
            }
        }

        a.button {
            text-decoration: none;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            color: white;
            padding: 18px 30px;
            border-radius: 16px;
            font-weight: 600;
            font-size: 16px;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid rgba(255, 255, 255, 0.1);
            position: relative;
            overflow: hidden;
        }

        a.button::before {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.1), transparent);
            transition: left 0.5s;
        }

        a.button:hover::before {
            left: 100%;
        }

        a.button:hover {
            background: rgba(255, 0, 0, 0.2);
            border-color: rgba(255, 0, 0, 0.5);
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(255, 0, 0, 0.3);
        }

        a.button:active {
            transform: translateY(-1px);
        }

        /* Special styling for admin button */
        a.button.admin {
            background: linear-gradient(135deg, rgba(255, 0, 0, 0.2), rgba(255, 0, 0, 0.1));
            border-color: rgba(255, 0, 0, 0.4);
        }

        a.button.admin:hover {
            background: linear-gradient(135deg, rgba(255, 0, 0, 0.4), rgba(255, 0, 0, 0.2));
            border-color: rgba(255, 0, 0, 0.6);
        }

        .footer {
            margin-top: 60px;
            font-size: 14px;
            color: #666;
            text-align: center;
            animation: fadeIn 1s ease-out 0.8s both;
        }

        .footer a {
            color: #ff6666;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #ff0000;
        }

        /* Animated background elements */
        .bubble {
            position: fixed;
            bottom: -100px;
            background: rgba(255, 0, 0, 0.05);
            border: 1px solid rgba(255, 0, 0, 0.1);
            border-radius: 50%;
            pointer-events: none;
            animation: rise 15s infinite ease-in;
        }

        @keyframes rise {
            0% { 
                transform: translateY(0) scale(1) rotate(0deg); 
                opacity: 0; 
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            100% { 
                transform: translateY(-1100px) scale(1.5) rotate(360deg); 
                opacity: 0; 
            }
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
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

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
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

        /* Responsive adjustments */
        @media (max-width: 480px) {
            .logo {
                width: 60px;
                height: 60px;
            }

            .logo svg {
                width: 35px;
                height: 35px;
            }

            .description {
                font-size: 14px;
                padding: 0 10px;
            }

            a.button {
                padding: 16px 24px;
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo-container">
            <div class="logo">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                </svg>
            </div>
        </div>

        <h1>YouTube Video Suggestion System</h1>
        
        <p class="description">
            Discover trending YouTube videos instantly! This intelligent application fetches 
            <strong>live video suggestions</strong> using YouTube API, lets users 
            <strong>search topics</strong>, stores history in <span class="feature-highlight">Oracle DB</span>, 
            and provides an <strong>Admin Dashboard</strong> for real-time analytics.
        </p>

        <div class="btn-container">
            <a href="register.jsp" class="button">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 8px;">
                    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"></path>
                    <circle cx="9" cy="7" r="4"></circle>
                    <line x1="19" y1="8" x2="19" y2="14"></line>
                    <line x1="22" y1="11" x2="16" y2="11"></line>
                </svg>
                Register
            </a>
            <a href="login.jsp" class="button">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 8px;">
                    <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                    <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                </svg>
                User Login
            </a>
            <a href="adminLogin.jsp" class="button admin">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 8px;">
                    <path d="M12 2L2 7l10 5 10-5-10-5z"></path>
                    <path d="M2 17l10 5 10-5"></path>
                    <path d="M2 12l10 5 10-5"></path>
                </svg>
                Admin Login
            </a>
            <a href="about.jsp" class="button">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-right: 8px;">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="16" x2="12" y2="12"></line>
                    <line x1="12" y1="8" x2="12.01" y2="8"></line>
                </svg>
                About Project
            </a>
        </div>

        <div class="footer">
            © 2025 YouTube Video Suggestion System<br>
            Developed with JSP + Oracle
        </div>
    </div>

    <!-- Animated background elements -->
    <script>
        // Create bubbles
        for (let i = 0; i < 15; i++) {
            let b = document.createElement("div");
            b.className = "bubble";
            let size = Math.random() * 40 + 20;
            b.style.width = b.style.height = size + "px";
            b.style.left = Math.random() * 100 + "%";
            b.style.animationDuration = (Math.random() * 10 + 10) + "s";
            b.style.animationDelay = Math.random() * 5 + "s";
            document.body.appendChild(b);
        }

        // Create floating particles
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
