# YouTube Video Suggestion System

This repository contains a Java web application that provides YouTube video suggestions and user management. It includes server-side Java, JSP pages, and supporting libraries. Below you'll find the database schema (Oracle-style), an ER diagram, setup instructions, and notes for deploying and securing the application.

---

## Database schema

The SQL below is written for Oracle (uses NUMBER and VARCHAR2). Adapt types if you use another RDBMS.

### Admin table

```sql
CREATE TABLE admin(
    id NUMBER PRIMARY KEY,
    username VARCHAR2(50) UNIQUE,
    password VARCHAR2(50)
);

INSERT INTO admin VALUES(1, 'admin', 'admin123');
COMMIT;
```

### Users table (`vdusers`)

```sql
CREATE TABLE vdusers (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    email VARCHAR2(100) UNIQUE,
    password VARCHAR2(50),
    register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE SEQUENCE user_seq START WITH 1 INCREMENT BY 1;
```

### Search history

```sql
CREATE TABLE search_history (
    id NUMBER PRIMARY KEY,
    user_id NUMBER REFERENCES vdusers(id),
    keyword VARCHAR2(100),
    video_title VARCHAR2(255),
    video_link VARCHAR2(4000),
    video_rating NUMBER,
    search_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE SEQUENCE search_seq START WITH 1 INCREMENT BY 1;
```

---

## ER Diagram (ASCII)

```
  
      ADMIN     
  
   ID (PK)      
   USERNAME     
   PASSWORD     
  

             (manages)
                  

     
         USERS     
     
      ID (PK)      
      NAME         
      EMAIL        
      PASSWORD     
      REGISTER_DATE
     
              
         (1 to many)
              
     
       SEARCH_HISTORY    
     
      ID (PK)            
      USER_ID (FK)       
      KEYWORD            
      VIDEO_TITLE        
      VIDEO_LINK         
      VIDEO_RATING       
      SEARCH_TIME        
     
```

### Relationships

- 1 Admin  Many Users: Admin can manage registered users
- 1 User  Many Searches: Each user can perform multiple searches
- `search_history.user_id`  `vdusers.id`: foreign key relationship

---

## Setup & deployment

1. Create the database and run the SQL statements above. For Oracle use SQL*Plus / SQL Developer.
2. Ensure your application server (Tomcat, etc.) has a JDBC datasource configured and update `WEB-INF/web.xml` or your DAO connection code with the correct JDBC URL, username and password.
3. Build and deploy the WAR to Tomcat.

Quick Tomcat steps:

```powershell
# Build WAR using your IDE or Ant/Maven (if present), then copy to Tomcat webapps
# Example (manual copy):
# copy .\target\yourapp.war "C:\path\to\apache-tomcat-<version>\webapps\"
# Start Tomcat and browse to http://localhost:8080/<app-context>/Index.jsp
```

---

## Security notes

- Do not commit production credentials. Use environment variables or an external config file outside the repository.
- Store passwords hashed (bcrypt/argon2) in production. The sample uses plaintext for demonstration only.

---

## Recommended .gitignore

Add a `.gitignore` at the repository root to exclude build artifacts and IDE metadata. Example:

```
build/
target/
*.class
.classpath
.project
.settings/
/.idea/
*.iml
/.vscode/
/src/main/webapp/WEB-INF/lib/*.jar

# OS files
.DS_Store
Thumbs.db
```

Note: If you keep `WEB-INF/lib` jars in the repo intentionally, remove that line above.

---

## Cleanup suggestion (optional but recommended)

The repo currently includes compiled class files under `build/classes` and some libraries in `WEB-INF/lib`. To keep the repo clean:

1. Add the patterns above to `.gitignore`.
2. Remove those files from git history with:

```powershell
git rm -r --cached build
git rm --cached src/main/webapp/WEB-INF/lib/*.jar
git commit -m "Remove build artifacts and libraries from repository"
git push
```

If you need to purge files from history entirely, consider using `git filter-repo` or `git filter-branch` (careful — rewrite history).

---

## License

Add a license if you plan to share the code publicly.

---

If you'd like, I can also create the `.gitignore` and remove build artifacts from the repository in a follow-up change.
