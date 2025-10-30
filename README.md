# 🎬 YouTube Video Suggestion System

<div align="center">

![YouTube Video Suggestion System Banner](https://img.shields.io/badge/YouTube-Video_Suggestion_System-FF0000?style=for-the-badge&logo=youtube&logoColor=white)

[![Java](https://img.shields.io/badge/Java-JSP_&_Servlets-007396?style=flat-square&logo=openjdk&logoColor=white)](https://www.java.com/)
[![Oracle](https://img.shields.io/badge/Oracle-Database-F80000?style=flat-square&logo=oracle&logoColor=white)](https://www.oracle.com/database/)
[![YouTube API](https://img.shields.io/badge/YouTube-Data_API_v3-FF0000?style=flat-square&logo=youtube&logoColor=white)](https://developers.google.com/youtube/v3)
[![Google Charts](https://img.shields.io/badge/Google-Charts-4285F4?style=flat-square&logo=google&logoColor=white)](https://developers.google.com/chart)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

*🚀 A cutting-edge web application that fetches live YouTube videos using YouTube Data API v3, stores user search history in Oracle Database, and provides comprehensive analytics through an interactive admin dashboard.*

[✨ Features](#-features) • [🛠️ Tech Stack](#️-tech-stack) • [💻 Installation](#-installation) • [🗄️ Database Setup](#️-database-setup) • [📸 Screenshots](#-screenshots) • [🔑 API Configuration](#-api-configuration)

---

### 🌟 **Live Demo** | 📚 **Documentation** | 🐛 **Report Bug** | 💡 **Request Feature**

</div>

---

## 📋 Table of Contents

<details>
<summary>Click to expand</summary>

- [🎯 Overview](#-overview)
- [✨ Features](#-features)
- [🛠️ Tech Stack](#️-tech-stack)
- [🏗️ System Architecture](#️-system-architecture)
- [💻 Installation](#-installation)
- [🗄️ Database Setup](#️-database-setup)
- [🔑 API Configuration](#-api-configuration)
- [📁 Project Structure](#-project-structure)
- [📸 Screenshots](#-screenshots)
- [🎮 Usage Guide](#-usage-guide)
- [🗺️ ER Diagram](#️-er-diagram)
- [🔧 Troubleshooting](#-troubleshooting)
- [🚀 Deployment](#-deployment)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)
- [👨‍💻 Author](#-author)
- [🙏 Acknowledgments](#-acknowledgments)

</details>

---

## 🎯 Overview

<div align="center">

### 💡 **Discover. Search. Analyze.**

</div>

The **YouTube Video Suggestion System** is a modern, full-stack Java web application that revolutionizes how users discover and interact with YouTube content. Built with enterprise-grade technologies, it seamlessly integrates with YouTube Data API v3 to provide real-time video suggestions while maintaining comprehensive analytics through Oracle Database.

### 🎪 What Makes This Special?

```
┌─────────────────────────────────────────────────────────────┐
│  🎯 Real-Time YouTube Integration                           │
│  📊 Advanced Analytics Dashboard                            │
│  🔐 Secure Multi-Auth System (OAuth + Traditional)          │
│  🎨 Modern Glassmorphism UI                                 │
│  📱 Fully Responsive Design                                  │
│  💾 Enterprise-Grade Data Persistence                       │
└─────────────────────────────────────────────────────────────┘
```

---

## ✨ Features

<table>
<tr>
<td width="50%">

### 👥 **User Experience**

- ✅ **Multi-Auth System**
  - 📧 Email/Password Authentication
  - 🔐 Google OAuth 2.0 Integration
  - 🔒 Secure Session Management

- 🔍 **Smart Search**
  - 🎥 Real-time YouTube Video Fetching
  - 🎬 Embedded Video Player
  - ⚡ Lightning-fast Results

- 📚 **Personalization**
  - 📜 Complete Search History
  - ⏰ Timestamp Tracking
  - 🔄 One-click Re-search

</td>
<td width="50%">

### 👨‍💼 **Admin Power Tools**

- 📊 **Rich Analytics**
  - 📈 Google Charts Integration
  - 📉 Pie & Bar Visualizations
  - 📊 Real-time Metrics

- 🎯 **Insights Dashboard**
  - 👥 User Activity Monitoring
  - 🔥 Trending Topics Analysis
  - 📅 Month-over-Month Comparisons

- 🗑️ **Data Management**
  - 🔍 Search Log Management
  - 🗃️ Bulk Operations
  - ⚙️ System Maintenance

</td>
</tr>
</table>

### 🎨 **UI/UX Highlights**

<div align="center">

| Feature | Description |
|---------|-------------|
| 🌌 **Dark Theme** | Eye-friendly dark mode with animated gradients |
| 💎 **Glassmorphism** | Modern frosted-glass effects with backdrop blur |
| 🎭 **Animations** | Smooth transitions and hover effects |
| 📱 **Responsive** | Optimized for all devices and screen sizes |
| 🎯 **Accessibility** | WCAG compliant with keyboard navigation |

</div>

---

## 🛠️ Tech Stack

<div align="center">

### 🎨 **Frontend Technologies**

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![JSP](https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white)

### ⚙️ **Backend Technologies**

![Java](https://img.shields.io/badge/Java_8+-007396?style=for-the-badge&logo=openjdk&logoColor=white)
![Servlets](https://img.shields.io/badge/Servlets-007396?style=for-the-badge&logo=java&logoColor=white)
![JDBC](https://img.shields.io/badge/JDBC-007396?style=for-the-badge&logo=oracle&logoColor=white)

### 🗄️ **Database & Storage**

![Oracle](https://img.shields.io/badge/Oracle_11g/19c-F80000?style=for-the-badge&logo=oracle&logoColor=white)

### 🔌 **APIs & Libraries**

![YouTube API](https://img.shields.io/badge/YouTube_API_v3-FF0000?style=for-the-badge&logo=youtube&logoColor=white)
![Google OAuth](https://img.shields.io/badge/Google_OAuth_2.0-4285F4?style=for-the-badge&logo=google&logoColor=white)
![Google Charts](https://img.shields.io/badge/Google_Charts-4285F4?style=for-the-badge&logo=google&logoColor=white)

### 🚀 **Server & Deployment**

![Tomcat](https://img.shields.io/badge/Apache_Tomcat_9+-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black)
![WebLogic](https://img.shields.io/badge/Oracle_WebLogic-F80000?style=for-the-badge&logo=oracle&logoColor=white)

</div>

---

### 📦 **Detailed Technology Breakdown**

<details>
<summary><b>🎨 Frontend Layer</b></summary>

#### Core Technologies
- **JSP (JavaServer Pages)** - Server-side dynamic page generation
- **HTML5** - Semantic markup and modern web standards
- **CSS3** - Advanced styling with animations and transitions
- **JavaScript ES6+** - Client-side interactivity and API calls

#### Design Features
- **Google Fonts (Poppins)** - Modern typography
- **CSS Grid & Flexbox** - Responsive layouts
- **CSS Animations** - Smooth transitions and effects
- **Glassmorphism** - Frosted-glass UI design pattern

</details>

<details>
<summary><b>⚙️ Backend Layer</b></summary>

#### Core Technologies
- **Java 8+** - Primary programming language
- **Java Servlets** - HTTP request handling
- **JSP Standard Tag Library (JSTL)** - Tag-based programming
- **JDBC API** - Database connectivity

#### Libraries & Dependencies
```xml
<!-- JSON Processing -->
json-20240303.jar      # Latest JSON-Java implementation
org.json.jar           # JSON parsing and generation

<!-- Database Driver -->
ojdbc8.jar            # Oracle JDBC Driver 8

<!-- HTTP Client (Optional) -->
httpclient.jar        # Apache HTTP Client for API calls
```

</details>

<details>
<summary><b>🗄️ Database Layer</b></summary>

#### Database System
- **Oracle Database 11g/19c Enterprise Edition**
  - Stored Procedures
  - Sequences (Auto-increment)
  - Triggers
  - Indexes for optimization

#### Features Used
- ✅ Transaction Management
- ✅ Foreign Key Constraints
- ✅ Unique Constraints
- ✅ Timestamp Functions
- ✅ Aggregate Functions

</details>

<details>
<summary><b>🔌 External Services</b></summary>

#### YouTube Data API v3
- **Search Videos** - Fetch videos by keyword
- **Video Details** - Retrieve metadata
- **Channel Information** - Get channel data
- **Quota Management** - API usage tracking

#### Google Services
- **OAuth 2.0** - Social authentication
- **Google Charts API** - Data visualization
  - Pie Charts
  - Bar Charts
  - Column Charts
  - Line Charts

</details>

---

## 🏗️ System Architecture

<div align="center">

### 🎯 **Multi-Tier Architecture**

</div>

```
┌─────────────────────────────────────────────────────────────────────┐
│                         🌐 CLIENT LAYER                              │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐           │
│  │ 💻 Chrome │  │ 🦊 Firefox│  │ 🧭 Safari │  │ 📱 Mobile │          │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘           │
└───────┼──────────────┼──────────────┼──────────────┼────────────────┘
        │              │              │              │
        └──────────────┴──────────────┴──────────────┘
                       │ HTTPS/HTTP
        ┌──────────────▼──────────────────────────────────────────┐
        │              🎨 PRESENTATION LAYER                        │
        │  ┌────────────────────────────────────────────────────┐ │
        │  │           📄 JSP Pages (MVC Views)                  │ │
        │  ├────────────────────────────────────────────────────┤ │
        │  │ • Index.jsp          - Landing page                 │ │
        │  │ • login.jsp          - User authentication          │ │
        │  │ • register.jsp       - User registration            │ │
        │  │ • dashboard.jsp      - User search interface        │ │
        │  │ • adminLogin.jsp     - Admin authentication         │ │
        │  │ • adminDashboard.jsp - Analytics & management       │ │
        │  │ • googleAuth.jsp     - OAuth handler                │ │
        │  │ • logout.jsp         - Session termination          │ │
        │  └────────────────────────────────────────────────────┘ │
        └──────────────────────┬──────────────────────────────────┘
                               │
        ┌──────────────────────▼──────────────────────────────────┐
        │              ⚙️ APPLICATION LAYER                        │
        │  ┌────────────────────────────────────────────────────┐ │
        │  │         🔧 Business Logic Components                │ │
        │  ├────────────────────────────────────────────────────┤ │
        │  │ • Java Servlets     - Request processing            │ │
        │  │ • Session Manager   - User session handling         │ │
        │  │ • Authentication    - Security & authorization      │ │
        │  │ • API Handler       - External API integration      │ │
        │  │ • Data Validator    - Input validation              │ │
        │  │ • Error Handler     - Exception management          │ │
        │  └────────────────────────────────────────────────────┘ │
        └────────┬───────────────────────────────┬────────────────┘
                 │                               │
        ┌────────▼──────────┐         ┌─────────▼──────────┐
        │  🌐 EXTERNAL APIS │         │  📚 INTERNAL LIBS   │
        │  ┌──────────────┐ │         │  ┌───────────────┐ │
        │  │  📺 YouTube  │ │         │  │ json-20240303 │ │
        │  │   Data API   │ │         │  │     .jar      │ │
        │  │      v3      │ │         │  └───────────────┘ │
        │  └──────────────┘ │         │  ┌───────────────┐ │
        │  ┌──────────────┐ │         │  │  org.json.jar │ │
        │  │ 🔐 Google    │ │         │  └───────────────┘ │
        │  │   OAuth 2.0  │ │         │  ┌───────────────┐ │
        │  └──────────────┘ │         │  │  ojdbc8.jar   │ │
        │  ┌──────────────┐ │         │  └───────────────┘ │
        │  │ 📊 Google    │ │         └────────────────────┘
        │  │   Charts     │ │
        │  └──────────────┘ │
        └───────────────────┘
                 │
        ┌────────▼────────────────────────────────────────────────┐
        │              💾 DATA ACCESS LAYER                        │
        │  ┌────────────────────────────────────────────────────┐ │
        │  │           🔌 JDBC Connection Pool                   │ │
        │  └────────────────────────────────────────────────────┘ │
        └────────────────────────┬───────────────────────────────┘
                                 │
        ┌────────────────────────▼───────────────────────────────┐
        │              🗄️ DATABASE LAYER                          │
        │  ┌────────────────────────────────────────────────────┐ │
        │  │         Oracle Database 11g/19c                    │ │
        │  ├────────────────────────────────────────────────────┤ │
        │  │  📊 Tables:                                         │ │
        │  │  ┌──────────────────────────────────────────────┐  │ │
        │  │  │ 👨‍💼 admin          - System administrators   │  │ │
        │  │  │ 👥 vdusers         - Registered users         │  │ │
        │  │  │ 🔍 search_history  - User search logs         │  │ │
        │  │  └──────────────────────────────────────────────┘  │ │
        │  │                                                     │ │
        │  │  ⚡ Sequences:                                      │ │
        │  │  • user_seq    - Auto-increment for users          │ │
        │  │  • search_seq  - Auto-increment for searches       │ │
        │  └────────────────────────────────────────────────────┘ │
        └────────────────────────────────────────────────────────┘
```

---

### 🔄 **Data Flow Diagram**

```
   👤 User
     │
     ▼
┌─────────────┐
│   Browser   │ ──────┐
└─────────────┘       │
                      │ 1️⃣ HTTP Request
                      ▼
              ┌────────────────┐
              │  Tomcat Server │
              │   (Port 8080)  │
              └────────┬───────┘
                       │
              2️⃣ Route to JSP
                       │
       ┌───────────────┼───────────────┐
       ▼               ▼               ▼
 ┌──────────┐   ┌──────────┐   ┌──────────┐
 │dashboard │   │  login   │   │  admin   │
 │   .jsp   │   │  .jsp    │   │Dashboard │
 └────┬─────┘   └────┬─────┘   └────┬─────┘
      │              │              │
      │ 3️⃣ Process  │ 3️⃣ Process  │ 3️⃣ Process
      │   Request    │   Request    │   Request
      │              │              │
      ▼              ▼              ▼
 ┌──────────────────────────────────────┐
 │      🔧 Business Logic Layer          │
 │  • Validate Input                     │
 │  • Check Session                      │
 │  • Process Data                       │
 └────┬─────────────────────┬───────────┘
      │                     │
 4️⃣ API Call         5️⃣ DB Query
      │                     │
      ▼                     ▼
 ┌──────────┐      ┌─────────────────┐
 │ YouTube  │      │ Oracle Database │
 │   API    │      │  • admin        │
 └────┬─────┘      │  • vdusers      │
      │            │  • search_hist  │
      │            └────────┬────────┘
 6️⃣ JSON               7️⃣ ResultSet
   Response                 │
      │                     │
      └──────────┬──────────┘
                 │
        8️⃣ Render Response
                 │
                 ▼
         ┌──────────────┐
         │  HTML/JSON   │
         │   Response   │
         └──────┬───────┘
                │
       9️⃣ Send to Client
                │
                ▼
         ┌─────────────┐
         │   Browser   │
         │   Display   │
         └─────────────┘
```

---

## 💻 Installation

<div align="center">

### 🚀 **Quick Start Guide**

</div>

### 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

<table>
<tr>
<td width="50%">

#### 🔧 **Required Software**

- ☕ **Java JDK 8+**
  - [Download Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
  - [Download OpenJDK](https://adoptium.net/)
  
- 🗄️ **Oracle Database 11g/19c**
  - [Download Oracle DB](https://www.oracle.com/database/technologies/)
  - Oracle Express Edition (XE) recommended for development
  
- 🐱 **Apache Tomcat 9+**
  - [Download Tomcat](https://tomcat.apache.org/download-90.cgi)
  
- 🔧 **IDE (Optional)**
  - Eclipse IDE for Enterprise Java
  - IntelliJ IDEA Ultimate
  - NetBeans

</td>
<td width="50%">

#### 🔑 **API Credentials**

- 🎯 **YouTube Data API Key**
  - [Get API Key](https://console.cloud.google.com/)
  - Enable YouTube Data API v3
  
- 🔐 **Google OAuth Client ID**
  - [Setup OAuth](https://console.cloud.google.com/apis/credentials)
  - Configure consent screen

#### 📦 **Required JAR Files**

```
WEB-INF/lib/
├── json-20240303.jar
├── org.json.jar
└── ojdbc8.jar
```

</td>
</tr>
</table>

---

### 📥 **Step-by-Step Installation**

#### **Step 1: Clone the Repository**

```bash
# Clone via HTTPS
git clone https://github.com/yourusername/youtube-video-suggestion.git

# OR Clone via SSH
git clone git@github.com:yourusername/youtube-video-suggestion.git

# Navigate to project directory
cd youtube-video-suggestion
```

---

#### **Step 2: Setup Oracle Database**

##### 🚀 **Quick Database Setup**

```bash
# 1. Start Oracle Database
sqlplus / as sysdba

# 2. Start the database (if not running)
SQL> startup

# 3. Exit and login as system user
SQL> exit
sqlplus system/your_password@localhost:1521/xe
```

##### 📝 **Execute Database Scripts**

```sql
-- Copy and paste the SQL commands from the Database Setup section
-- Or run the SQL file directly
@path/to/database_setup.sql
```

---

#### **Step 3: Configure Database Connection**

Update the JDBC connection in **ALL** JSP files:

```java
// 📍 Files to update:
// - login.jsp
// - register.jsp
// - dashboard.jsp
// - adminLogin.jsp
// - adminDashboard.jsp
// - googleAuth.jsp

// 🔧 Change these values
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String username = "system";
String password = "YOUR_ORACLE_PASSWORD";  // ⚠️ Change this!
```

**💡 Pro Tip:** Create a separate configuration file for database credentials:

```java
// config/DBConfig.java
public class DBConfig {
    public static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    public static final String USERNAME = "system";
    public static final String PASSWORD = "your_password";
}
```

---

#### **Step 4: Configure YouTube API Key**

Edit `src/API/MY_API.java`:

```java
package API;

public class MY_API {
    public static String getAPI() {
        // ⚠️ Replace with your actual YouTube API key
        return "AIzaSyAyzNBtwQNWrNlI2I3DETLEP5vINxLo-YE";
    }
}
```

**🔐 Security Best Practice:** Use environment variables:

```java
public static String getAPI() {
    String apiKey = System.getenv("YOUTUBE_API_KEY");
    if (apiKey == null || apiKey.isEmpty()) {
        throw new RuntimeException("YouTube API key not configured!");
    }
    return apiKey;
}
```

---

#### **Step 5: Configure Google OAuth**

Update the client ID in `login.jsp` and `register.jsp`:

```javascript
// 🔍 Find this section in both files
window.onload = function () {
    google.accounts.id.initialize({
        // ⚠️ Replace with your Google OAuth Client ID
        client_id: '252817625899-2upie2jr2ic250sihva5ekj4bcecv4k4.apps.googleusercontent.com',
        callback: handleCredentialResponse
    });
    
    // ... rest of the code
};
```

---

#### **Step 6: Add Required JAR Files**

Create the `WEB-INF/lib` directory and add the following JAR files:

```bash
# Create lib directory if it doesn't exist
mkdir -p WEB-INF/lib

# Copy JAR files (download from links below)
cp /path/to/json-20240303.jar WEB-INF/lib/
cp /path/to/org.json.jar WEB-INF/lib/
cp /path/to/ojdbc8.jar WEB-INF/lib/
```

**📦 Download Links:**

| JAR File | Download Link | Purpose |
|----------|---------------|---------|
| `json-20240303.jar` | [Maven Central](https://mvnrepository.com/artifact/org.json/json/20240303) | Latest JSON parsing library |
| `org.json.jar` | [Maven Central](https://mvnrepository.com/artifact/org.json/json) | JSON operations |
| `ojdbc8.jar` | [Oracle Downloads](https://www.oracle.com/database/technologies/appdev/jdbc-downloads.html) | Oracle JDBC driver |

---

#### **Step 7: Deploy to Tomcat**

##### **Option A: Manual Deployment**

```bash
# 1. Copy project to Tomcat webapps
cp -r youtube-video-suggestion /path/to/tomcat/webapps/

# 2. Start Tomcat
cd /path/to/tomcat/bin
./startup.sh  # Linux/Mac
startup.bat   # Windows
```

##### **Option B: IDE Deployment**

1. **Eclipse:**
   - Right-click project → Run As → Run on Server
   - Select Tomcat server → Finish

2. **IntelliJ IDEA:**
   - Click Run → Edit Configurations
   - Add new Tomcat Server configuration
   - Deploy artifact and run

##### **Option C: WAR File Deployment**

```bash
# 1. Create WAR file
jar -cvf youtube-suggestion.war *

# 2. Deploy via Tomcat Manager
# Navigate to http://localhost:8080/manager/html
# Upload WAR file through GUI
```

---

#### **Step 8: Verify Installation**

##### **🔍 Check Tomcat Status**

```bash
# Check if Tomcat is running
curl http://localhost:8080

# Check application deployment
curl http://localhost:8080/youtube-video-suggestion/Index.jsp
```

##### **✅ Verification Checklist**

- [ ] Tomcat server is running
- [ ] Oracle database is accessible
- [ ] Application deployed successfully
- [ ] JAR files are in WEB-INF/lib
- [ ] YouTube API key is configured
- [ ] Google OAuth client ID is configured
- [ ] Database tables are created
- [ ] Admin account is created

---

#### **Step 9: Access the Application**

Open your browser and navigate to:

```
🌐 http://localhost:8080/youtube-video-suggestion/Index.jsp
```

##### **🔑 Default Admin Credentials**

```
👤 Username: admin
🔐 Password: admin123
```

**⚠️ Important:** Change the default admin password after first login!

---

### 🎉 **Installation Complete!**

<div align="center">

```
┌─────────────────────────────────────┐
│  ✅ Installation Successful!        │
│                                     │
│  🚀 Application running on:         │
│  http://localhost:8080              │
│                                     │
│  📚 Next Steps:                     │
│  1. Change admin password           │
│  2. Create test user account        │
│  3. Test YouTube search             │
│  4. Explore admin dashboard         │
└─────────────────────────────────────┘
```

</div>

---

## 🗄️ Database Setup

<div align="center">

### 💾 **Complete Database Schema**

</div>

### 📊 **Database Overview**

| Component | Count | Description |
|-----------|-------|-------------|
| 🗂️ Tables | 3 | admin, vdusers, search_history |
| 🔢 Sequences | 2 | user_seq, search_seq |
| 🔗 Foreign Keys | 1 | search_history → vdusers |
| 🔐 Unique Constraints | 2 | admin.username, vdusers.email |

---

### 🛠️ **Complete SQL Setup Script**

Copy and execute this entire script in SQL*Plus or SQL Developer:

```sql
-- ============================================================================
-- YouTube Video Suggestion System - Database Setup Script
-- ============================================================================
-- Version: 1.0
-- Database: Oracle 11g/19c
-- Author: Your Name
-- Date: 2025
-- ============================================================================

-- ============================================================================
-- STEP 1: Create Admin Table
-- Purpose: Store system administrator credentials
-- ============================================================================

CREATE TABLE admin (
    id NUMBER PRIMARY KEY,
    username VARCHAR2(50) UNIQUE NOT NULL,
    password VARCHAR2(50) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE admin IS 'System administrators table';
COMMENT ON COLUMN admin.id IS 'Primary key - Admin ID';
COMMENT ON COLUMN admin.username IS 'Unique admin username';
COMMENT ON COLUMN admin.password IS 'Admin password (should be hashed in production)';

-- Insert default admin account
INSERT INTO admin (id, username, password) 
VALUES (1, 'admin', 'admin123');

COMMIT;

SELECT '✅ Admin table created successfully' AS status FROM dual;

-- ============================================================================
-- STEP 2: Create Users Table & Sequence
-- Purpose: Store registered user information
-- ============================================================================

-- Create sequence for auto-increment user IDs
CREATE SEQUENCE user_seq 
    START WITH 1 
    INCREMENT BY 1 
    NOCACHE 
    NOCYCLE;

-- Create users table
CREATE TABLE vdusers (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    password VARCHAR2(50) NOT NULL,
    register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP,
    is_active NUMBER(1) DEFAULT 1
);

COMMENT ON TABLE vdusers IS 'Registered users table';
COMMENT ON COLUMN vdusers.id IS 'Primary key - User ID (auto-generated)';
COMMENT ON COLUMN vdusers.name IS 'User full name';
COMMENT ON COLUMN vdusers.email IS 'Unique user email address';
COMMENT ON COLUMN vdusers.password IS 'User password (should be hashed in production)';
COMMENT ON COLUMN vdusers.is_active IS '1=Active, 0=Inactive';

SELECT '✅ Users table and sequence created successfully' AS status FROM dual;

-- ============================================================================
-- STEP 3: Create Search History Table & Sequence
-- Purpose: Store user search logs and activity
-- ============================================================================

-- Create sequence for auto-increment search IDs
CREATE SEQUENCE search_seq 
  ```sql
    START WITH 1 
    INCREMENT BY 1 
    NOCACHE 
    NOCYCLE;

-- Create search history table
CREATE TABLE search_history (
    id NUMBER PRIMARY KEY,
    user_id NUMBER NOT NULL,
    keyword VARCHAR2(100) NOT NULL,
    search_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    video_count NUMBER DEFAULT 0,
    CONSTRAINT fk_user_search FOREIGN KEY (user_id) 
        REFERENCES vdusers(id) ON DELETE CASCADE
);

COMMENT ON TABLE search_history IS 'User search activity log';
COMMENT ON COLUMN search_history.id IS 'Primary key - Search ID (auto-generated)';
COMMENT ON COLUMN search_history.user_id IS 'Foreign key - References vdusers.id';
COMMENT ON COLUMN search_history.keyword IS 'Search keyword entered by user';
COMMENT ON COLUMN search_history.search_time IS 'Timestamp when search was performed';
COMMENT ON COLUMN search_history.video_count IS 'Number of videos returned';

-- Create indexes for performance optimization
CREATE INDEX idx_search_user_id ON search_history(user_id);
CREATE INDEX idx_search_keyword ON search_history(keyword);
CREATE INDEX idx_search_time ON search_history(search_time DESC);

SELECT '✅ Search history table, sequence, and indexes created successfully' AS status FROM dual;

-- ============================================================================
-- STEP 4: Create Views for Analytics
-- Purpose: Simplified queries for admin dashboard
-- ============================================================================

-- View: User search summary
CREATE OR REPLACE VIEW v_user_search_summary AS
SELECT 
    u.id,
    u.name,
    u.email,
    COUNT(s.id) AS total_searches,
    MAX(s.search_time) AS last_search,
    MIN(s.search_time) AS first_search
FROM vdusers u
LEFT JOIN search_history s ON u.id = s.user_id
GROUP BY u.id, u.name, u.email;

-- View: Popular keywords
CREATE OR REPLACE VIEW v_popular_keywords AS
SELECT 
    keyword,
    COUNT(*) AS search_count,
    COUNT(DISTINCT user_id) AS unique_users,
    MAX(search_time) AS last_searched
FROM search_history
GROUP BY keyword
ORDER BY search_count DESC;

-- View: Monthly statistics
CREATE OR REPLACE VIEW v_monthly_stats AS
SELECT 
    TO_CHAR(search_time, 'YYYY-MM') AS month,
    COUNT(*) AS total_searches,
    COUNT(DISTINCT user_id) AS active_users,
    COUNT(DISTINCT keyword) AS unique_keywords
FROM search_history
GROUP BY TO_CHAR(search_time, 'YYYY-MM')
ORDER BY month DESC;

SELECT '✅ Analytics views created successfully' AS status FROM dual;

-- ============================================================================
-- STEP 5: Create Stored Procedures
-- Purpose: Common database operations
-- ============================================================================

-- Procedure: Get user statistics
CREATE OR REPLACE PROCEDURE sp_get_user_stats (
    p_user_id IN NUMBER,
    p_total_searches OUT NUMBER,
    p_unique_keywords OUT NUMBER,
    p_last_search OUT TIMESTAMP
) AS
BEGIN
    SELECT 
        COUNT(*),
        COUNT(DISTINCT keyword),
        MAX(search_time)
    INTO 
        p_total_searches,
        p_unique_keywords,
        p_last_search
    FROM search_history
    WHERE user_id = p_user_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_total_searches := 0;
        p_unique_keywords := 0;
        p_last_search := NULL;
END;
/

-- Procedure: Clean old search history
CREATE OR REPLACE PROCEDURE sp_cleanup_old_searches (
    p_days_old IN NUMBER DEFAULT 90
) AS
    v_deleted_count NUMBER;
BEGIN
    DELETE FROM search_history
    WHERE search_time < SYSDATE - p_days_old;
    
    v_deleted_count := SQL%ROWCOUNT;
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Deleted ' || v_deleted_count || ' old search records');
END;
/

SELECT '✅ Stored procedures created successfully' AS status FROM dual;

-- ============================================================================
-- STEP 6: Create Triggers
-- Purpose: Automatic operations on data changes
-- ============================================================================

-- Trigger: Update last_login on user authentication
CREATE OR REPLACE TRIGGER trg_update_last_login
AFTER INSERT ON search_history
FOR EACH ROW
BEGIN
    UPDATE vdusers
    SET last_login = CURRENT_TIMESTAMP
    WHERE id = :NEW.user_id;
END;
/

SELECT '✅ Triggers created successfully' AS status FROM dual;

-- ============================================================================
-- STEP 7: Insert Sample Data (Optional - for testing)
-- ============================================================================

-- Sample users
INSERT INTO vdusers (id, name, email, password)
VALUES (user_seq.NEXTVAL, 'John Doe', 'john@example.com', 'password123');

INSERT INTO vdusers (id, name, email, password)
VALUES (user_seq.NEXTVAL, 'Jane Smith', 'jane@example.com', 'password456');

-- Sample searches
INSERT INTO search_history (id, user_id, keyword)
VALUES (search_seq.NEXTVAL, 1, 'Java Tutorial');

INSERT INTO search_history (id, user_id, keyword)
VALUES (search_seq.NEXTVAL, 1, 'Python Programming');

INSERT INTO search_history (id, user_id, keyword)
VALUES (search_seq.NEXTVAL, 2, 'Web Development');

COMMIT;

SELECT '✅ Sample data inserted successfully' AS status FROM dual;

-- ============================================================================
-- STEP 8: Grant Permissions (if using different schema)
-- ============================================================================

-- Grant permissions to application user (modify as needed)
-- GRANT SELECT, INSERT, UPDATE, DELETE ON admin TO your_app_user;
-- GRANT SELECT, INSERT, UPDATE, DELETE ON vdusers TO your_app_user;
-- GRANT SELECT, INSERT, UPDATE, DELETE ON search_history TO your_app_user;
-- GRANT SELECT ON user_seq TO your_app_user;
-- GRANT SELECT ON search_seq TO your_app_user;

-- ============================================================================
-- STEP 9: Verify Installation
-- ============================================================================

SELECT '========================================' AS separator FROM dual;
SELECT '  DATABASE SETUP VERIFICATION' AS title FROM dual;
SELECT '========================================' AS separator FROM dual;

SELECT 'admin' AS table_name, COUNT(*) AS record_count FROM admin
UNION ALL
SELECT 'vdusers', COUNT(*) FROM vdusers
UNION ALL
SELECT 'search_history', COUNT(*) FROM search_history;

SELECT '========================================' AS separator FROM dual;
SELECT '✅ DATABASE SETUP COMPLETED SUCCESSFULLY!' AS status FROM dual;
SELECT '========================================' AS separator FROM dual;

-- ============================================================================
-- End of Script
-- ============================================================================
```

---

### 🔧 **Alternative Setup Methods**

<details>
<summary><b>📱 Method 1: Using SQL Developer GUI</b></summary>

1. Open Oracle SQL Developer
2. Create new connection:
   - Name: `YouTube_Suggestion_DB`
   - Username: `system`
   - Password: `your_password`
   - Hostname: `localhost`
   - Port: `1521`
   - SID: `xe`
3. Right-click connection → SQL Worksheet
4. Copy and paste the SQL script above
5. Press F5 to run as script

</details>

<details>
<summary><b>💻 Method 2: Using SQL*Plus Command Line</b></summary>

```bash
# 1. Login to SQL*Plus
sqlplus system/your_password@localhost:1521/xe

# 2. Run the script file
SQL> @database_setup.sql

# 3. Verify tables
SQL> SELECT table_name FROM user_tables;

# 4. Check data
SQL> SELECT * FROM admin;
SQL> SELECT * FROM vdusers;
SQL> SELECT * FROM search_history;

# 5. Exit
SQL> exit
```

</details>

<details>
<summary><b>🐳 Method 3: Using Docker Oracle Container</b></summary>

```bash
# 1. Pull Oracle XE Docker image
docker pull gvenzl/oracle-xe:latest

# 2. Run Oracle container
docker run -d \
  --name oracle-xe \
  -p 1521:1521 \
  -e ORACLE_PASSWORD=your_password \
  gvenzl/oracle-xe:latest

# 3. Wait for database to start (check logs)
docker logs -f oracle-xe

# 4. Execute SQL script
docker exec -i oracle-xe sqlplus system/your_password@localhost:1521/xe @database_setup.sql

# 5. Verify installation
docker exec -it oracle-xe sqlplus system/your_password@localhost:1521/xe
SQL> SELECT COUNT(*) FROM admin;
```

</details>

---

### 📊 **Database Schema Diagram**

```
┌─────────────────────────────────────────────────────────────────┐
│                        DATABASE SCHEMA                           │
└─────────────────────────────────────────────────────────────────┘

┌──────────────────────┐
│       ADMIN          │
├──────────────────────┤
│ 🔑 id (PK)          │ NUMBER
│ 👤 username (UQ)    │ VARCHAR2(50)
│ 🔐 password         │ VARCHAR2(50)
│ 📅 created_date     │ TIMESTAMP
└──────────────────────┘
         │
         │ (manages)
         │
         ▼
┌──────────────────────┐
│      VDUSERS         │
├──────────────────────┤
│ 🔑 id (PK)          │ NUMBER ← user_seq
│ 👤 name             │ VARCHAR2(50)
│ 📧 email (UQ)       │ VARCHAR2(100)
│ 🔐 password         │ VARCHAR2(50)
│ 📅 register_date    │ TIMESTAMP
│ ⏰ last_login       │ TIMESTAMP
│ ✅ is_active        │ NUMBER(1)
└──────────────────────┘
         │
         │ (1:N)
         │
         ▼
┌──────────────────────┐
│   SEARCH_HISTORY     │
├──────────────────────┤
│ 🔑 id (PK)          │ NUMBER ← search_seq
│ 🔗 user_id (FK)     │ NUMBER ──────┐
│ 🔍 keyword          │ VARCHAR2(100)│
│ ⏰ search_time      │ TIMESTAMP    │
│ 📊 video_count      │ NUMBER       │
└──────────────────────┘              │
         ▲                             │
         └─────────────────────────────┘
           FOREIGN KEY CONSTRAINT
```

---

### 🔍 **Useful Database Queries**

<details>
<summary><b>📊 Analytics Queries</b></summary>

```sql
-- 1. Top 10 Most Active Users
SELECT 
    u.name,
    u.email,
    COUNT(s.id) AS total_searches,
    MAX(s.search_time) AS last_search
FROM vdusers u
JOIN search_history s ON u.id = s.user_id
GROUP BY u.name, u.email
ORDER BY total_searches DESC
FETCH FIRST 10 ROWS ONLY;

-- 2. Most Searched Keywords
SELECT 
    keyword,
    COUNT(*) AS search_count,
    COUNT(DISTINCT user_id) AS unique_users
FROM search_history
GROUP BY keyword
ORDER BY search_count DESC
FETCH FIRST 10 ROWS ONLY;

-- 3. Daily Search Trends
SELECT 
    TO_CHAR(search_time, 'YYYY-MM-DD') AS search_date,
    COUNT(*) AS total_searches,
    COUNT(DISTINCT user_id) AS active_users
FROM search_history
WHERE search_time >= SYSDATE - 30
GROUP BY TO_CHAR(search_time, 'YYYY-MM-DD')
ORDER BY search_date DESC;

-- 4. User Engagement Metrics
SELECT 
    COUNT(DISTINCT id) AS total_users,
    COUNT(DISTINCT CASE WHEN last_login >= SYSDATE - 7 THEN id END) AS weekly_active,
    COUNT(DISTINCT CASE WHEN last_login >= SYSDATE - 30 THEN id END) AS monthly_active,
    ROUND(AVG(
        SELECT COUNT(*) 
        FROM search_history s 
        WHERE s.user_id = u.id
    ), 2) AS avg_searches_per_user
FROM vdusers u;

-- 5. Peak Usage Hours
SELECT 
    TO_CHAR(search_time, 'HH24') AS hour_of_day,
    COUNT(*) AS search_count
FROM search_history
GROUP BY TO_CHAR(search_time, 'HH24')
ORDER BY hour_of_day;
```

</details>

<details>
<summary><b>🛠️ Maintenance Queries</b></summary>

```sql
-- 1. Clean searches older than 90 days
DELETE FROM search_history
WHERE search_time < SYSDATE - 90;
COMMIT;

-- 2. Find inactive users (no searches in 30 days)
SELECT 
    u.id,
    u.name,
    u.email,
    u.last_login
FROM vdusers u
WHERE u.last_login < SYSDATE - 30
   OR u.last_login IS NULL;

-- 3. Database size and statistics
SELECT 
    table_name,
    num_rows,
    blocks,
    avg_row_len
FROM user_tables
WHERE table_name IN ('ADMIN', 'VDUSERS', 'SEARCH_HISTORY');

-- 4. Index usage statistics
SELECT 
    index_name,
    table_name,
    uniqueness,
    status
FROM user_indexes
WHERE table_name IN ('VDUSERS', 'SEARCH_HISTORY');

-- 5. Rebuild indexes (if needed)
ALTER INDEX idx_search_user_id REBUILD;
ALTER INDEX idx_search_keyword REBUILD;
ALTER INDEX idx_search_time REBUILD;
```

</details>

---

### ✅ **Database Setup Verification Checklist**

- [ ] ✅ Admin table created with 1 default account
- [ ] ✅ Vdusers table created with user_seq sequence
- [ ] ✅ Search_history table created with search_seq sequence
- [ ] ✅ Foreign key constraint established
- [ ] ✅ Indexes created for performance
- [ ] ✅ Views created for analytics
- [ ] ✅ Stored procedures created
- [ ] ✅ Triggers created
- [ ] ✅ Sample data inserted (optional)
- [ ] ✅ Can connect from Java application
- [ ] ✅ Can execute SELECT, INSERT, UPDATE, DELETE operations

---

## 🔑 API Configuration

<div align="center">

### 🌐 **External API Integration Guide**

</div>

### 1️⃣ **YouTube Data API v3 Setup**

<details open>
<summary><b>📺 Complete YouTube API Configuration</b></summary>

#### **Step 1: Create Google Cloud Project**

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Click **"Select a project"** → **"New Project"**
3. Enter project details:
   - **Project Name:** `YouTube-Video-Suggestion`
   - **Organization:** (Optional)
   - **Location:** (Optional)
4. Click **"Create"**

#### **Step 2: Enable YouTube Data API v3**

1. Navigate to **"APIs & Services"** → **"Library"**
2. Search for `YouTube Data API v3`
3. Click on the API
4. Click **"Enable"**
5. Wait for activation (usually instant)

#### **Step 3: Create API Credentials**

1. Go to **"APIs & Services"** → **"Credentials"**
2. Click **"Create Credentials"** → **"API Key"**
3. Copy the generated API key
4. (Optional) Click **"Restrict Key"** for security:
   - **Application restrictions:** None (or HTTP referrers for production)
   - **API restrictions:** Select "YouTube Data API v3"
5. Click **"Save"**

#### **Step 4: Configure API Key in Application**

Edit `src/API/MY_API.java`:

```java
package API;

/**
 * YouTube Data API v3 Configuration
 * @author Your Name
 * @version 1.0
 */
public class MY_API {
    
    // 🔑 YouTube Data API Key
    private static final String YOUTUBE_API_KEY = "YOUR_API_KEY_HERE";
    
    /**
     * Get YouTube Data API Key
     * @return String - API Key
     */
    public static String getAPI() {
        return YOUTUBE_API_KEY;
    }
    
    /**
     * Validate API Key
     * @return boolean - true if valid
     */
    public static boolean isValidKey() {
        return YOUTUBE_API_KEY != null && 
               !YOUTUBE_API_KEY.isEmpty() && 
               !YOUTUBE_API_KEY.equals("YOUR_API_KEY_HERE");
    }
}
```

#### **Step 5: Test API Integration**

Create a test file `TestYouTubeAPI.java`:

```java
import java.io.*;
import java.net.*;
import org.json.*;

public class TestYouTubeAPI {
    public static void main(String[] args) {
        try {
            String apiKey = "YOUR_API_KEY";
            String keyword = "Java Tutorial";
            String encoded = URLEncoder.encode(keyword, "UTF-8");
            String urlString = "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=5&q=" + encoded + "&key=" + apiKey;
            
            URL url = new URL(urlString);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            br.close();
            
            JSONObject json = new JSONObject(sb.toString());
            JSONArray items = json.getJSONArray("items");
            
            System.out.println("✅ API Test Successful!");
            System.out.println("📊 Found " + items.length() + " videos");
            
            for (int i = 0; i < items.length(); i++) {
                JSONObject video = items.getJSONObject(i);
                String title = video.getJSONObject("snippet").getString("title");
                System.out.println((i + 1) + ". " + title);
            }
            
        } catch (Exception e) {
            System.out.println("❌ API Test Failed: " + e.getMessage());
        }
    }
}
```

#### **📊 API Quota Management**

| Operation | Cost | Daily Quota |
|-----------|------|-------------|
| Search | 100 units | 10,000 units |
| Video List | 1 unit | 10,000 units |
| Channel List | 1 unit | 10,000 units |

**💡 Quota Tips:**
- Free tier: 10,000 units/day
- 1 search = 100 units = 100 searches/day
- Cache results to reduce API calls
- Monitor usage in Google Cloud Console

</details>

---

### 2️⃣ **Google OAuth 2.0 Setup**

<details open>
<summary><b>🔐 Complete OAuth Configuration</b></summary>

#### **Step 1: Configure OAuth Consent Screen**

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Navigate to **"APIs & Services"** → **"OAuth consent screen"**
3. Choose **"External"** user type
4. Fill in required information:
   ```
   App name: YouTube Video Suggestion System
   User support email: your-email@example.com
   Developer contact: your-email@example.com
   ```
5. Click **"Save and Continue"**
6. Skip **"Scopes"** section (use defaults)
7. Add test users (optional for development)
8. Click **"Save and Continue"**

#### **Step 2: Create OAuth 2.0 Client ID**

1. Go to **"APIs & Services"** → **"Credentials"**
2. Click **"Create Credentials"** → **"OAuth client ID"**
3. Choose application type: **"Web application"**
4. Configure settings:
   ```
   Name: YouTube Suggestion Web Client
   
   Authorized JavaScript origins:
   - http://localhost:8080
   - http://localhost:8080/youtube-video-suggestion
   
   Authorized redirect URIs:
   - http://localhost:8080/youtube-video-suggestion/googleAuth.jsp
   - http://localhost:8080/youtube-video-suggestion/dashboard.jsp
   ```
5. Click **"Create"**
6. Copy **Client ID** and **Client Secret**

#### **Step 3: Configure OAuth in Application**

Update `login.jsp`:

```javascript
<script src="https://accounts.google.com/gsi/client" async defer></script>

<script>
// 🔐 Google OAuth Configuration
window.onload = function () {
    google.accounts.id.initialize({
        // ⚠️ Replace with your OAuth Client ID
        client_id: 'YOUR_CLIENT_ID_HERE.apps.googleusercontent.com',
        callback: handleCredentialResponse,
        auto_select: false,
        cancel_on_tap_outside: true
    });
    
    // Render Google Sign-In button
    google.accounts.id.renderButton(
        document.getElementById('googleSignInBtn'),
        { 
            theme: 'filled_black',
            size: 'large',
            text: 'signin_with',
            shape: 'rectangular',
            width: '100%',
            logo_alignment: 'left'
        }
    );
    
    // Optional: Display One Tap prompt
    google.accounts.id.prompt();
};

// Handle OAuth response
function handleCredentialResponse(response) {
    try {
        // Decode JWT token
        const token = response.credential;
        const base64Url = token.split('.')[1];
        const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
        const jsonPayload = decodeURIComponent(
            atob(base64).split('').map(function(c) {
                return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
            }).join('')
        );
        
        const payload = JSON.parse(jsonPayload);
        
        console.log('✅ Google Sign-In successful:', payload);
        
        // Send to server for processing
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
                console.log('✅ Authentication successful');
                window.location.href = 'dashboard.jsp';
            } else {
                console.error('❌ Authentication failed:', data.error);
                alert('Authentication failed: ' + (data.error || 'Unknown error'));
            }
        })
        .catch(error => {
            console.error('❌ Error:', error);
            alert('An error occurred during authentication. Please try again.');
        });
        
    } catch (error) {
        console.error('❌ Token decode error:', error);
        alert('Failed to process Google Sign-In. Please try again.');
    }
}
</script>
```

Update `register.jsp` with the same configuration, changing `text: 'signin_with'` to `text: 'continue_with'`.

#### **Step 4: Handle OAuth Callback**

Verify `googleAuth.jsp` is configured correctly:

```jsp
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
    
    // Manual JSON parsing
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
        "jdbc:oracle:thin:@localhost:1521:xe", "system", "your_password");
    
    // Check if user exists
    PreparedStatement check = con.prepareStatement(
        "SELECT id, name FROM vdusers WHERE email = ?");
    check.setString(1, email);
    ResultSet rs = check.executeQuery();
    
    int uid;
    String userName;
    
    if (rs.next()) {
        // User exists
        uid = rs.getInt("id");
        userName = rs.getString("name");
    } else {
        // New user - insert
        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO vdusers (id, name, email, password) " +
            "VALUES (user_seq.NEXTVAL, ?, ?, ?)",
            new String[]{"id"});
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, "GOOGLE_AUTH_" + googleId);
        ps.executeUpdate();
        
        // Get generated ID
        ResultSet generatedKeys = ps.getGeneratedKeys();
        if (generatedKeys.next()) {
            uid = generatedKeys.getInt(1);
        } else {
            throw new Exception("Failed to retrieve user ID");
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
    out.print("{\"success\": false, \"error\": \"" + 
              e.getMessage().replace("\"", "'") + "\"}");
}
%>

<%!
// Helper method to extract JSON values
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
```

#### **Step 5: Test OAuth Integration**

1. Start your application
2. Navigate to login page
3. Click **"Sign in with Google"** button
4. Choose Google account
5. Grant permissions
6. Verify redirect to dashboard

</details>

---

### 🔒 **Security Best Practices**

<div align="center">

| ⚠️ Security Measure | Implementation |
|---------------------|----------------|
| 🔐 Environment Variables | Store API keys in environment variables |
| 🛡️ HTTPS Only | Use HTTPS in production |
| 🔑 Key Rotation | Rotate API keys regularly |
| 📊 Usage Monitoring | Monitor API usage in Cloud Console |
| 🚫 Rate Limiting | Implement request throttling |
| 🔒 Input Validation | Sanitize all user inputs |

</div>

---

### 📚 **Additional Resources**

- 📖 [YouTube Data API Documentation](https://developers.google.com/youtube/v3/docs)
- 🔐 [Google OAuth 2.0 Guide](https://developers.google.com/identity/protocols/oauth2)
- 📊 [API Quota Calculator](https://developers.google.com/youtube/v3/determine_quota_cost)
- 🛠️ [Google API Explorer](https://developers.google.com/apis-explorer)

---

## 📁 Project Structure

```
youtube-video-suggestion/
│
├── 📄 Index.jsp                     # 🏠 Landing page with navigation
├── 📄 about.jsp                     # 📚 Project documentation & info
├── 📄 login.jsp                     # 🔐 User authentication page
├── 📄 register.jsp                  # 📝 New user registration
├── 📄 dashboard.jsp                 # 🎯 User main dashboard
├── 📄 adminLogin.jsp                # 👨‍💼 Admin authentication
├── 📄 adminDashboard.jsp            # 📊 Admin analytics panel
├── 📄 googleAuth.jsp                # 🔑 Google OAuth handler
├── 📄 logout.jsp                    # 🚪 Session termination
│
├── 📁 src/                          # ☕ Java source files
│   └── 📁 API/
│       └── 📄 MY_API.java          # 🔑 API key configuration
│
├── 📁 WEB-INF/                      # ⚙️ Web application config
│   ├── 📄 web.xml                   # 🌐 Servlet configuration
│   │
│   └── 📁 lib/                      # 📦 External libraries
│       ├── 📦 json-20240303.jar     # 🔧 Latest JSON library
│       ├── 📦 org.json.jar          # 🔧 JSON processing
│       └── 📦 ojdbc8.jar            # 🗄️ Oracle JDBC driver
│
├── 📁 META-INF/                     # 📋 Metadata
│   └── 📄 MANIFEST.MF
│
├── 📄 README.md                     # 📖 This documentation
├── 📄 LICENSE                       # ⚖️ MIT License
├── 📄 .gitignore                    # 🚫 Git ignore rules
└```
└── 📄 database_setup.sql            # 🗄️ Database initialization script
```

---

### 📋 **Detailed File Descriptions**

<details>
<summary><b>🎨 Frontend Pages (JSP)</b></summary>

| File | Purpose | Key Features |
|------|---------|--------------|
| `Index.jsp` | Landing page | Navigation, animated UI, feature showcase |
| `about.jsp` | Project info | Tech stack, workflow, feature details |
| `login.jsp` | User login | Email/password auth, Google OAuth |
| `register.jsp` | Registration | User signup, Google OAuth |
| `dashboard.jsp` | User dashboard | Video search, history, embedded player |
| `adminLogin.jsp` | Admin auth | Secure admin access |
| `adminDashboard.jsp` | Admin panel | Analytics, charts, user management |
| `googleAuth.jsp` | OAuth handler | Process Google authentication |
| `logout.jsp` | Logout | Session cleanup, redirect |

</details>

<details>
<summary><b>⚙️ Backend Components</b></summary>

#### **Java Classes**

```
src/
└── API/
    └── MY_API.java
        ├── getAPI()           # Returns YouTube API key
        └── isValidKey()       # Validates API key
```

#### **Configuration Files**

```
WEB-INF/
├── web.xml                     # Servlet mappings, welcome files
└── lib/
    ├── json-20240303.jar       # Latest JSON-Java library
    ├── org.json.jar            # JSON parsing utilities
    └── ojdbc8.jar              # Oracle JDBC driver
```

</details>

<details>
<summary><b>📦 External Libraries Details</b></summary>

#### **1. json-20240303.jar**
- **Purpose:** JSON parsing and generation
- **Version:** 20240303 (March 2024)
- **Size:** ~85 KB
- **Maven:**
  ```xml
  <dependency>
      <groupId>org.json</groupId>
      <artifactId>json</artifactId>
      <version>20240303</version>
  </dependency>
  ```
- **Key Classes:**
  - `org.json.JSONObject`
  - `org.json.JSONArray`
  - `org.json.JSONException`

#### **2. org.json.jar**
- **Purpose:** Alternative JSON library
- **Use Case:** Fallback JSON processing
- **Key Features:**
  - Lightweight
  - No external dependencies
  - Simple API

#### **3. ojdbc8.jar**
- **Purpose:** Oracle Database connectivity
- **Version:** 21.x or higher
- **Size:** ~4.5 MB
- **Maven:**
  ```xml
  <dependency>
      <groupId>com.oracle.database.jdbc</groupId>
      <artifactId>ojdbc8</artifactId>
      <version>21.9.0.0</version>
  </dependency>
  ```
- **Key Classes:**
  - `oracle.jdbc.driver.OracleDriver`
  - `oracle.jdbc.OracleConnection`

</details>

---

## 📸 Screenshots

<div align="center">

### 🖼️ **Application Gallery**

</div>

---

### 🏠 **1. Landing Page**

<div align="center">

<img width="1898" height="916" alt="image" src="https://github.com/user-attachments/assets/08af8799-e3c9-4e01-a5ea-e42bec901e5a" />

**Features Showcase:**
- 🎨 Modern dark theme with animated gradients
- 💎 Glassmorphism design elements
- 🎯 Clear call-to-action buttons
- 📱 Fully responsive layout

</div>

```
┌─────────────────────────────────────────────────────────────┐
│                     🎬 LANDING PAGE                         │
├─────────────────────────────────────────────────────────────┤
│  • Animated background with floating particles              │
│  • Glassmorphism card design                                │
│  • 4 Navigation buttons (Register, Login, Admin, About)     │
│  • Smooth hover effects and transitions                     │
│  • Responsive grid layout                                   │
└─────────────────────────────────────────────────────────────┘
```

---

### 📝 **2. User Registration**

<div align="center">

<img width="1881" height="918" alt="image" src="https://github.com/user-attachments/assets/b6972ed1-1bb6-48f9-a7d7-ab4dbba37561" />

**Registration Options:**
- ✉️ Email & Password signup
- 🔐 Google OAuth integration
- ✅ Real-time form validation
- 🔒 Secure password handling

</div>

---

### 🔐 **3. User Login**

<div align="center">

<img width="1903" height="920" alt="image" src="https://github.com/user-attachments/assets/d4b53890-8984-4e2f-8183-3d1f9164b0f8" />

**Authentication Methods:**
- 📧 Email/Password login
- 🔑 Google Sign-In button
- 💾 Session management
- 🔄 Forgot password link

</div>

---

### 🎯 **4. User Dashboard**

<div align="center">

<img width="1881" height="925" alt="image" src="https://github.com/user-attachments/assets/48cac6a3-2591-4bd1-a536-41a18041d626" />

**Dashboard Features:**
- 🔍 Live YouTube video search
- 📜 Search history sidebar
- 🎥 Embedded video player
- ⚡ Real-time results
- 📊 User statistics

</div>

```
┌─────────────────────────────────────────────────────────────┐
│                    🎯 USER DASHBOARD                         │
├──────────────────┬──────────────────────────────────────────┤
│   SIDEBAR        │          MAIN CONTENT                    │
│                  │                                           │
│ 📜 Search History│  🔍 Search Bar                           │
│ • Java Tutorial  │  ──────────────────────────────────────  │
│ • Python Basics  │                                           │
│ • Web Dev        │  🎥 Video Results Grid                   │
│                  │  ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│ 🔍 New Search    │  │  Video 1 │ │  Video 2 │ │  Video 3 │ │
│ [Search Box]     │  │  Player  │ │  Player  │ │  Player  │ │
│ [Search Button]  │  └──────────┘ └──────────┘ └──────────┘ │
│                  │  ┌──────────┐ ┌──────────┐ ┌──────────┐ │
│ 👤 User: John    │  │  Video 4 │ │  Video 5 │ │  Video 6 │ │
│ 🚪 Logout        │  │  Player  │ │  Player  │ │  Player  │ │
│                  │  └──────────┘ └──────────┘ └──────────┘ │
└──────────────────┴──────────────────────────────────────────┘
```

---

### 👨‍💼 **5. Admin Login**

<div align="center">

<img width="1908" height="921" alt="image" src="https://github.com/user-attachments/assets/165a92e0-61c5-43f5-8976-7bb1204fca91" />

**Admin Security:**
- 🔒 Secure authentication
- 🛡️ Role-based access
- ⚠️ Unauthorized access warning
- 🔐 Session timeout

</div>

---

### 📊 **6. Admin Dashboard - Overview**

<div align="center">

<img width="1882" height="920" alt="image" src="https://github.com/user-attachments/assets/24232628-4d21-4467-8484-b492dab29bf9" />

**Key Metrics:**
- 👥 Total Users: 150
- 🔍 Total Searches: 1,247
- 👤 Active Users: 89
- 🎯 Unique Topics: 234

</div>

```
┌─────────────────────────────────────────────────────────────┐
│                   📊 ADMIN DASHBOARD                         │
├─────────────────────────────────────────────────────────────┤
│  Header: 🎬 YouTube Analytics | 👤 admin | 🚪 Logout        │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌──────────────┐ ┌──────────────┐ ┌──────────────┐       │
│  │ 👥 Total     │ │ 🔍 Total     │ │ 👤 Active    │       │
│  │   Users      │ │   Searches   │ │   Users      │       │
│  │              │ │              │ │              │       │
│  │    150       │ │   1,247      │ │     89       │       │
│  │ All time     │ │ +15% ↑       │ │ +8% ↑        │       │
│  └──────────────┘ └──────────────┘ └──────────────┘       │
│                                                              │
│  ┌──────────────────────────────────────────────────────┐  │
│  │         📈 User Search Distribution (Pie Chart)      │  │
│  │                                                       │  │
│  │         [Interactive Google Pie Chart]               │  │
│  │                                                       │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

### 📈 **7. Admin Dashboard - Analytics Charts**

<div align="center">

<img width="1861" height="680" alt="image" src="https://github.com/user-attachments/assets/f5348508-3baf-4cb1-87d3-36dadaf850e3" />

**Chart Types:**
- 🥧 Pie Chart: User search distribution
- 📊 Bar Chart: Top 5 searched topics
- 📉 Line Chart: Monthly trends
- 📊 Column Chart: User activity

</div>

---

### 🗂️ **8. Admin Dashboard - Search Logs**

<div align="center">

<img width="1871" height="608" alt="image" src="https://github.com/user-attachments/assets/c5f3ce09-e6d3-46cb-a50a-1b0443edb524" />

**Table Features:**
- 📋 All user searches
- ⏰ Timestamps
- 👤 User information
- 🗑️ Delete actions
- 🔍 Filter & sort

</div>

```
┌─────────────────────────────────────────────────────────────┐
│              🗂️ DETAILED SEARCH LOGS                        │
├─────────────────────────────────────────────────────────────┤
│  [🗑️ Delete All Logs]                                       │
├──────────┬──────────────┬────────────────────┬─────────────┤
│  User    │   Topic      │   Search Time      │   Action    │
├──────────┼──────────────┼────────────────────┼─────────────┤
│ John Doe │ Java Tutorial│ 31-OCT-2025 14:30 │ [🗑️ Delete]│
│ Jane S.  │ Python Basics│ 31-OCT-2025 13:45 │ [🗑️ Delete]│
│ Bob M.   │ Web Dev      │ 30-OCT-2025 16:20 │ [🗑️ Delete]│
│ Alice J. │ React JS     │ 30-OCT-2025 11:15 │ [🗑️ Delete]│
│ Mike T.  │ Node.js      │ 29-OCT-2025 09:30 │ [🗑️ Delete]│
└──────────┴──────────────┴────────────────────┴─────────────┘
```

---

### 📱 **9. Mobile Responsive Views**

<div align="center">

<table>
<tr>
<td width="33%">
<img width="364" height="778" alt="image" src="https://github.com/user-attachments/assets/b807014c-e503-4d35-aa6d-51120e7367fe" />
<p><b>Landing Page</b></p>
</td>
<td width="33%">
<img width="367" height="798" alt="image" src="https://github.com/user-attachments/assets/5354e6c2-5bbf-4adf-9dd3-f0ca86a57411" />
<p><b>Dashboard</b></p>
</td>
<td width="33%">
<img width="363" height="799" alt="image" src="https://github.com/user-attachments/assets/86ab3046-abd8-4003-a9d4-fe9f9ded42a4" />
<p><b>Admin Panel</b></p>
</td>
</tr>
</table>

**Mobile Features:**
- 📱 Touch-optimized interface
- 🔄 Swipe gestures
- 📊 Responsive charts
- 🎯 Mobile-first design

</div>

---

## 🎮 Usage Guide

<div align="center">

### 📖 **Complete User Manual**

</div>

---

### 👤 **For End Users**

<details open>
<summary><b>1️⃣ Getting Started</b></summary>

#### **Step 1: Create an Account**

```
📍 Navigate to: http://localhost:8080/youtube-video-suggestion/register.jsp

Option A: Email Registration
├── ✍️ Enter full name
├── 📧 Enter email address
├── 🔐 Create password
└── ✅ Click "Create Account"

Option B: Google Sign-Up
├── 🔘 Click "Sign in with Google"
├── 🔑 Choose Google account
├── ✅ Grant permissions
└── ↩️ Auto-redirect to dashboard
```

**✅ Success Indicators:**
- Green success message
- "Login here" link appears
- Email confirmation (optional)

</details>

<details open>
<summary><b>2️⃣ Logging In</b></summary>

#### **Step 2: Sign In to Your Account**

```
📍 Navigate to: http://localhost:8080/youtube-video-suggestion/login.jsp

Authentication Methods:
├── 📧 Email & Password
│   ├── Enter registered email
│   ├── Enter password
│   └── Click "Sign In"
│
└── 🔐 Google OAuth
    ├── Click "Sign in with Google"
    ├── Select account
    └── Auto-login
```

**🔒 Security Features:**
- Session timeout: 30 minutes
- Secure password storage
- Failed login tracking

</details>

<details open>
<summary><b>3️⃣ Searching Videos</b></summary>

#### **Step 3: Find YouTube Videos**

```
📊 Dashboard Interface

Search Process:
├── 1️⃣ Enter keyword in search box
│   Examples:
│   • "Java programming tutorial"
│   • "React hooks explained"
│   • "Python for beginners"
│
├── 2️⃣ Click "Search Videos" button
│
├── 3️⃣ View results (6 videos per search)
│   ├── 🎥 Embedded video players
│   ├── 📝 Video titles
│   └── 🔗 "Watch on YouTube" links
│
└── 4️⃣ Play videos inline or open YouTube
```

**💡 Pro Tips:**
- Use specific keywords for better results
- Click video titles to read descriptions
- Search history auto-saves

</details>

<details open>
<summary><b>4️⃣ Managing Search History</b></summary>

#### **Step 4: Access Your Search History**

```
📜 Sidebar Features

History Management:
├── 📋 View all past searches
│   • Most recent at top
│   • Timestamps displayed
│   • Click to re-search
│
├── 🔍 Quick re-search
│   • Click any keyword
│   • Instantly view results
│   • No API quota used
│
└── 📊 Personal statistics
    • Total searches
    • Favorite topics
    • Search patterns
```

</details>

<details open>
<summary><b>5️⃣ User Profile & Settings</b></summary>

#### **Step 5: Manage Your Profile**

```
👤 User Menu (Top-right)

Profile Options:
├── ℹ️ View profile info
│   • Name
│   • Email
│   • Member since
│
├── 📊 View statistics
│   • Total searches
│   • Favorite topics
│   • Activity graph
│
└── 🚪 Logout
    • End session
    • Clear cache
    • Redirect to home
```

</details>

---

### 👨‍💼 **For Administrators**

<details open>
<summary><b>1️⃣ Admin Access</b></summary>

#### **Step 1: Admin Login**

```
📍 Navigate to: http://localhost:8080/youtube-video-suggestion/adminLogin.jsp

Default Credentials:
├── 👤 Username: admin
└── 🔐 Password: admin123

⚠️ IMPORTANT: Change default password immediately!
```

**🔒 Security Checklist:**
- [ ] Change default password
- [ ] Enable two-factor authentication (if available)
- [ ] Review access logs regularly
- [ ] Set session timeout

</details>

<details open>
<summary><b>2️⃣ Dashboard Overview</b></summary>

#### **Step 2: Understanding the Dashboard**

```
📊 Admin Dashboard Sections

1️⃣ Statistics Cards (Top)
├── 👥 Total Users
├── 🔍 Total Searches
├── 👤 Active Users (This Month)
└── 🎯 Unique Topics

2️⃣ Analytics Charts (Middle)
├── 🥧 User Search Distribution (Pie)
└── 📊 Top 5 Topics (Bar)

3️⃣ Data Table (Bottom)
├── 📋 All search logs
├── 👤 User information
├── ⏰ Timestamps
└── 🗑️ Delete actions
```

</details>

<details open>
<summary><b>3️⃣ Analyzing User Behavior</b></summary>

#### **Step 3: User Analytics**

```
📈 Analytics Tools

Key Metrics:
├── 📊 User Engagement
│   • Daily active users
│   • Weekly active users
│   • Monthly active users
│   • User retention rate
│
├── 🔥 Popular Topics
│   • Most searched keywords
│   • Trending topics
│   • Topic categories
│   • Search frequency
│
├── 📅 Time-based Analysis
│   • Peak usage hours
│   • Daily trends
│   • Weekly patterns
│   • Monthly comparisons
│
└── 👥 User Segmentation
    • New users vs returning
    • Heavy users vs light users
    • Active vs inactive
```

**📊 Chart Interactions:**
- Hover for detailed info
- Click legends to filter
- Export data (if enabled)

</details>

<details open>
<summary><b>4️⃣ Data Management</b></summary>

#### **Step 4: Managing Search Logs**

```
🗑️ Data Operations

Individual Deletion:
├── 1️⃣ Locate search entry in table
├── 2️⃣ Click "Delete" button
├── 3️⃣ Confirm in modal popup
├── 4️⃣ Entry removed instantly
└── ✅ Success message displayed

Bulk Deletion:
├── 1️⃣ Click "Delete All Logs" button
├── 2️⃣ Read warning message
├── 3️⃣ Confirm deletion
├── 4️⃣ All logs cleared
└── ✅ Confirmation message

⚠️ WARNING: Bulk deletion is IRREVERSIBLE!
```

</details>

<details open>
<summary><b>5️⃣ Monitoring System Health</b></summary>

#### **Step 5: System Monitoring**

```
🔍 Health Checks

Monitor These Metrics:
├── 📊 API Usage
│   • YouTube API quota used
│   • Remaining quota
│   • Quota reset time
│   • Error rate
│
├── 💾 Database Performance
│   • Connection pool status
│   • Query response time
│   • Table sizes
│   • Index health
│
├── 👥 User Activity
│   • Concurrent users
│   • Average session time
│   • Bounce rate
│   • Error rate
│
└── 🚨 Alerts & Notifications
    • API quota warnings
    • Database errors
    • System performance
    • Security alerts
```

</details>

---

### 🎯 **Common Tasks**

<table>
<tr>
<th width="30%">Task</th>
<th width="70%">Quick Guide</th>
</tr>

<tr>
<td><b>🔍 Search Videos</b></td>
<td>
<code>Dashboard → Enter keyword → Click Search → View results</code>
</td>
</tr>

<tr>
<td><b>📜 View History</b></td>
<td>
<code>Dashboard → Sidebar → Click any previous search</code>
</td>
</tr>

<tr>
<td><b>📊 Check Analytics</b></td>
<td>
<code>Admin Login → View charts → Analyze data</code>
</td>
</tr>

<tr>
<td><b>🗑️ Delete Logs</b></td>
<td>
<code>Admin Dashboard → Table → Click Delete → Confirm</code>
</td>
</tr>

<tr>
<td><b>👥 Add User</b></td>
<td>
<code>Register page → Fill form → Submit → Login</code>
</td>
</tr>

<tr>
<td><b>🚪 Logout</b></td>
<td>
<code>Click username → Logout → Confirm</code>
</td>
</tr>
---


## 🗺️ ER Diagram

<div align="center">

### 🗄️ **Database Entity Relationship Diagram**

</div>

```
┌─────────────────────────────────────────────────────────────────────────┐
│                     DATABASE SCHEMA - ER DIAGRAM                         │
└─────────────────────────────────────────────────────────────────────────┘


                    ┌──────────────────────────┐
                    │         ADMIN            │
                    ├──────────────────────────┤
                    │ 🔑 id (PK)              │ ← NUMBER
                    │ 👤 username (UQ)        │ ← VARCHAR2(50)
                    │ 🔐 password             │ ← VARCHAR2(50)
                    │ 📅 created_date         │ ← TIMESTAMP
                    └────────────┬─────────────┘
                                 │
                                 │ (manages)
                                 │ 1:N relationship
                                 ↓
                    ┌──────────────────────────┐
                    │        VDUSERS           │
                    ├──────────────────────────┤
                    │ 🔑 id (PK)              │ ← NUMBER (user_seq)
                    │ 👤 name                 │ ← VARCHAR2(50)
                    │ 📧 email (UQ)           │ ← VARCHAR2(100)
                    │ 🔐 password             │ ← VARCHAR2(50)
                    │ 📅 register_date        │ ← TIMESTAMP
                    │ ⏰ last_login           │ ← TIMESTAMP
                    │ ✅ is_active            │ ← NUMBER(1)
                    └────────────┬─────────────┘
                                 │
                                 │ (performs)
                                 │ 1:N relationship
                                 ↓
                    ┌──────────────────────────┐
                    │    SEARCH_HISTORY        │
                    ├──────────────────────────┤
                    │ 🔑 id (PK)              │ ← NUMBER (search_seq)
                    │ 🔗 user_id (FK)         │ ← NUMBER
                    │ 🔍 keyword              │ ← VARCHAR2(100)
                    │ ⏰ search_time          │ ← TIMESTAMP
                    │ 📊 video_count          │ ← NUMBER
                    └──────────────────────────┘
                                 ▲
                                 │
                                 └─── Foreign Key Constraint
                                      ON DELETE CASCADE


┌─────────────────────────────────────────────────────────────────────────┐
│                         RELATIONSHIP DETAILS                             │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  📊 Cardinality:                                                        │
│  ├── ADMIN → VDUSERS        : 1 : Many (One admin manages all users)  │
│  └── VDUSERS → SEARCH_HIST  : 1 : Many (One user has many searches)   │
│                                                                          │
│  🔗 Constraints:                                                        │
│  ├── Primary Keys (PK)      : Unique identifiers for each table        │
│  ├── Foreign Keys (FK)      : search_history.user_id → vdusers.id     │
│  ├── Unique Constraints (UQ): admin.username, vdusers.email           │
│  └── Cascade Delete         : Deleting user removes their searches     │
│                                                                          │
│  🔢 Sequences:                                                          │
│  ├── user_seq               : Auto-increment for vdusers.id           │
│  └── search_seq             : Auto-increment for search_history.id    │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘


┌─────────────────────────────────────────────────────────────────────────┐
│                           DATA DICTIONARY                                │
├──────────────┬──────────────┬─────────────┬───────────────────────────┤
│ Table        │ Column       │ Type        │ Description                │
├──────────────┼──────────────┼─────────────┼───────────────────────────┤
│ admin        │ id           │ NUMBER      │ Primary key                │
│              │ username     │ VARCHAR2(50)│ Unique admin username      │
│              │ password     │ VARCHAR2(50)│ Hashed password            │
│              │ created_date │ TIMESTAMP   │ Account creation date      │
├──────────────┼──────────────┼─────────────┼───────────────────────────┤
│ vdusers      │ id           │ NUMBER      │ Primary key (auto-gen)     │
│              │ name         │ VARCHAR2(50)│ User full name             │
│              │ email        │ VARCHAR2(100│ Unique email address       │
│              │ password     │ VARCHAR2(50)│ Hashed password            │
│              │ register_date│ TIMESTAMP   │ Registration timestamp     │
│              │ last_login   │ TIMESTAMP   │ Last login timestamp       │
│              │ is_active    │ NUMBER(1)   │ Account status (1/0)       │
├──────────────┼──────────────┼─────────────┼───────────────────────────┤
│search_history│ id           │ NUMBER      │ Primary key (auto-gen)     │
│              │ user_id      │ NUMBER      │ Foreign key to vdusers     │
│              │ keyword      │ VARCHAR2(100│ Search keyword             │
│              │ search_time  │ TIMESTAMP   │ When search was made       │
│              │ video_count  │ NUMBER      │ Videos returned            │
└──────────────┴──────────────┴─────────────┴───────────────────────────┘
```

---

### 📊 **Database Statistics**

<div align="center">

| Metric | Value | Description |
|--------|-------|-------------|
| 🗂️ **Total Tables** | 3 | admin, vdusers, search_history |
| 🔢 **Sequences** | 2 | user_seq, search_seq |
| 🔗 **Foreign Keys** | 1 | search_history → vdusers |
| 🔐 **Unique Constraints** | 2 | username, email |
| 📈 **Indexes** | 3 | user_id, keyword, search_time |
| 👁️ **Views** | 3 | Analytics views |
| ⚙️ **Stored Procedures** | 2 | Stats & cleanup |
| 🎯 **Triggers** | 1 | Update last_login |

</div>

---

## 🔧 Troubleshooting

<div align="center">

### 🛠️ **Common Issues & Solutions**

</div>

<details>
<summary><b>❌ Database Connection Issues</b></summary>

#### **Problem:** Cannot connect to Oracle database

```
Error: ORA-12154: TNS:could not resolve the connect identifier
```

**Solutions:**
1. ✅ Check if Oracle database is running
   ```bash
   lsnrctl status
   ```

2. ✅ Verify connection string
   ```java
   jdbc:oracle:thin:@localhost:1521:xe
   ```

3. ✅ Test connection with SQL*Plus
   ```bash
   sqlplus system/password@localhost:1521/xe
   ```

4. ✅ Check tnsnames.ora configuration

5. ✅ Ensure ojdbc8.jar is in WEB-INF/lib

</details>

<details>
<summary><b>❌ YouTube API Errors</b></summary>

#### **Problem:** API quota exceeded

```
Error: quotaExceeded
```

**Solutions:**
1. ✅ Check API usage in Google Cloud Console
2. ✅ Implement caching to reduce API calls
3. ✅ Request quota increase
4. ✅ Use multiple API keys (rotation)

#### **Problem:** Invalid API key

```
Error: API key not valid
```

**Solutions:**
1. ✅ Verify API key in Google Cloud Console
2. ✅ Check if YouTube Data API v3 is enabled
3. ✅ Update API key in MY_API.java
4.✅ Check for API restrictions
5. ✅ Regenerate API key if compromised

</details>

<details>
<summary><b>❌ Google OAuth Issues</b></summary>

#### **Problem:** OAuth redirect not working

```
Error: redirect_uri_mismatch
```

**Solutions:**
1. ✅ Add redirect URI in Google Cloud Console
   ```
   http://localhost:8080/youtube-video-suggestion/googleAuth.jsp
   http://localhost:8080/youtube-video-suggestion/dashboard.jsp
   ```

2. ✅ Ensure exact match (including http/https)

3. ✅ Clear browser cache and cookies

4. ✅ Verify client ID in JSP files

#### **Problem:** OAuth popup blocked

**Solutions:**
1. ✅ Allow popups for localhost
2. ✅ Check browser console for errors
3. ✅ Use incognito mode for testing

</details>

<details>
<summary><b>❌ Tomcat Deployment Issues</b></summary>

#### **Problem:** Application not deploying

```
Error: Context [/youtube-video-suggestion] startup failed
```

**Solutions:**
1. ✅ Check Tomcat logs
   ```bash
   tail -f /path/to/tomcat/logs/catalina.out
   ```

2. ✅ Verify web.xml configuration

3. ✅ Check for missing JAR files in WEB-INF/lib

4. ✅ Ensure Java version compatibility

5. ✅ Clean and rebuild project
   ```bash
   # Remove old deployment
   rm -rf /path/to/tomcat/webapps/youtube-video-suggestion
   # Redeploy
   cp -r project /path/to/tomcat/webapps/
   ```

#### **Problem:** 404 Error on Index.jsp

**Solutions:**
1. ✅ Check context path
   ```
   http://localhost:8080/youtube-video-suggestion/Index.jsp
   ```

2. ✅ Verify file exists in webapps directory

3. ✅ Check file permissions (Linux/Mac)
   ```bash
   chmod 755 Index.jsp
   ```

</details>

<details>
<summary><b>❌ JSON Parsing Errors</b></summary>

#### **Problem:** JSONException

```
Error: org.json.JSONException: A JSONObject text must begin with '{'
```

**Solutions:**
1. ✅ Verify json-20240303.jar is in classpath

2. ✅ Check API response format

3. ✅ Add error handling
   ```java
   try {
       JSONObject json = new JSONObject(response);
   } catch (JSONException e) {
       System.out.println("Invalid JSON: " + response);
       e.printStackTrace();
   }
   ```

4. ✅ Validate JSON using online validator

</details>

<details>
<summary><b>❌ Session Management Issues</b></summary>

#### **Problem:** Session timeout too short

**Solutions:**
1. ✅ Configure in web.xml
   ```xml
   <session-config>
       <session-timeout>30</session-timeout> <!-- 30 minutes -->
   </session-config>
   ```

2. ✅ Check Tomcat session timeout

#### **Problem:** Session not persisting

**Solutions:**
1. ✅ Verify session attributes are set correctly
   ```java
   session.setAttribute("uid", userId);
   ```

2. ✅ Check if cookies are enabled in browser

3. ✅ Clear browser cookies and retry

</details>

<details>
<summary><b>❌ CSS/JavaScript Not Loading</b></summary>

#### **Problem:** Styles not applied

**Solutions:**
1. ✅ Check browser console for 404 errors

2. ✅ Verify file paths are correct

3. ✅ Clear browser cache (Ctrl+Shift+Delete)

4. ✅ Force reload (Ctrl+F5)

5. ✅ Check Content-Type headers

</details>

<details>
<summary><b>❌ Character Encoding Issues</b></summary>

#### **Problem:** Special characters display incorrectly

**Solutions:**
1. ✅ Set page encoding in JSP
   ```jsp
   <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   ```

2. ✅ Configure Tomcat connector
   ```xml
   <Connector port="8080" URIEncoding="UTF-8"/>
   ```

3. ✅ Set database NLS_LANG
   ```sql
   ALTER SESSION SET NLS_LANGUAGE='AMERICAN';
   ```

</details>

---

### 🐛 **Debug Mode**

<details>
<summary><b>Enable Debug Logging</b></summary>

#### **1. Enable Tomcat Debug Logs**

Edit `conf/logging.properties`:
```properties
# Set log level to FINE
.level = FINE
java.util.logging.ConsoleHandler.level = FINE
```

#### **2. Add Debug Statements in JSP**

```jsp
<%
// Enable debugging
final boolean DEBUG = true;

if (DEBUG) {
    out.println("<!-- DEBUG: Session ID = " + session.getId() + " -->");
    out.println("<!-- DEBUG: User ID = " + session.getAttribute("uid") + " -->");
}
%>
```

#### **3. Browser Developer Tools**

```
Chrome/Firefox: Press F12

Useful Tabs:
├── Console    - JavaScript errors
├── Network    - API calls, response codes
├── Application- Cookies, session storage
└── Sources    - Breakpoints, debugging
```

</details>

---

### 📞 **Getting Help**

<div align="center">

| Issue Type | Support Channel |
|------------|-----------------|
| 🐛 Bug Reports | [GitHub Issues](https://github.com/yourusername/youtube-video-suggestion/issues) |
| 💡 Feature Requests | [GitHub Discussions](https://github.com/yourusername/youtube-video-suggestion/discussions) |
| ❓ Questions | [Stack Overflow](https://stackoverflow.com/questions/tagged/jsp+oracle) |
| 📧 Direct Contact | raysonu0900@gmail.com |

</div>

---

## 🚀 Deployment

<div align="center">

### 📦 **Production Deployment Guide**

</div>

### 🌐 **Production Checklist**

<details>
<summary><b>✅ Pre-Deployment Checklist</b></summary>

#### **Security**
- [ ] Change default admin password
- [ ] Use environment variables for sensitive data
- [ ] Enable HTTPS/SSL
- [ ] Implement rate limiting
- [ ] Add CSRF protection
- [ ] Sanitize all user inputs
- [ ] Hash passwords with BCrypt/Argon2
- [ ] Set secure session cookies
- [ ] Configure CORS properly
- [ ] Add security headers

#### **Configuration**
- [ ] Update database connection for production
- [ ] Configure production API keys
- [ ] Set production OAuth redirect URIs
- [ ] Update email configuration
- [ ] Configure logging levels
- [ ] Set appropriate session timeout
- [ ] Configure backup schedule

#### **Performance**
- [ ] Enable database connection pooling
- [ ] Implement caching (Redis/Memcached)
- [ ] Optimize database queries
- [ ] Add database indexes
- [ ] Minify CSS/JavaScript
- [ ] Enable GZIP compression
- [ ] Configure CDN for static assets

#### **Monitoring**
- [ ] Set up error logging
- [ ] Configure monitoring tools
- [ ] Set up alerts
- [ ] Enable performance monitoring
- [ ] Configure log rotation

</details>

---

### 🐳 **Docker Deployment**

<details>
<summary><b>Deploy with Docker</b></summary>

#### **Create Dockerfile**

```dockerfile
# Dockerfile
FROM tomcat:9.0-jdk11

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy application WAR file
COPY youtube-video-suggestion.war /usr/local/tomcat/webapps/ROOT.war

# Copy configuration files
COPY conf/server.xml /usr/local/tomcat/conf/

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
```

#### **Create docker-compose.yml**

```yaml
version: '3.8'

services:
  # Oracle Database
  oracle-db:
    image: gvenzl/oracle-xe:latest
    environment:
      - ORACLE_PASSWORD=your_password
      - ORACLE_DATABASE=YTDB
    ports:
      - "1521:1521"
    volumes:
      - oracle-data:/opt/oracle/oradata
      - ./database_setup.sql:/docker-entrypoint-initdb.d/setup.sql
    networks:
      - app-network

  # Tomcat Application Server
  tomcat-app:
    build: .
    ports:
      - "8080:8080"
    environment:
      - DB_HOST=oracle-db
      - DB_PORT=1521
      - DB_SID=YTDB
      - DB_USER=system
      - DB_PASSWORD=your_password
      - YOUTUBE_API_KEY=${YOUTUBE_API_KEY}
      - GOOGLE_CLIENT_ID=${GOOGLE_CLIENT_ID}
    depends_on:
      - oracle-db
    networks:
      - app-network

volumes:
  oracle-data:

networks:
  app-network:
    driver: bridge
```

#### **Deploy with Docker Compose**

```bash
# 1. Build and start containers
docker-compose up -d

# 2. Check status
docker-compose ps

# 3. View logs
docker-compose logs -f

# 4. Stop containers
docker-compose down

# 5. Rebuild and restart
docker-compose up -d --build
```

</details>

---

### ☁️ **Cloud Deployment**

<details>
<summary><b>AWS Deployment</b></summary>

#### **Option 1: AWS Elastic Beanstalk**

```bash
# 1. Install AWS CLI and EB CLI
pip install awscli awsebcli

# 2. Initialize EB application
eb init -p tomcat-8.5-java-11 youtube-suggestion-app

# 3. Create environment
eb create production-env

# 4. Deploy application
eb deploy

# 5. Open application
eb open
```

#### **Option 2: AWS EC2**

```bash
# 1. Launch EC2 instance (Amazon Linux 2)
# 2. Connect via SSH
ssh -i keypair.pem ec2-user@your-instance-ip

# 3. Install Java and Tomcat
sudo yum update -y
sudo yum install java-11-openjdk -y
sudo yum install tomcat -y

# 4. Deploy application
sudo cp youtube-video-suggestion.war /usr/share/tomcat/webapps/

# 5. Start Tomcat
sudo systemctl start tomcat
sudo systemctl enable tomcat

# 6. Configure security group (open port 8080)
```

#### **RDS for Oracle Database**

```bash
# 1. Create RDS Oracle instance
aws rds create-db-instance \
    --db-instance-identifier yt-oracle-db \
    --db-instance-class db.t3.medium \
    --engine oracle-se2 \
    --master-username admin \
    --master-user-password YourPassword123 \
    --allocated-storage 20

# 2. Update connection string in application
jdbc:oracle:thin:@yt-oracle-db.xxxxx.rds.amazonaws.com:1521:ORCL
```

</details>

<details>
<summary><b>Google Cloud Platform (GCP)</b></summary>

#### **Deploy to Google App Engine**

```yaml
# app.yaml
runtime: java11

handlers:
- url: /.*
  script: auto

env_variables:
  YOUTUBE_API_KEY: "your-api-key"
  GOOGLE_CLIENT_ID: "your-client-id"
```

```bash
# 1. Install Google Cloud SDK
curl https://sdk.cloud.google.com | bash

# 2. Initialize project
gcloud init

# 3. Deploy application
gcloud app deploy

# 4. View application
gcloud app browse
```

#### **Cloud SQL for Oracle**

```bash
# 1. Create Cloud SQL instance
gcloud sql instances create yt-oracle \
    --database-version=ORACLE_12_2 \
    --tier=db-custom-1-3840 \
    --region=us-central1

# 2. Connect from App Engine
gcloud sql connect yt-oracle --user=system
```

</details>

<details>
<summary><b>Microsoft Azure</b></summary>

#### **Deploy to Azure App Service**

```bash
# 1. Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# 2. Login to Azure
az login

# 3. Create resource group
az group create --name YTSuggestionRG --location eastus

# 4. Create App Service plan
az appservice plan create --name YTAppPlan \
    --resource-group YTSuggestionRG --sku B1 --is-linux

# 5. Create web app
az webapp create --resource-group YTSuggestionRG \
    --plan YTAppPlan --name yt-suggestion-app \
    --runtime "TOMCAT|9.0-java11"

# 6. Deploy WAR file
az webapp deploy --resource-group YTSuggestionRG \
    --name yt-suggestion-app --src-path youtube-video-suggestion.war
```

</details>

---

### 🔐 **Environment Variables**

<details>
<summary><b>Configure Environment Variables</b></summary>

#### **Create .env file (Not for production!)**

```bash
# .env
DB_HOST=localhost
DB_PORT=1521
DB_SID=xe
DB_USER=system
DB_PASSWORD=your_password

YOUTUBE_API_KEY=AIzaSyAyzNBtwQNWrNlI2I3DETLEP5vINxLo-YE
GOOGLE_CLIENT_ID=252817625899-xxxxxxxxxxxxx.apps.googleusercontent.com

SESSION_TIMEOUT=30
LOG_LEVEL=INFO
```

#### **Access in Java**

```java
// Update MY_API.java
public class MY_API {
    public static String getAPI() {
        String apiKey = System.getenv("YOUTUBE_API_KEY");
        if (apiKey == null || apiKey.isEmpty()) {
            throw new RuntimeException("YOUTUBE_API_KEY not configured!");
        }
        return apiKey;
    }
}
```

#### **Set in Production**

```bash
# Linux/Mac
export YOUTUBE_API_KEY="your-key"
export GOOGLE_CLIENT_ID="your-client-id"

# Windows
set YOUTUBE_API_KEY=your-key
set GOOGLE_CLIENT_ID=your-client-id

# Docker
docker run -e YOUTUBE_API_KEY=your-key -e GOOGLE_CLIENT_ID=your-id ...
```

</details>

---

## 🤝 Contributing

<div align="center">

### 🌟 **We Welcome Contributions!**

</div>

Thank you for considering contributing to the YouTube Video Suggestion System! Contributions are what make the open-source community such an amazing place to learn, inspire, and create.

---

### 📝 **How to Contribute**

<details open>
<summary><b>1️⃣ Fork & Clone</b></summary>

```bash
# 1. Fork the repository on GitHub
# Click the "Fork" button at https://github.com/yourusername/youtube-video-suggestion

# 2. Clone your fork
git clone https://github.com/YOUR_USERNAME/youtube-video-suggestion.git
cd youtube-video-suggestion

# 3. Add upstream remote
git remote add upstream https://github.com/yourusername/youtube-video-suggestion.git

# 4. Verify remotes
git remote -v
```

</details>

<details open>
<summary><b>2️⃣ Create a Branch</b></summary>

```bash
# Create and checkout a new branch
git checkout -b feature/your-feature-name

# Branch naming conventions:
# - feature/add-user-profile
# - bugfix/fix-login-error
# - hotfix/security-patch
# - docs/update-readme
# - refactor/optimize-queries
```

</details>

<details open>
<summary><b>3️⃣ Make Changes</b></summary>

```bash
# 1. Make your changes
# Edit files, add features, fix bugs

# 2. Test your changes thoroughly
# Run all test cases

# 3. Follow coding standards
# - Use consistent indentation (4 spaces)
# - Add comments for complex logic
# - Follow Java naming conventions
# - Write meaningful commit messages
```

#### **Coding Standards**

```java
// ✅ Good
public class UserService {
    /**
     * Authenticates user with email and password
     * @param email User email address
     * @param password User password
     * @return User object if authenticated, null otherwise
     */
    public User authenticate(String email, String password) {
        // Implementation
    }
}

// ❌ Avoid
public class user_service {
    public User auth(String e,String p){
        // No comments, poor naming
    }
}
```

</details>

<details open>
<summary><b>4️⃣ Commit Changes</b></summary>

```bash
# 1. Stage your changes
git add .

# 2. Commit with meaningful message
git commit -m "feat: add user profile page with edit functionality"

# Commit message format:
# <type>: <description>
#
# Types:
# - feat: New feature
# - fix: Bug fix
# - docs: Documentation changes
# - style: Code style changes (formatting)
# - refactor: Code refactoring
# - test: Adding tests
# - chore: Maintenance tasks

# Examples:
git commit -m "fix: resolve database connection timeout issue"
git commit -m "docs: update installation instructions"
git commit -m "refactor: optimize search query performance"
```

</details>

<details open>
<summary><b>5️⃣ Push & Create Pull Request</b></summary>

```bash
# 1. Push to your fork
git push origin feature/your-feature-name

# 2. Go to GitHub and create Pull Request
# Navigate to: https://github.com/YOUR_USERNAME/youtube-video-suggestion
# Click "Compare & pull request"

# 3. Fill in PR template:
# - Title: Brief description
# - Description: Detailed explanation
# - Related issues: Link to issues
# - Screenshots: If UI changes
# - Testing: How you tested
```

#### **Pull Request Template**

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Code refactoring
- [ ] Performance improvement

## Testing
- [ ] All existing tests pass
- [ ] New tests added (if applicable)
- [ ] Manually tested on local environment
- [ ] Tested on different browsers

## Screenshots (if applicable)
Add screenshots here

## Checklist
- [ ] Code follows project style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex logic
- [ ] Documentation updated
- [ ] No new warnings generated
```

</details>

---

### 🐛 **Reporting Bugs**

<details>
<summary><b>Bug Report Template</b></summary>

```markdown
## Bug Description
A clear and concise description of the bug

## Steps to Reproduce
1. Go to '...'
2. Click on '...'
3. Scroll down to '...'
4. See error

## Expected Behavior
What you expected to happen

## Actual Behavior
What actually happened

## Screenshots
If applicable, add screenshots

## Environment
- OS: [e.g., Windows 10, Ubuntu 20.04]
- Browser: [e.g., Chrome 95, Firefox 94]
- Java Version: [e.g., Java 11]
- Tomcat Version: [e.g., 9.0.54]
- Oracle Version: [e.g., 19c]

## Additional Context
Any other relevant information
```

</details>

---

### 💡 **Feature Requests**

<details>
<summary><b>Feature Request Template</b></summary>

```markdown
## Feature Description
Clear description of the proposed feature

## Problem Statement
What problem does this feature solve?

## Proposed Solution
How should this feature work?

## Alternative Solutions
Other approaches you've considered

## Additional Context
Mockups, examples, or references
```

</details>

---

### 👥 **Contributors**

<div align="center">

**Thank you to all our contributors!** 🎉


</div>

---

## 📄 License

<div align="center">

### ⚖️ **MIT License**

</div>

```
MIT License

Copyright (c) 2025 [Sonu Ray]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 👨‍💻 Author

<div align="center">

### **[SONU RAY]**

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/SONURAY0900))
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sonuray-dev/)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/SONURAY0009)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:raysonu0900@gmail.com)

**Full-Stack Developer | Java Enthusiast | Open Source Contributor**

</div>

---

## 🙏 Acknowledgments

<div align="center">

### **Special Thanks To:**

</div>

- 📺 **[YouTube Data API v3](https://developers.google.com/youtube/v3)** - For providing the video search functionality
- 📊 **[Google Charts](https://developers.google.com/chart)** - For beautiful data visualizations
- 🔐 **[Google OAuth](https://developers.google.com/identity)** - For secure authentication
- 🎨 **[Google Fonts](https://fonts.google.com/)** - For the Poppins font family
- 🗄️ **[Oracle Database](https://www.oracle.com/database/)** - For robust data storage
- 🐱 **[Apache Tomcat](https://tomcat.apache.org/)** - For reliable application hosting
- ☕ **[Java Community](https://www.oracle.com/java/technologies/)** - For continuous development
- 💡 **[Stack Overflow](https://stackoverflow.com/)** - For the amazing developer community
- 🎓 **[MDN Web Docs](https://developer.mozilla.org/)** - For comprehensive web documentation
- 🌟 **All Contributors** - For making this project better

---

### 📚 **Learning Resources**

<table>
<tr>
<th>Topic</th>
<th>Resource</th>
</tr>
<tr>
<td>🌐 JSP & Servlets</td>
<td><a href="https://docs.oracle.com/javaee/7/tutorial/servlets.htm">Oracle JSP Tutorial</a></td>
</tr>
<tr>
<td>🗄️ Oracle Database</td>
<td><a href="https://docs.oracle.com/en/database/">Oracle Documentation</a></td>
</tr>
<tr>
<td>📺 YouTube API</td>
<td><a href="https://developers.google.com/youtube/v3/getting-started">YouTube API Guide</a></td>
</tr>
<tr>
<td>🔐 OAuth 2.0</td>
<td><a href="https://oauth.net/2/">OAuth 2.0 Specification</a></td>
</tr>
<tr>
<td>📊 Google Charts</td>
<td><a href="https://developers.google.com/chart/interactive/docs">Charts Documentation</a></td>
</tr>
</table>

---

### 🌟 **Project Statistics**

<div align="center">

![GitHub stars](https://img.shields.io/github/stars/yourusername/youtube-video-suggestion?style=social)
![GitHub forks](https://img.shields.io/github/forks/yourusername/youtube-video-suggestion?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/yourusername/youtube-video-suggestion?style=social)

![GitHub issues](https://img.shields.io/github/issues/yourusername/youtube-video-suggestion)
![GitHub pull requests](https://img.shields.io/github/issues-pr/yourusername/youtube-video-suggestion)
![GitHub last commit](https://img.shields.io/github/last-commit/yourusername/youtube-video-suggestion)
![GitHub repo size](https://img.shields.io/github/repo-size/yourusername/youtube-video-suggestion)

</div>

---

## 📞 Support

<div align="center">

### **Need Help?**

If you encounter any issues or have questions:

| Support Type | Contact Method |
|--------------|----------------|
| 🐛 **Bug Reports** | [Create an Issue](https://github.com/yourusername/youtube-video-suggestion/issues/new?template=bug_report.md) |
| 💡 **Feature Requests** | [Submit a Request](https://github.com/yourusername/youtube-video-suggestion/issues/new?template=feature_request.md) |
| ❓ **General Questions** | [Discussions](https://github.com/yourusername/youtube-video-suggestion/discussions) |
| 📧 **Direct Contact** | raysonu0900@gmail.com |

</div>

---

## 🔮 Future Enhancements

<details>
<summary><b>📅 Planned Features</b></summary>

### **Version 2.0 Roadmap**

- [ ] 🎥 **Video Playlists** - Create and manage custom playlists
- [ ] ❤️ **Favorites System** - Save favorite videos
- [ ] 🔔 **Notifications** - Email/push notifications for new content
- [ ] 📱 **Mobile App** - Native Android/iOS apps
- [ ] 🌍 **Multi-language Support** - Internationalization (i18n)
- [ ] 🎨 **Theme Customization** - Light/dark mode toggle
- [ ] 📊 **Advanced Analytics** - Machine learning insights
- [ ] 🔍 **Advanced Search Filters** - Duration, date, channel filters
- [ ] 💬 **Comments & Ratings** - User feedback system
- [ ] 🤝 **Social Sharing** - Share videos on social media
- [ ] 📈 **Trending Page** - Display trending videos
- [ ] 👥 **User Profiles** - Extended profile features
- [ ] 🔐 **Two-Factor Authentication** - Enhanced security
- [ ] 📧 **Email Verification** - Account verification
- [ ] 🎯 **Recommendations Engine** - AI-powered suggestions
- [ ] 📱 **PWA Support** - Progressive Web App features
- [ ] 🌐 **API Endpoint** - RESTful API for third-party integration
- [ ] 📦 **Export Data** - Export search history (JSON/CSV)
- [ ] 🔄 **Auto-Refresh** - Real-time updates
- [ ] 🎬 **Video Categories** - Browse by categories

</details>

---


## 🎉 **Thank You!**

If you found this project helpful, please consider:

- ⭐ **Starring** the repository
- 🍴 **Forking** for your own use
- 🐛 **Reporting** issues
- 💡 **Suggesting** features
- 🤝 **Contributing** code
- 📢 **Sharing** with others

---

### **Made with ❤️ and ☕ by [Sonu Ray]**

```
 __   __  _______  __   __  _______  __   __  _______  _______ 
|  | |  ||       ||  | |  ||       ||  | |  ||  _    ||       |
|  |_|  ||   _   ||  |_|  ||_     _||  | |  || |_|   ||    ___|
|       ||  | |  ||       |  |   |  |  |_|  ||       ||   |___ 
|_     _||  |_|  ||       |  |   |  |       ||  _   | |    ___|
  |   |  |       ||   _   |  |   |  |       || |_|   ||   |___ 
  |___|  |_______||__| |__|  |___|  |_______||_______||_______|

    VIDEO SUGGESTION SYSTEM - Discover, Search, Analyze
```

**© 2025 YouTube Video Suggestion System. All rights reserved.**

**License:** MIT | **Version:** 1.0.0 | **Last Updated:** October 31, 2025

---

[![Made with Java](https://img.shields.io/badge/Made%20with-Java-red?style=for-the-badge&logo=java)](https://www.java.com/)
[![Built with JSP](https://img.shields.io/badge/Built%20with-JSP-orange?style=for-the-badge&logo=java)](https://www.oracle.com/java/technologies/jspt.html)
[![Powered by Oracle](https://img.shields.io/badge/Powered%20by-Oracle-red?style=for-the-badge&logo=oracle)](https://www.oracle.com/database/)
[![YouTube API](https://img.shields.io/badge/YouTube-API%20v3-red?style=for-the-badge&logo=youtube)](https://developers.google.com/youtube/v3)

</div>
