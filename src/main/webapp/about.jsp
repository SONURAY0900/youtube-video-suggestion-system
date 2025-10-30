<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Project - YouTube Video Suggestion System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            color: #e0e0e0;
            min-height: 100vh;
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

        /* Header */
        .header {
            text-align: center;
            padding: 60px 20px 40px;
            position: relative;
            z-index: 1;
        }

        .logo-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 15px;
            margin-bottom: 20px;
        }

        .logo-badge {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 8px 30px rgba(255, 0, 0, 0.4);
            animation: float 3s ease-in-out infinite;
        }

        .logo-badge svg {
            width: 32px;
            height: 32px;
            fill: white;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        h1 {
            font-size: clamp(28px, 5vw, 48px);
            font-weight: 800;
            background: linear-gradient(135deg, #ff0000, #ff6666, #ff0000);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 10px;
            text-shadow: 0 0 40px rgba(255, 0, 0, 0.3);
        }

        .subtitle {
            font-size: 16px;
            color: #999;
            font-weight: 300;
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px 60px;
            position: relative;
            z-index: 1;
        }

        /* Section Card */
        .section-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 35px;
            margin-bottom: 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease;
        }

        .section-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(255, 0, 0, 0.2);
            border-color: rgba(255, 0, 0, 0.3);
        }

        .section-header {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 2px solid rgba(255, 0, 0, 0.3);
        }

        .section-header svg {
            width: 28px;
            height: 28px;
            fill: #ff0000;
            flex-shrink: 0;
        }

        .section-card h2 {
            font-size: 24px;
            font-weight: 700;
            color: #fff;
            margin: 0;
        }

        .section-card p {
            text-align: justify;
            line-height: 1.8;
            font-size: 15px;
            color: #d0d0d0;
            margin-bottom: 15px;
        }

        /* Feature Grid */
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .feature-item {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 12px;
            padding: 20px;
            display: flex;
            align-items: flex-start;
            gap: 15px;
            transition: all 0.3s ease;
        }

        .feature-item:hover {
            background: rgba(255, 0, 0, 0.08);
            border-color: rgba(255, 0, 0, 0.3);
            transform: translateX(5px);
        }

        .feature-icon {
            width: 40px;
            height: 40px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .feature-icon svg {
            width: 20px;
            height: 20px;
            fill: white;
        }

        .feature-text {
            font-size: 14px;
            color: #e0e0e0;
            font-weight: 500;
            line-height: 1.5;
        }

        /* Tech Stack Grid */
        .tech-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .tech-category {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 12px;
            padding: 20px;
            transition: all 0.3s ease;
        }

        .tech-category:hover {
            background: rgba(255, 0, 0, 0.08);
            border-color: rgba(255, 0, 0, 0.3);
        }

        .tech-category h3 {
            font-size: 16px;
            font-weight: 600;
            color: #ff6666;
            margin-bottom: 10px;
        }

        .tech-category p {
            font-size: 14px;
            color: #d0d0d0;
            margin: 0;
            text-align: left;
        }

        /* Workflow Steps */
        .workflow-steps {
            display: grid;
            gap: 15px;
            margin-top: 20px;
        }

        .workflow-step {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-left: 4px solid #ff0000;
            border-radius: 10px;
            padding: 20px;
            display: flex;
            align-items: center;
            gap: 20px;
            transition: all 0.3s ease;
        }

        .workflow-step:hover {
            background: rgba(255, 0, 0, 0.08);
            border-left-width: 6px;
            transform: translateX(10px);
        }

        .step-number {
            width: 45px;
            height: 45px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
            font-size: 18px;
            color: white;
            flex-shrink: 0;
        }

        .step-text {
            font-size: 15px;
            color: #e0e0e0;
            line-height: 1.6;
        }

        /* Flowchart Container */
        .flowchart-container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 30px;
            margin-top: 25px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
        }

        .flowchart-container img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .flowchart-placeholder {
            background: linear-gradient(135deg, #f5f5f5, #e0e0e0);
            padding: 60px 40px;
            border-radius: 10px;
            color: #666;
            font-size: 16px;
            font-weight: 500;
        }

        /* Button Container */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .btn {
            text-decoration: none;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            color: white;
            padding: 14px 32px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 15px;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 4px 15px rgba(255, 0, 0, 0.3);
        }

        .btn.btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 0, 0, 0.5);
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(255, 0, 0, 0.5);
        }

        .btn svg {
            width: 18px;
            height: 18px;
            fill: white;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header {
                padding: 40px 20px 30px;
            }

            .section-card {
                padding: 25px 20px;
            }

            .feature-grid,
            .tech-grid {
                grid-template-columns: 1fr;
            }

            .button-container {
                flex-direction: column;
                align-items: stretch;
            }

            .btn {
                justify-content: center;
            }

            .workflow-step {
                flex-direction: column;
                text-align: center;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <div class="logo-container">
            <div class="logo-badge">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                </svg>
            </div>
        </div>
        <h1>YouTube Video Suggestion System</h1>
        <p class="subtitle">Project Documentation & Overview</p>
    </div>

    <div class="container">
        <!-- Project Objective -->
        <div class="section-card">
            <div class="section-header">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="12" cy="12" r="10"/>
                    <path d="M12 16v-4"/>
                    <path d="M12 8h.01"/>
                </svg>
                <h2>Project Objective</h2>
            </div>
            <p>
                The main objective of this project is to create a <strong>smart YouTube Video Suggestion Web App</strong>
                that allows users to search educational or entertainment videos directly from YouTube
                using <strong>live YouTube Data API</strong> integration.
                The system stores all search activity in an <strong>Oracle database</strong> and provides both
                <strong>User Dashboards</strong> and <strong>Admin Analytics</strong> with real-time insights and visualization.
            </p>
        </div>

        <!-- Key Features -->
        <div class="section-card">
            <div class="section-header">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <polyline points="9 11 12 14 22 4"/>
                    <path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/>
                </svg>
                <h2>Key Features</h2>
            </div>
            <div class="feature-grid">
                <div class="feature-item">
                    <div class="feature-icon">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
                            <circle cx="12" cy="7" r="4"/>
                        </svg>
                    </div>
                    <div class="feature-text">User Registration and Secure Login System</div>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                        </svg>
                    </div>
                    <div class="feature-text">Live YouTube Video Fetching via YouTube Data API v3</div>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/>
                        </svg>
                    </div>
                    <div class="feature-text">Video Suggestions with Title, Link & Embedded Player</div>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="12" cy="12" r="10"/>
                            <polyline points="12 6 12 12 16 14"/>
                        </svg>
                    </div>
                    <div class="feature-text">Personalized Search History for Each User</div>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M12 2L2 7l10 5 10-5-10-5z"/>
                            <path d="M2 17l10 5 10-5"/>
                            <path d="M2 12l10 5 10-5"/>
                        </svg>
                    </div>
                    <div class="feature-text">Admin Dashboard to Monitor Search Trends</div>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">
                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <line x1="18" y1="20" x2="18" y2="10"/>
                            <line x1="12" y1="20" x2="12" y2="4"/>
                            <line x1="6" y1="20" x2="6" y2="14"/>
                        </svg>
                    </div>
                    <div class="feature-text">Interactive Analytics with Google Charts Integration</div>
                </div>
            </div>
        </div>

        <!-- Technologies Used -->
        <div class="section-card">
            <div class="section-header">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <rect x="2" y="3" width="20" height="14" rx="2" ry="2"/>
                    <line x1="8" y1="21" x2="16" y2="21"/>
                    <line x1="12" y1="17" x2="12" y2="21"/>
                </svg>
                <h2>Technologies Used</h2>
            </div>
            <div class="tech-grid">
                <div class="tech-category">
                    <h3>Frontend</h3>
                    <p>JSP, HTML5, CSS3, JavaScript, Google Fonts</p>
                </div>
                <div class="tech-category">
                    <h3>Backend</h3>
                    <p>Java (JSP & Servlets), Oracle JDBC Driver</p>
                </div>
                <div class="tech-category">
                    <h3>Database</h3>
                    <p>Oracle 11g / 19c with Stored Procedures</p>
                </div>
                <div class="tech-category">
                    <h3>External API</h3>
                    <p>YouTube Data API v3 (Google Cloud)</p>
                </div>
                <div class="tech-category">
                    <h3>Visualization</h3>
                    <p>Google Charts Library (Pie & Bar Charts)</p>
                </div>
                <div class="tech-category">
                    <h3>Server</h3>
                    <p>Apache Tomcat / Oracle WebLogic</p>
                </div>
            </div>
        </div>

   

        <!-- Project Workflow -->
        <div class="section-card">
            <div class="section-header">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <line x1="12" y1="1" x2="12" y2="23"/>
                    <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/>
                </svg>
                <h2>Project Workflow</h2>
            </div>
            <div class="workflow-steps">
                <div class="workflow-step">
                    <div class="step-number">1</div>
                    <div class="step-text">User registers and logs into the system with secure authentication</div>
                </div>
                <div class="workflow-step">
                    <div class="step-number">2</div>
                    <div class="step-text">User enters a search keyword (e.g., "Java Tutorial", "Python Basics")</div>
                </div>
                <div class="workflow-step">
                    <div class="step-number">3</div>
                    <div class="step-text">JSP sends a live API request to YouTube Data API v3</div>
                </div>
                <div class="workflow-step">
                    <div class="step-number">4</div>
                    <div class="step-text">Server fetches top video results with titles, video IDs, and thumbnails</div>
                </div>
                <div class="workflow-step">
                    <div class="step-number">5</div>
                    <div class="step-text">Search details and keywords are stored in Oracle Database</div>
                </div>
                <div class="workflow-step">
                    <div class="step-number">6</div>
                    <div class="step-text">Admin accesses dashboard to view analytics, top topics, and user activity trends</div>
                </div>
            </div>
        </div>

        <!-- Action Buttons -->
        <div class="button-container">
            <a href="Index.jsp" class="btn">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/>
                    <polyline points="9 22 9 12 15 12 15 22"/>
                </svg>
                Go to Home
            </a>
            <a href="login.jsp" class="btn btn-secondary">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"/>
                    <polyline points="10 17 15 12 10 7"/>
                    <line x1="15" y1="12" x2="3" y2="12"/>
                </svg>
                User Login
            </a>
            <a href="adminLogin.jsp" class="btn btn-secondary">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M12 2L3.5 6.5v4.5c0 5.5 3.5 10.5 8.5 12 5-1.5 8.5-6.5 8.5-12V6.5L12 2z"/>
                    <polyline points="9 12 11 14 15 10"/>
                </svg>
                Admin Panel
            </a>
        </div>
    </div>

</body>
</html>
