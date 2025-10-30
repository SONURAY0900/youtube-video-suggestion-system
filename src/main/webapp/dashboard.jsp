<%@ page import="java.sql.*, java.io.*, java.net.*, org.json.*, java.util.*,API.MY_API" %>
<%
    Integer uid = (Integer)session.getAttribute("uid");
    String uname = (String)session.getAttribute("uname");
    if(uid == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - YouTube Search</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
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
        }

        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 50%, rgba(255, 0, 0, 0.1) 0%, transparent 50%),
                        radial-gradient(circle at 80% 80%, rgba(255, 0, 0, 0.08) 0%, transparent 50%);
            pointer-events: none;
            z-index: 0;
        }

        /* Header Navigation */
        .navbar {
            background: linear-gradient(135deg, #1a1a1a, #0a0a0a);
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            border-bottom: 2px solid rgba(255, 0, 0, 0.3);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .navbar-left {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .logo-badge {
            width: 45px;
            height: 45px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 15px rgba(255, 0, 0, 0.4);
        }

        .logo-badge svg {
            width: 24px;
            height: 24px;
            fill: white;
        }

        .navbar h1 {
            font-size: 20px;
            font-weight: 600;
            color: #fff;
        }

        .navbar-right {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 8px 16px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .user-avatar {
            width: 35px;
            height: 35px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
            color: white;
            font-size: 14px;
        }

        .user-name {
            font-weight: 500;
            font-size: 14px;
            color: #fff;
        }

        .logout-btn {
            padding: 10px 20px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .logout-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 0, 0, 0.4);
        }

        /* Main Container */
        .container {
            max-width: 1600px;
            margin: 0 auto;
            padding: 30px 20px;
            display: grid;
            grid-template-columns: 350px 1fr;
            gap: 25px;
            position: relative;
            z-index: 1;
        }

        /* Sidebar - Search History */
        .sidebar {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 25px;
            height: fit-content;
            position: sticky;
            top: 100px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        .sidebar h3 {
            font-size: 18px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .sidebar h3 svg {
            width: 20px;
            height: 20px;
            fill: #ff0000;
        }

        .history-list {
            list-style: none;
            padding: 0;
            margin: 0 0 25px 0;
            max-height: 400px;
            overflow-y: auto;
        }

        .history-list::-webkit-scrollbar {
            width: 6px;
        }

        .history-list::-webkit-scrollbar-track {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
        }

        .history-list::-webkit-scrollbar-thumb {
            background: rgba(255, 0, 0, 0.5);
            border-radius: 10px;
        }

        .history-item {
            padding: 12px 15px;
            margin-bottom: 8px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.05);
            transition: all 0.3s ease;
        }

        .history-item:hover {
            background: rgba(255, 0, 0, 0.1);
            border-color: rgba(255, 0, 0, 0.3);
            transform: translateX(5px);
        }

        .history-item a {
            color: #ff6666;
            text-decoration: none;
            font-weight: 500;
            font-size: 14px;
            display: block;
            margin-bottom: 4px;
        }

        .history-time {
            font-size: 11px;
            color: #999;
        }

        .no-history {
            text-align: center;
            padding: 20px;
            color: #666;
            font-size: 13px;
        }

        /* Search Form */
        .search-form {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .search-input {
            width: 100%;
            padding: 12px 16px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            color: #fff;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
        }

        .search-input:focus {
            outline: none;
            border-color: rgba(255, 0, 0, 0.5);
            background: rgba(255, 255, 255, 0.08);
            box-shadow: 0 0 0 4px rgba(255, 0, 0, 0.1);
        }

        .search-input::placeholder {
            color: #666;
        }

        .search-btn {
            padding: 12px 20px;
            background: linear-gradient(135deg, #ff0000, #cc0000);
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
            transition: all 0.3s ease;
            font-family: 'Poppins', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .search-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(255, 0, 0, 0.4);
        }

        .search-btn svg {
            width: 16px;
            height: 16px;
            fill: white;
        }

        /* Results Section */
        .results-section {
            min-height: 400px;
        }

        .results-header {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 20px 25px;
            margin-bottom: 25px;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .results-header h2 {
            font-size: 22px;
            font-weight: 600;
            color: #fff;
            margin: 0;
        }

        .results-header svg {
            width: 28px;
            height: 28px;
            fill: #ff0000;
        }

        .empty-state {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 60px 40px;
            text-align: center;
        }

        .empty-state svg {
            width: 80px;
            height: 80px;
            fill: rgba(255, 255, 255, 0.1);
            margin-bottom: 20px;
        }

        .empty-state h3 {
            font-size: 20px;
            color: #999;
            margin-bottom: 10px;
        }

        .empty-state p {
            font-size: 14px;
            color: #666;
        }

        /* Video Grid */
        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
            gap: 25px;
        }

        .video-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 20px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .video-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(255, 0, 0, 0.2);
            border-color: rgba(255, 0, 0, 0.3);
        }

        .video-thumbnail {
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 15px;
            position: relative;
            padding-bottom: 56.25%;
        }

        .video-thumbnail iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
            border-radius: 10px;
        }

        .video-info h4 {
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 10px;
            line-height: 1.4;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .video-link {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: #ff6666;
            text-decoration: none;
            font-size: 13px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .video-link:hover {
            color: #ff0000;
        }

        .video-link svg {
            width: 14px;
            height: 14px;
            fill: currentColor;
        }

        .error-msg {
            background: rgba(255, 0, 0, 0.1);
            border: 1px solid rgba(255, 0, 0, 0.3);
            color: #ff6666;
            padding: 15px 20px;
            border-radius: 10px;
            margin: 20px 0;
            text-align: center;
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .container {
                grid-template-columns: 300px 1fr;
            }

            .video-grid {
                grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            }
        }

        @media (max-width: 968px) {
            .container {
                grid-template-columns: 1fr;
            }

            .sidebar {
                position: relative;
                top: 0;
            }

            .video-grid {
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            }
        }

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                gap: 15px;
                padding: 15px;
            }

            .navbar h1 {
                font-size: 18px;
            }

            .video-grid {
                grid-template-columns: 1fr;
            }

            .container {
                padding: 20px 15px;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <div class="navbar-left">
            <div class="logo-badge">
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                </svg>
            </div>
            <h1>YouTube Search Dashboard</h1>
        </div>
        <div class="navbar-right">
            <div class="user-info">
                <div class="user-avatar"><%= uname.substring(0,1).toUpperCase() %></div>
                <span class="user-name"><%= uname %></span>
            </div>
            <a href="logout.jsp" class="logout-btn">Logout</a>
        </div>
    </div>

    <div class="container">
        <!-- Sidebar: Search History -->
        <aside class="sidebar">
            <h3>
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="12" cy="12" r="10"/>
                    <polyline points="12 6 12 12 16 14"/>
                </svg>
                Search History
            </h3>
            <ul class="history-list">
                <%
                try{
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");
                    PreparedStatement ps = con.prepareStatement(
                        "SELECT keyword, TO_CHAR(search_time,'DD-MON-YYYY HH24:MI') AS tm FROM search_history WHERE user_id=? ORDER BY search_time DESC"
                    );
                    ps.setInt(1, uid);
                    ResultSet rs = ps.executeQuery();
                    boolean hasData = false;
                    while(rs.next()){
                        hasData = true;
                        String kw = rs.getString("keyword");
                %>
                        <li class="history-item">
                            <a href="dashboard.jsp?query=<%= kw %>"><%= kw %></a>
                            <div class="history-time"><%= rs.getString("tm") %></div>
                        </li>
                <%
                    }
                    if(!hasData) out.println("<li class='no-history'>No previous searches yet</li>");
                    con.close();
                }catch(Exception e){ 
                    out.println("<li class='error-msg'>Error: "+e.getMessage()+"</li>"); 
                }
                %>
            </ul>

            <h3>
                <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="11" cy="11" r="8"/>
                    <path d="M21 21l-4.35-4.35"/>
                </svg>
                New Search
            </h3>
            <form method="get" class="search-form">
                <input type="text" name="query" class="search-input" placeholder="Enter search topic..." required>
                <button type="submit" class="search-btn">
                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <circle cx="11" cy="11" r="8"/>
                        <path d="M21 21l-4.35-4.35"/>
                    </svg>
                    Search Videos
                </button>
            </form>
        </aside>

        <!-- Main Results Section -->
        <main class="results-section">
            <%
            String query = request.getParameter("query");
            if(query != null && !query.trim().isEmpty()){
            %>
                <div class="results-header">
                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                    </svg>
                    <h2>Results for "<%= query %>"</h2>
                </div>
            <%
                // Save search to DB
                try{
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");
                    PreparedStatement ps = con.prepareStatement(
                        "INSERT INTO search_history VALUES(search_seq.NEXTVAL, ?, ?, SYSTIMESTAMP)"
                    );
                    ps.setInt(1, uid);
                    ps.setString(2, query);
                    ps.executeUpdate();
                    con.close();
                }catch(Exception e){ 
                    out.println("<div class='error-msg'>⚠ Database Error: "+e.getMessage()+"</div>"); 
                }

                // YouTube API call
                String apiKey = MY_API.getAPI();
                String encoded = URLEncoder.encode(query, "UTF-8");
                String urlString = "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=6&q="+encoded+"&key="+apiKey;

                try{
                    URL url = new URL(urlString);
                    HttpURLConnection conn = (HttpURLConnection)url.openConnection();
                    conn.setRequestMethod("GET");
                    conn.connect();

                    BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    String line;
                    while((line = br.readLine()) != null) sb.append(line);
                    br.close();

                    JSONObject json = new JSONObject(sb.toString());
                    JSONArray items = json.getJSONArray("items");
            %>
                    <div class="video-grid">
            <%
                    for(int i=0; i<items.length(); i++){
                        JSONObject v = items.getJSONObject(i);
                        String videoId = v.getJSONObject("id").getString("videoId");
                        String title = v.getJSONObject("snippet").getString("title");
                        String link = "https://www.youtube.com/watch?v=" + videoId;
            %>
                        <div class="video-card">
                            <div class="video-thumbnail">
                                <iframe src="https://www.youtube.com/embed/<%= videoId %>" allowfullscreen></iframe>
                            </div>
                            <div class="video-info">
                                <h4><%= title %></h4>
                                <a href="<%= link %>" target="_blank" class="video-link">
                                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/>
                                        <polyline points="15 3 21 3 21 9"/>
                                        <line x1="10" y1="14" x2="21" y2="3"/>
                                    </svg>
                                    Watch on YouTube
                                </a>
                            </div>
                        </div>
            <%
                    }
            %>
                    </div>
            <%
                }catch(Exception e){
                    out.println("<div class='error-msg'>⚠ YouTube API Error: "+e.getMessage()+"</div>");
                }
            } else {
            %>
                <div class="empty-state">
                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <circle cx="11" cy="11" r="8"/>
                        <path d="M21 21l-4.35-4.35"/>
                    </svg>
                    <h3>No Search Yet</h3>
                    <p>Enter a topic in the search box or click on a previous search from your history</p>
                </div>
            <%
            }
            %>
        </main>
    </div>
</body>
</html>
