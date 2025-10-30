<%@ page import="java.sql.*, java.io.*" %>
<%@ page contentType="application/json" %>
<%
try {
    // Read JSON data from request
    BufferedReader reader = request.getReader();
    StringBuilder sb = new StringBuilder();
    String line;
    
    while ((line = reader.readLine()) != null) {
        sb.append(line);
    }
    
    String jsonData = sb.toString();
    
    // Manual JSON parsing (simple approach)
    String name = extractJsonValue(jsonData, "name");
    String email = extractJsonValue(jsonData, "email");
    String googleId = extractJsonValue(jsonData, "googleId");
    String picture = extractJsonValue(jsonData, "picture");
    
    if (name == null || email == null || googleId == null) {
        out.print("{\"success\": false, \"error\": \"Missing required data\"}");
        return;
    }
    
    // Database connection
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:xe", "system", "0900");
    
    // Check if user exists
    PreparedStatement check = con.prepareStatement("SELECT id, name FROM vdusers WHERE email = ?");
    check.setString(1, email);
    ResultSet rs = check.executeQuery();
    
    int uid;
    String userName;
    
    if (rs.next()) {
        // User exists, get their ID
        uid = rs.getInt("id");
        userName = rs.getString("name");
    } else {
        // New user, insert into database
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO vdusers (id, name, email, password) VALUES (user_seq.NEXTVAL, ?, ?, ?)",
            new String[]{"id"});
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, "GOOGLE_AUTH_" + googleId);
        ps.executeUpdate();
        
        // Get the generated ID
        ResultSet generatedKeys = ps.getGeneratedKeys();
        if (generatedKeys.next()) {
            uid = generatedKeys.getInt(1);
        } else {
            // Fallback: query for the ID
            PreparedStatement getId = con.prepareStatement("SELECT id FROM vdusers WHERE email = ?");
            getId.setString(1, email);
            ResultSet rs2 = getId.executeQuery();
            if (rs2.next()) {
                uid = rs2.getInt("id");
            } else {
                throw new Exception("Failed to retrieve user ID");
            }
            rs2.close();
            getId.close();
        }
        
        userName = name;
        generatedKeys.close();
        ps.close();
    }
    
    // Set session attributes
    session.setAttribute("uid", uid);
    session.setAttribute("uname", userName);
    session.setAttribute("uemail", email);
    
    // Clean up
    rs.close();
    check.close();
    con.close();
    
    // Return success
    out.print("{\"success\": true, \"userId\": " + uid + "}");
    
} catch (Exception e) {
    e.printStackTrace();
    out.print("{\"success\": false, \"error\": \"" + e.getMessage().replace("\"", "'") + "\"}");
}
%>

<%!
// Helper method to extract JSON values without external library
private String extractJsonValue(String json, String key) {
    try {
        String searchKey = "\"" + key + "\"";
        int keyIndex = json.indexOf(searchKey);
        if (keyIndex == -1) return null;
        
        int colonIndex = json.indexOf(":", keyIndex);
        if (colonIndex == -1) return null;
        
        int valueStart = json.indexOf("\"", colonIndex) + 1;
        int valueEnd = json.indexOf("\"", valueStart);
        
        if (valueStart == 0 || valueEnd == -1) return null;
        
        return json.substring(valueStart, valueEnd);
    } catch (Exception e) {
        return null;
    }
}
%>