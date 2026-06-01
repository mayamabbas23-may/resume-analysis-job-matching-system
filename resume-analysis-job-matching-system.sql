-- =========================

CREATE DATABASE ResumeAnalyzer;
USE ResumeAnalyzer;

-- =========================
-- TABLES
-- =========================
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    education VARCHAR(50),
    experience_years INT
);

CREATE TABLE Skills (
    skill_id INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(100)
);

CREATE TABLE UserSkills (
    user_id INT,
    skill_id INT,
    proficiency_level VARCHAR(50)
);

CREATE TABLE Companies (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(100)
);

CREATE TABLE Jobs (
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    company_id INT,
    job_title VARCHAR(100)
);

CREATE TABLE JobSkills (
    job_id INT,
    skill_id INT
);

-- =========================
-- SKILLS (20)
-- =========================
INSERT INTO Skills (skill_name) VALUES
('SQL'),('Python'),('Java'),('C++'),('JavaScript'),
('HTML'),('CSS'),('Machine Learning'),('AI'),('Data Science'),
('React'),('Node.js'),('Django'),('Flask'),('Git'),
('Docker'),('AWS'),('Linux'),('Cybersecurity'),('Networking');

-- =========================
-- 100 USERS
-- =========================
INSERT INTO Users (name,email,education,experience_years) VALUES
('Ali Khan','u1@gmail.com','BS CS',1),('Ahmed Raza','u2@gmail.com','BS IT',2),
('Muhammad Usman','u3@gmail.com','BS SE',0),('Hassan Ali','u4@gmail.com','BBA',3),
('Zain Ahmed','u5@gmail.com','BS CS',1),('Bilal Khan','u6@gmail.com','BS IT',2),
('Hamza Tariq','u7@gmail.com','BS SE',0),('Talha Ahmed','u8@gmail.com','BBA',3),
('Saad Khan','u9@gmail.com','BS CS',1),('Umer Farooq','u10@gmail.com','BS IT',2),

('Fatima Zahra','u11@gmail.com','BS SE',0),('Ayesha Noor','u12@gmail.com','BBA',3),
('Hira Khan','u13@gmail.com','BS CS',1),('Maryam Ali','u14@gmail.com','BS IT',2),
('Iqra Noor','u15@gmail.com','BS SE',0),('Dua Fatima','u16@gmail.com','BBA',3),
('Laiba Khan','u17@gmail.com','BS CS',1),('Sana Ali','u18@gmail.com','BS IT',2),
('Kiran Noor','u19@gmail.com','BS SE',0),('Komal Khan','u20@gmail.com','BBA',3),

('Fahad Ahmed','u21@gmail.com','BS CS',1),('Shahzaib Ali','u22@gmail.com','BS IT',2),
('Adnan Raza','u23@gmail.com','BS SE',0),('Imran Khan','u24@gmail.com','BBA',3),
('Waqas Ahmed','u25@gmail.com','BS CS',1),('Junaid Khan','u26@gmail.com','BS IT',2),
('Danish Ali','u27@gmail.com','BS SE',0),('Owais Raza','u28@gmail.com','BBA',3),
('Asad Khan','u29@gmail.com','BS CS',1),('Zeeshan Ali','u30@gmail.com','BS IT',2),

('Maham Noor','u31@gmail.com','BS SE',0),('Anaya Khan','u32@gmail.com','BBA',3),
('Mehak Ali','u33@gmail.com','BS CS',1),('Eman Noor','u34@gmail.com','BS IT',2),
('Areeba Khan','u35@gmail.com','BS SE',0),('Sidra Ali','u36@gmail.com','BBA',3),
('Hafsa Noor','u37@gmail.com','BS CS',1),('Aleena Khan','u38@gmail.com','BS IT',2),
('Rabia Ali','u39@gmail.com','BS SE',0),('Bushra Noor','u40@gmail.com','BBA',3),

('Taimoor Ahmed','u41@gmail.com','BS CS',1),('Shayan Khan','u42@gmail.com','BS IT',2),
('Arham Ali','u43@gmail.com','BS SE',0),('Farhan Ahmed','u44@gmail.com','BBA',3),
('Noman Khan','u45@gmail.com','BS CS',1),('Usama Ali','u46@gmail.com','BS IT',2),
('Ibrahim Khan','u47@gmail.com','BS SE',0),('Yasir Ahmed','u48@gmail.com','BBA',3),
('Kashif Ali','u49@gmail.com','BS CS',1),('Sajid Khan','u50@gmail.com','BS IT',2),

('User51','u51@gmail.com','BS CS',1),('User52','u52@gmail.com','BS IT',2),
('User53','u53@gmail.com','BS SE',0),('User54','u54@gmail.com','BBA',3),
('User55','u55@gmail.com','BS CS',1),('User56','u56@gmail.com','BS IT',2),
('User57','u57@gmail.com','BS SE',0),('User58','u58@gmail.com','BBA',3),
('User59','u59@gmail.com','BS CS',1),('User60','u60@gmail.com','BS IT',2),

('User61','u61@gmail.com','BS SE',0),('User62','u62@gmail.com','BBA',3),
('User63','u63@gmail.com','BS CS',1),('User64','u64@gmail.com','BS IT',2),
('User65','u65@gmail.com','BS SE',0),('User66','u66@gmail.com','BBA',3),
('User67','u67@gmail.com','BS CS',1),('User68','u68@gmail.com','BS IT',2),
('User69','u69@gmail.com','BS SE',0),('User70','u70@gmail.com','BBA',3),

