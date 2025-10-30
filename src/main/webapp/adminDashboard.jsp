<%@ page import="java.sql.*" %>
<%
    String admin = (String)session.getAttribute("admin");
    if(admin == null){
        response.sendRedirect("adminLogin.jsp");
        return;
    }

    // Handle delete request
    String deleteId = request.getParameter("deleteId");
    if(deleteId != null && !deleteId.isEmpty()) {
        Connection delCon = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            delCon = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");
            PreparedStatement psDelete = delCon.prepareStatement("DELETE FROM search_history WHERE id = ?");
            psDelete.setString(1, deleteId);
            int deleted = psDelete.executeUpdate();
            psDelete.close();
            
            if(deleted > 0) {
                session.setAttribute("message", "Search log deleted successfully!");
                session.setAttribute("messageType", "success");
            } else {
                session.setAttribute("message", "Failed to delete search log!");
                session.setAttribute("messageType", "error");
            }
        } catch(Exception e) {
            session.setAttribute("message", "Error: " + e.getMessage());
            session.setAttribute("messageType", "error");
        } finally {
            if(delCon != null) try { delCon.close(); } catch(Exception e) {}
        }
        response.sendRedirect("adminDashboard.jsp");
        return;
    }

    // Handle bulk delete
    String deleteAll = request.getParameter("deleteAll");
    if(deleteAll != null && deleteAll.equals("true")) {
        Connection delCon = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            delCon = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");
            PreparedStatement psDeleteAll = delCon.prepareStatement("DELETE FROM search_history");
            int deleted = psDeleteAll.executeUpdate();
            psDeleteAll.close();
            
            session.setAttribute("message", deleted + " search logs deleted successfully!");
            session.setAttribute("messageType", "success");
        } catch(Exception e) {
            session.setAttribute("message", "Error: " + e.getMessage());
            session.setAttribute("messageType", "error");
        } finally {
            if(delCon != null) try { delCon.close(); } catch(Exception e) {}
        }
        response.sendRedirect("adminDashboard.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard - YouTube System</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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

    /* Header Section */
    .header {
        text-align: center;
        padding: 40px 20px 30px;
        position: relative;
        z-index: 1;
        background: rgba(255, 255, 255, 0.02);
        border-bottom: 1px solid rgba(255, 0, 0, 0.2);
    }

    .header-top {
        display: flex;
        justify-content: space-between;
        align-items: center;
        max-width: 1400px;
        margin: 0 auto 30px;
        padding: 0 20px;
    }

    .logo-section {
        display: flex;
        align-items: center;
        gap: 15px;
    }

    .logo-badge {
        width: 55px;
        height: 55px;
        background: linear-gradient(135deg, #ff0000, #cc0000);
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: 0 8px 30px rgba(255, 0, 0, 0.4);
        animation: float 3s ease-in-out infinite;
    }

    @keyframes float {
        0%, 100% { transform: translateY(0px); }
        50% { transform: translateY(-8px); }
    }

    .logo-text h1 {
        font-size: 28px;
        font-weight: 800;
        background: linear-gradient(135deg, #ff0000, #ff6666);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-bottom: 4px;
        text-align: left;
    }

    .logo-text p {
        font-size: 12px;
        color: #999;
        text-align: left;
    }

    .admin-info {
        display: flex;
        align-items: center;
        gap: 15px;
        background: rgba(255, 255, 255, 0.05);
        padding: 12px 20px;
        border-radius: 50px;
        border: 1px solid rgba(255, 255, 255, 0.1);
    }

    .admin-avatar {
        width: 40px;
        height: 40px;
        background: linear-gradient(135deg, #ff0000, #cc0000);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 700;
        color: white;
        font-size: 16px;
    }

    .admin-details {
        text-align: left;
    }

    .admin-name {
        font-size: 14px;
        font-weight: 600;
        color: #fff;
        margin-bottom: 2px;
    }

    .admin-role {
        font-size: 11px;
        color: #999;
    }

    .logout-btn {
        background: rgba(255, 0, 0, 0.1);
        border: 1px solid rgba(255, 0, 0, 0.3);
        color: #ff6666;
        padding: 8px 20px;
        border-radius: 20px;
        text-decoration: none;
        font-size: 13px;
        font-weight: 600;
        transition: all 0.3s ease;
        display: inline-flex;
        align-items: center;
        gap: 8px;
    }

    .logout-btn:hover {
        background: rgba(255, 0, 0, 0.2);
        transform: translateY(-2px);
    }

    /* Stats Cards Grid */
    .stats-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
        gap: 20px;
        max-width: 1400px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .stat-card {
        background: rgba(255, 255, 255, 0.05);
        backdrop-filter: blur(20px);
        border: 1px solid rgba(255, 255, 255, 0.1);
        border-radius: 16px;
        padding: 25px;
        position: relative;
        overflow: hidden;
        transition: all 0.3s ease;
    }

    .stat-card::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 3px;
        background: linear-gradient(90deg, #ff0000, #ff6666);
    }

    .stat-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 40px rgba(255, 0, 0, 0.3);
        border-color: rgba(255, 0, 0, 0.3);
    }

    .stat-header {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        margin-bottom: 15px;
    }

    .stat-icon {
        width: 50px;
        height: 50px;
        background: linear-gradient(135deg, rgba(255, 0, 0, 0.2), rgba(255, 0, 0, 0.1));
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-shrink: 0;
    }

    .stat-icon svg {
        width: 24px;
        height: 24px;
        fill: #ff6666;
    }

    .stat-label {
        font-size: 13px;
        color: #999;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    .stat-value {
        font-size: 32px;
        font-weight: 800;
        color: #fff;
        margin-bottom: 5px;
        line-height: 1;
    }

    .stat-change {
        font-size: 12px;
        color: #4ade80;
        font-weight: 600;
    }

    .stat-change.negative {
        color: #f87171;
    }

    /* Main Container */
    .container {
        max-width: 1400px;
        margin: 0 auto;
        padding: 30px 20px 60px;
        position: relative;
        z-index: 1;
    }

    /* Section Headers */
    h3 {
        color: #fff;
        font-size: 22px;
        font-weight: 700;
        margin: 40px 0 20px;
        padding-left: 15px;
        border-left: 4px solid #ff0000;
    }

    /* Charts Container */
    .chart-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
        gap: 25px;
        margin-bottom: 40px;
    }

    .chart-box {
        background: rgba(255, 255, 255, 0.05);
        backdrop-filter: blur(20px);
        border: 1px solid rgba(255, 255, 255, 0.1);
        border-radius: 16px;
        padding: 25px;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
        transition: all 0.3s ease;
    }

    .chart-box:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 40px rgba(255, 0, 0, 0.2);
        border-color: rgba(255, 0, 0, 0.3);
    }

    /* Table Section Header */
    .table-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        flex-wrap: wrap;
        gap: 15px;
    }

    .delete-all-btn {
        background: linear-gradient(135deg, #dc2626, #b91c1c);
        color: white;
        padding: 12px 24px;
        border-radius: 10px;
        border: none;
        font-size: 14px;
        font-weight: 600;
        cursor: pointer;
        display: inline-flex;
        align-items: center;
        gap: 8px;
        transition: all 0.3s ease;
        box-shadow: 0 4px 15px rgba(220, 38, 38, 0.3);
    }

    .delete-all-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(220, 38, 38, 0.5);
    }

    .delete-all-btn svg {
        width: 16px;
        height: 16px;
        fill: white;
    }

    /* Table Styles */
    .table-wrapper {
        background: rgba(255, 255, 255, 0.05);
        backdrop-filter: blur(20px);
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        padding: 16px;
        text-align: left;
        border-bottom: 1px solid rgba(255, 255, 255, 0.05);
    }

    th {
        background: linear-gradient(135deg, rgba(255, 0, 0, 0.3), rgba(255, 0, 0, 0.2));
        color: #fff;
        font-weight: 600;
        font-size: 13px;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    td {
        color: #d0d0d0;
        font-size: 14px;
    }

    tr:hover {
        background: rgba(255, 0, 0, 0.05);
    }

    tr:last-child td {
        border-bottom: none;
    }

    /* Delete Button */
    .delete-btn {
        background: rgba(220, 38, 38, 0.2);
        border: 1px solid rgba(220, 38, 38, 0.4);
        color: #ff6666;
        padding: 6px 14px;
        border-radius: 8px;
        font-size: 12px;
        font-weight: 600;
        cursor: pointer;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        transition: all 0.3s ease;
        text-decoration: none;
    }

    .delete-btn:hover {
        background: rgba(220, 38, 38, 0.3);
        transform: scale(1.05);
        box-shadow: 0 4px 12px rgba(220, 38, 38, 0.4);
    }

    .delete-btn svg {
        width: 14px;
        height: 14px;
        fill: currentColor;
    }

    /* Modal Styles */
    .modal {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.8);
        backdrop-filter: blur(5px);
        z-index: 1000;
        align-items: center;
        justify-content: center;
    }

    .modal.active {
        display: flex;
    }

    .modal-content {
        background: linear-gradient(135deg, #1a1a1a, #2a2a2a);
        border: 1px solid rgba(255, 0, 0, 0.3);
        border-radius: 20px;
        padding: 35px;
        max-width: 450px;
        width: 90%;
        box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
        animation: slideIn 0.3s ease;
    }

    @keyframes slideIn {
        from {
            transform: translateY(-50px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .modal-header {
        display: flex;
        align-items: center;
        gap: 15px;
        margin-bottom: 20px;
    }

    .modal-icon {
        width: 50px;
        height: 50px;
        background: linear-gradient(135deg, rgba(220, 38, 38, 0.3), rgba(220, 38, 38, 0.2));
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .modal-icon svg {
        width: 24px;
        height: 24px;
        fill: #ff6666;
    }

    .modal-header h3 {
        margin: 0;
        padding: 0;
        border: none;
        font-size: 22px;
        color: #fff;
    }

    .modal-body {
        color: #d0d0d0;
        font-size: 15px;
        line-height: 1.6;
        margin-bottom: 25px;
    }

    .modal-actions {
        display: flex;
        gap: 12px;
        justify-content: flex-end;
    }

    .modal-btn {
        padding: 10px 24px;
        border-radius: 10px;
        font-size: 14px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        border: none;
    }

    .modal-btn-cancel {
        background: rgba(255, 255, 255, 0.1);
        color: #d0d0d0;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .modal-btn-cancel:hover {
        background: rgba(255, 255, 255, 0.15);
    }

    .modal-btn-confirm {
        background: linear-gradient(135deg, #dc2626, #b91c1c);
        color: white;
        box-shadow: 0 4px 15px rgba(220, 38, 38, 0.3);
    }

    .modal-btn-confirm:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(220, 38, 38, 0.5);
    }

    /* Alert Messages */
    .alert {
        padding: 15px 20px;
        border-radius: 12px;
        margin-bottom: 20px;
        display: flex;
        align-items: center;
        gap: 12px;
        font-size: 14px;
        font-weight: 500;
        animation: slideDown 0.3s ease;
    }

    @keyframes slideDown {
        from {
            transform: translateY(-20px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .alert-success {
        background: rgba(34, 197, 94, 0.2);
        border: 1px solid rgba(34, 197, 94, 0.4);
        color: #4ade80;
    }

    .alert-error {
        background: rgba(239, 68, 68, 0.2);
        border: 1px solid rgba(239, 68, 68, 0.4);
        color: #ff6666;
    }

    .alert svg {
        width: 20px;
        height: 20px;
        fill: currentColor;
        flex-shrink: 0;
    }

    /* Responsive Design */
    @media (max-width: 1024px) {
        .chart-container {
            grid-template-columns: 1fr;
        }
    }

    @media (max-width: 768px) {
        .header-top {
            flex-direction: column;
            gap: 20px;
        }

        .logo-section {
            width: 100%;
            justify-content: center;
        }

        .admin-info {
            width: 100%;
            justify-content: center;
        }

        .stats-grid {
            grid-template-columns: 1fr;
        }

        .chart-container {
            grid-template-columns: 1fr;
        }

        .table-header {
            flex-direction: column;
            align-items: flex-start;
        }

        table {
            font-size: 12px;
        }

        th, td {
            padding: 12px 8px;
        }

        .modal-content {
            padding: 25px;
        }

        .modal-actions {
            flex-direction: column;
        }

        .modal-btn {
            width: 100%;
        }
    }
</style>
</head>
<body>
    <!-- Header Section -->
    <div class="header">
        <div class="header-top">
            <div class="logo-section">
                <div class="logo-badge">
                    <svg viewBox="0 0 24 24" fill="white">
                        <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                    </svg>
                </div>
                <div class="logo-text">
                    <h1>YouTube Analytics</h1>
                    <p>Admin Dashboard</p>
                </div>
            </div>
            <div class="admin-info">
                <div class="admin-avatar"><%= admin.substring(0, 1).toUpperCase() %></div>
                <div class="admin-details">
                    <div class="admin-name"><%= admin %></div>
                    <div class="admin-role">System Administrator</div>
                </div>
                <a href="logout.jsp" class="logout-btn">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M16 17v-3H9v-4h7V7l5 5-5 5M14 2a2 2 0 0 1 2 2v2h-2V4H5v16h9v-2h2v2a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9z"/>
                    </svg>
                    Logout
                </a>
            </div>
        </div>

        <!-- Stats Cards -->
        <div class="stats-grid">
            <%
            int totalUsers = 0, totalSearches = 0, activeUsers = 0, uniqueTopics = 0;
            int lastMonthSearches = 0, lastMonthActiveUsers = 0, lastMonthTopics = 0;
            String searchesChange = "", activeUsersChange = "", topicsChange = "";
            
            Connection statCon = null;
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                statCon = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");

                // Total Users (no comparison needed as it's cumulative)
                PreparedStatement ps = statCon.prepareStatement("SELECT COUNT(*) AS cnt FROM vdusers");
                ResultSet rs = ps.executeQuery();
                if(rs.next()) totalUsers = rs.getInt("cnt");
                rs.close(); ps.close();

                // Total Searches - Current Month
                ps = statCon.prepareStatement(
                    "SELECT COUNT(*) AS cnt FROM search_history " +
                    "WHERE TRUNC(search_time, 'MM') = TRUNC(SYSDATE, 'MM')"
                );
                rs = ps.executeQuery();
                if(rs.next()) totalSearches = rs.getInt("cnt");
                rs.close(); ps.close();

                // Total Searches - Last Month
                ps = statCon.prepareStatement(
                    "SELECT COUNT(*) AS cnt FROM search_history " +
                    "WHERE TRUNC(search_time, 'MM') = ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1)"
                );
                rs = ps.executeQuery();
                if(rs.next()) lastMonthSearches = rs.getInt("cnt");
                rs.close(); ps.close();

                // Calculate searches change percentage
                if(lastMonthSearches > 0) {
                    double changePercent = ((totalSearches - lastMonthSearches) * 100.0) / lastMonthSearches;
                    searchesChange = String.format("%+.0f%% from last month", changePercent);
                } else if(totalSearches > 0) {
                    searchesChange = "New data this month";
                } else {
                    searchesChange = "No data available";
                }

                // Active Users - Current Month
                ps = statCon.prepareStatement(
                    "SELECT COUNT(DISTINCT user_id) AS cnt FROM search_history " +
                    "WHERE TRUNC(search_time, 'MM') = TRUNC(SYSDATE, 'MM')"
                );
                rs = ps.executeQuery();
                if(rs.next()) activeUsers = rs.getInt("cnt");
                rs.close(); ps.close();

                // Active Users - Last Month
                ps = statCon.prepareStatement(
                    "SELECT COUNT(DISTINCT user_id) AS cnt FROM search_history " +
                    "WHERE TRUNC(search_time, 'MM') = ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1)"
                );
                rs = ps.executeQuery();
                if(rs.next()) lastMonthActiveUsers = rs.getInt("cnt");
                rs.close(); ps.close();

                // Calculate active users change percentage
                if(lastMonthActiveUsers > 0) {
                    double changePercent = ((activeUsers - lastMonthActiveUsers) * 100.0) / lastMonthActiveUsers;
                    activeUsersChange = String.format("%+.0f%% from last month", changePercent);
                } else if(activeUsers > 0) {
                    activeUsersChange = "New data this month";
                } else {
                    activeUsersChange = "No data available";
                }

                // Unique Topics - Current Month
                ps = statCon.prepareStatement(
                    "SELECT COUNT(DISTINCT keyword) AS cnt FROM search_history " +
                    "WHERE TRUNC(search_time, 'MM') = TRUNC(SYSDATE, 'MM')"
                );
                rs = ps.executeQuery();
                if(rs.next()) uniqueTopics = rs.getInt("cnt");
                rs.close(); ps.close();

                // Unique Topics - Last Month
                ps = statCon.prepareStatement(
                    "SELECT COUNT(DISTINCT keyword) AS cnt FROM search_history " +
                    "WHERE TRUNC(search_time, 'MM') = ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1)"
                );
                rs = ps.executeQuery();
                if(rs.next()) lastMonthTopics = rs.getInt("cnt");
                rs.close(); ps.close();

                // Calculate unique topics change percentage
                if(lastMonthTopics > 0) {
                    double changePercent = ((uniqueTopics - lastMonthTopics) * 100.0) / lastMonthTopics;
                    topicsChange = String.format("%+.0f%% from last month", changePercent);
                } else if(uniqueTopics > 0) {
                    topicsChange = "New data this month";
                } else {
                    topicsChange = "No data available";
                }

            } catch(Exception e) {
                out.println("<!-- Error: " + e.getMessage() + " -->");
                searchesChange = "Error calculating";
                activeUsersChange = "Error calculating";
                topicsChange = "Error calculating";
            } finally {
                if(statCon != null) try { statCon.close(); } catch(Exception e) {}
            }
            
            // Determine CSS class for stat changes
            String searchesClass = totalSearches >= lastMonthSearches ? "" : "negative";
            String activeUsersClass = activeUsers >= lastMonthActiveUsers ? "" : "negative";
            String topicsClass = uniqueTopics >= lastMonthTopics ? "" : "negative";
            %>

            <div class="stat-card">
                <div class="stat-header">
                    <div>
                        <div class="stat-label">Total Users</div>
                        <div class="stat-value"><%= totalUsers %></div>
                        <div class="stat-change">Registered users</div>
                    </div>
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24">
                            <path d="M16 17v2H2v-2s0-4 7-4 7 4 7 4m-3.5-9.5A3.5 3.5 0 1 0 9 11a3.5 3.5 0 0 0 3.5-3.5m3.44 5.5A5.32 5.32 0 0 1 18 17v2h4v-2s0-3.63-6.06-4M15 4a3.39 3.39 0 0 0-1.93.59 5 5 0 0 1 0 5.82A3.39 3.39 0 0 0 15 11a3.5 3.5 0 0 0 0-7z"/>
                        </svg>
                    </div>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-header">
                    <div>
                        <div class="stat-label">Total Searches</div>
                        <div class="stat-value"><%= totalSearches %></div>
                        <div class="stat-change <%= searchesClass %>"><%= searchesChange %></div>
                    </div>
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24">
                            <path d="M9.5,3A6.5,6.5 0 0,1 16,9.5C16,11.11 15.41,12.59 14.44,13.73L14.71,14H15.5L20.5,19L19,20.5L14,15.5V14.71L13.73,14.44C12.59,15.41 11.11,16 9.5,16A6.5,6.5 0 0,1 3,9.5A6.5,6.5 0 0,1 9.5,3M9.5,5C7,5 5,7 5,9.5C5,12 7,14 9.5,14C12,14 14,12 14,9.5C14,7 12,5 9.5,5Z"/>
                        </svg>
                    </div>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-header">
                    <div>
                        <div class="stat-label">Active Users</div>
                        <div class="stat-value"><%= activeUsers %></div>
                        <div class="stat-change <%= activeUsersClass %>"><%= activeUsersChange %></div>
                    </div>
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24">
                            <path d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M12,4A8,8 0 0,1 20,12A8,8 0 0,1 12,20A8,8 0 0,1 4,12A8,8 0 0,1 12,4M12,6A6,6 0 0,0 6,12A6,6 0 0,0 12,18A6,6 0 0,0 18,12A6,6 0 0,0 12,6M12,8A4,4 0 0,1 16,12A4,4 0 0,1 12,16A4,4 0 0,1 8,12A4,4 0 0,1 12,8M12,10A2,2 0 0,0 10,12A2,2 0 0,0 12,14A2,2 0 0,0 14,12A2,2 0 0,0 12,10Z"/>
                        </svg>
                    </div>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-header">
                    <div>
                        <div class="stat-label">Unique Topics</div>
                        <div class="stat-value"><%= uniqueTopics %></div>
                        <div class="stat-change <%= topicsClass %>"><%= topicsChange %></div>
                    </div>
                    <div class="stat-icon">
                        <svg viewBox="0 0 24 24">
                            <path d="M12,2L2,7V17H4V9.5L12,14L22,9L12,2M12,14L2.5,9L12,4L21.5,9L12,14M8,15.5V17.5L12,19.5L16,17.5V15.5L12,17.5L8,15.5Z"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Alert Messages -->
        <%
        String message = (String)session.getAttribute("message");
        String messageType = (String)session.getAttribute("messageType");
        if(message != null) {
            String alertClass = "alert-success";
            String iconPath = "M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z";
            if("error".equals(messageType)) {
                alertClass = "alert-error";
                iconPath = "M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z";
            }
        %>
            <div class="alert <%= alertClass %>">
                <svg viewBox="0 0 24 24">
                    <path d="<%= iconPath %>"/>
                </svg>
                <%= message %>
            </div>
        <%
            session.removeAttribute("message");
            session.removeAttribute("messageType");
        }
        %>

        <h3>Overall Search Summary</h3>

<%
    StringBuilder userData = new StringBuilder("[['User','Search Count']");
    StringBuilder topicData = new StringBuilder("[['Topic','Search Count']");

    Connection con = null;
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");

        // --- USER SEARCH COUNT ---
        PreparedStatement ps1 = con.prepareStatement(
            "SELECT u.name, COUNT(s.id) AS total_searches " +
            "FROM vdusers u LEFT JOIN search_history s ON u.id = s.user_id " +
            "GROUP BY u.name ORDER BY total_searches DESC"
        );
        ResultSet rs1 = ps1.executeQuery();
        while (rs1.next()) {
            String name = rs1.getString("name") != null ? rs1.getString("name").replace("'", "\\'") : "Unknown";
            int count = rs1.getInt("total_searches");
            userData.append(",['").append(name).append("',").append(count).append("]");
        }
        rs1.close();
        ps1.close();

        // --- TOP 5 TOPICS ---
        PreparedStatement ps2 = con.prepareStatement(
            "SELECT * FROM (" +
            "   SELECT keyword, COUNT(*) AS cnt " +
            "   FROM search_history " +
            "   GROUP BY keyword " +
            "   ORDER BY cnt DESC" +
            ") WHERE ROWNUM <= 5"
        );
        ResultSet rs2 = ps2.executeQuery();
        while (rs2.next()) {
            String keyword = rs2.getString("keyword") != null ? rs2.getString("keyword").replace("'", "\\'") : "Unknown";
            int count = rs2.getInt("cnt");
            topicData.append(",['").append(keyword).append("',").append(count).append("]");
        }
        rs2.close();
        ps2.close();
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    } finally {
        if (con != null) try { con.close(); } catch (Exception e) {}
    }
    userData.append("]");
    topicData.append("]");
%>

<!-- Google Chart Scripts -->
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawCharts);

    function drawCharts(){
        // --- User Search Pie Chart ---
        var userData = google.visualization.arrayToDataTable(<%= userData.toString() %>);

        var userOptions = {
            title: 'User-wise Total Searches',
            pieHole: 0.4,
            backgroundColor: 'transparent',
            titleTextStyle: { color: '#fff', fontSize: 18, bold: true },
            legend: { textStyle: { color: '#d0d0d0', fontSize: 12 } },
            pieSliceTextStyle: { color: '#000', fontSize: 12 },
            colors: ['#FF6384','#36A2EB','#FFCE56','#4BC0C0','#9966FF','#FF9F40','#00A86B']
        };

        var userChart = new google.visualization.PieChart(document.getElementById('userChart'));
        userChart.draw(userData, userOptions);

        // --- Top Topics Bar Chart ---
        var topicData = google.visualization.arrayToDataTable(<%= topicData.toString() %>);

        var topicOptions = {
            title: 'Top 5 Most Searched Topics',
            backgroundColor: 'transparent',
            titleTextStyle: { color: '#fff', fontSize: 18, bold: true },
            chartArea: {width: '65%', height: '70%'},
            hAxis: { 
                title: 'Search Count', 
                minValue: 0,
                textStyle: { color: '#d0d0d0' },
                titleTextStyle: { color: '#999' }
            },
            vAxis: { 
                title: 'Topic',
                textStyle: { color: '#d0d0d0' },
                titleTextStyle: { color: '#999' }
            },
            legend: 'none',
            colors: ['#ff0000']
        };

        var topicChart = new google.visualization.BarChart(document.getElementById('topicChart'));
        topicChart.draw(topicData, topicOptions);
    }
</script>

<!-- Charts Section -->
<div class="chart-container">
    <div id="userChart" class="chart-box" style="height: 400px;"></div>
    <div id="topicChart" class="chart-box" style="height: 400px;"></div>
</div>

<!-- Detailed Table -->
<div class="table-header">
    <h3 style="margin: 0;">Detailed User Search Logs</h3>
    <button class="delete-all-btn" onclick="showDeleteAllModal()">
        <svg viewBox="0 0 24 24">
            <path d="M19,4H15.5L14.5,3H9.5L8.5,4H5V6H19M6,19A2,2 0 0,0 8,21H16A2,2 0 0,0 18,19V7H6V19Z"/>
        </svg>
        Delete All Logs
    </button>
</div>

<div class="table-wrapper">
<table>
    <tr>
        <th>User</th>
        <th>Topic</th>
        <th>Search Time</th>
        <th style="text-align: center;">Action</th>
    </tr>
    <%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","0900");

        PreparedStatement ps3 = con.prepareStatement(
            "SELECT s.id, u.name, s.keyword, TO_CHAR(s.search_time,'DD-MON-YYYY HH24:MI:SS') AS tm " +
            "FROM vdusers u JOIN search_history s ON u.id = s.user_id " +
            "ORDER BY s.search_time DESC"
        );
        ResultSet rs3 = ps3.executeQuery();
        while (rs3.next()) {
            String searchId = rs3.getString("id");
            String userName = rs3.getString("name");
            String keyword = rs3.getString("keyword");
    %>
        <tr>
            <td><%= userName %></td>
            <td><%= keyword %></td>
            <td><%= rs3.getString("tm") %></td>
            <td style="text-align: center;">
                <button class="delete-btn" onclick="showDeleteModal('<%= searchId %>', '<%= userName %>', '<%= keyword %>')">
                    <svg viewBox="0 0 24 24">
                        <path d="M19,4H15.5L14.5,3H9.5L8.5,4H5V6H19M6,19A2,2 0 0,0 8,21H16A2,2 0 0,0 18,19V7H6V19Z"/>
                    </svg>
                    Delete
                </button>
            </td>
        </tr>
    <%
        }
        rs3.close();
        ps3.close();
    } catch (Exception e) {
        out.println("<tr><td colspan='4' style='color:red; text-align: center;'>Error: " + e.getMessage() + "</td></tr>");
    } finally {
        if (con != null) try { con.close(); } catch (Exception e) {}
    }
    %>
</table>
</div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div id="deleteModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-icon">
                    <svg viewBox="0 0 24 24">
                        <path d="M13 14h-2V9h2m0 9h-2v-2h2M1 21h22L12 2 1 21z"/>
                    </svg>
                </div>
                <h3>Confirm Delete</h3>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete this search log?</p>
                <p><strong>User:</strong> <span id="modalUserName"></span></p>
                <p><strong>Topic:</strong> <span id="modalKeyword"></span></p>
            </div>
            <div class="modal-actions">
                <button class="modal-btn modal-btn-cancel" onclick="closeModal()">Cancel</button>
                <form id="deleteForm" method="post" style="display: inline;">
                    <input type="hidden" name="deleteId" id="deleteIdInput">
                    <button type="submit" class="modal-btn modal-btn-confirm">Delete</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Delete All Confirmation Modal -->
    <div id="deleteAllModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-icon">
                    <svg viewBox="0 0 24 24">
                        <path d="M13 14h-2V9h2m0 9h-2v-2h2M1 21h22L12 2 1 21z"/>
                    </svg>
                </div>
                <h3>Confirm Delete All</h3>
            </div>
            <div class="modal-body">
                <p><strong>Warning:</strong> This action will permanently delete ALL search logs from the database.</p>
                <p>This action cannot be undone. Are you sure you want to continue?</p>
            </div>
            <div class="modal-actions">
                <button class="modal-btn modal-btn-cancel" onclick="closeDeleteAllModal()">Cancel</button>
                <form method="post" style="display: inline;">
                    <input type="hidden" name="deleteAll" value="true">
                    <button type="submit" class="modal-btn modal-btn-confirm">Delete All</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        function showDeleteModal(id, userName, keyword) {
            document.getElementById('deleteIdInput').value = id;
            document.getElementById('modalUserName').textContent = userName;
            document.getElementById('modalKeyword').textContent = keyword;
            document.getElementById('deleteModal').classList.add('active');
        }

        function closeModal() {
            document.getElementById('deleteModal').classList.remove('active');
        }

        function showDeleteAllModal() {
            document.getElementById('deleteAllModal').classList.add('active');
        }

        function closeDeleteAllModal() {
            document.getElementById('deleteAllModal').classList.remove('active');
        }

        // Close modal when clicking outside
        window.onclick = function(event) {
            if (event.target.classList.contains('modal')) {
                event.target.classList.remove('active');
            }
        }

        // Close modal on ESC key
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                closeModal();
                closeDeleteAllModal();
            }
        });
    </script>
</body>
</html>