('User71','u71@gmail.com','BS CS',1),('User72','u72@gmail.com','BS IT',2),
('User73','u73@gmail.com','BS SE',0),('User74','u74@gmail.com','BBA',3),
('User75','u75@gmail.com','BS CS',1),('User76','u76@gmail.com','BS IT',2),
('User77','u77@gmail.com','BS SE',0),('User78','u78@gmail.com','BBA',3),
('User79','u79@gmail.com','BS CS',1),('User80','u80@gmail.com','BS IT',2),

('User81','u81@gmail.com','BS SE',0),('User82','u82@gmail.com','BBA',3),
('User83','u83@gmail.com','BS CS',1),('User84','u84@gmail.com','BS IT',2),
('User85','u85@gmail.com','BS SE',0),('User86','u86@gmail.com','BBA',3),
('User87','u87@gmail.com','BS CS',1),('User88','u88@gmail.com','BS IT',2),
('User89','u89@gmail.com','BS SE',0),('User90','u90@gmail.com','BBA',3),

('User91','u91@gmail.com','BS CS',1),('User92','u92@gmail.com','BS IT',2),
('User93','u93@gmail.com','BS SE',0),('User94','u94@gmail.com','BBA',3),
('User95','u95@gmail.com','BS CS',1),('User96','u96@gmail.com','BS IT',2),
('User97','u97@gmail.com','BS SE',0),('User98','u98@gmail.com','BBA',3),
('User99','u99@gmail.com','BS CS',1),('User100','u100@gmail.com','BS IT',2);

-- =========================
-- USER SKILLS (100 entries)
-- =========================


INSERT INTO UserSkills (user_id, skill_id, proficiency_level) VALUES
(1,1,'Advanced'),(1,2,'Intermediate'),(1,10,'Beginner'),
(2,1,'Intermediate'),(2,2,'Intermediate'),
(3,1,'Advanced'),
(4,5,'Advanced'),(4,6,'Intermediate'),(4,11,'Beginner'),
(5,5,'Intermediate'),(5,6,'Intermediate'),
(6,5,'Advanced'),
(7,2,'Advanced'),(7,8,'Intermediate'),(7,9,'Beginner'),
(8,2,'Intermediate'),(8,8,'Intermediate'),
(9,2,'Advanced'),

(10,1,'Intermediate'),(10,2,'Beginner'),
(11,5,'Advanced'),(11,6,'Intermediate'),
(12,2,'Advanced'),(12,8,'Intermediate'),

(13,1,'Advanced'),(13,2,'Advanced'),(13,10,'Intermediate'),
(14,5,'Intermediate'),(14,6,'Beginner'),(14,11,'Advanced'),
(15,2,'Advanced'),(15,8,'Advanced'),(15,9,'Intermediate');
-- =========================
-- COMPANY + JOBS
-- =========================
INSERT INTO Companies (company_name) VALUES ('TechCorp');

INSERT INTO Jobs (company_id,job_title) VALUES
(1,'Data Analyst'),
(1,'Web Developer'),
(1,'AI Engineer');

INSERT INTO JobSkills (job_id,skill_id) VALUES
(1,1),(1,2),(1,10),
(2,5),(2,6),(2,11),
(3,2),(3,8),(3,9);

-- =========================
-- MATCH RESULT
-- =========================
SELECT 
    u.name,
    j.job_title,
    ROUND(
        COUNT(DISTINCT us.skill_id) * 100.0 /
        (SELECT COUNT(*) FROM JobSkills js2 WHERE js2.job_id = j.job_id),
    2) AS match_percentage
FROM Users u
JOIN UserSkills us ON u.user_id = us.user_id
JOIN JobSkills js ON us.skill_id = js.skill_id
JOIN Jobs j ON js.job_id = j.job_id
GROUP BY u.user_id, j.job_id
ORDER BY match_percentage DESC;

-- =========================
-- MISSING SKILLS PER USER
-- =========================
SELECT 
    u.name,
    j.job_title,
    s.skill_name AS missing_skill
FROM Users u
JOIN Jobs j
JOIN JobSkills js ON j.job_id = js.job_id
JOIN Skills s ON js.skill_id = s.skill_id
LEFT JOIN UserSkills us 
    ON u.user_id = us.user_id 
    AND us.skill_id = s.skill_id
WHERE us.skill_id IS NULL
ORDER BY u.name, j.job_title;

-- =========================
-- TOP 3 CANDIDATES PER JOB
-- =========================
SELECT *
FROM (
    SELECT 
        u.name,
        j.job_title,

        ROUND(
            COUNT(DISTINCT us.skill_id) * 100.0 /
            (SELECT COUNT(*) 
             FROM JobSkills js2 
             WHERE js2.job_id = j.job_id),
        2) AS match_percentage,

        ROW_NUMBER() OVER (
            PARTITION BY j.job_id 
            ORDER BY COUNT(DISTINCT us.skill_id) DESC
        ) AS rank_position

    FROM Users u
    JOIN UserSkills us ON u.user_id = us.user_id
    JOIN JobSkills js ON us.skill_id = js.skill_id
    JOIN Jobs j ON js.job_id = j.job_id

    GROUP BY u.user_id, j.job_id
) ranked
WHERE rank_position <= 3;