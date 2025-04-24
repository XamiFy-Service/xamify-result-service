CREATE DATABASE IF NOT EXISTS result_db;
USE result_db;

-- Exam Submissions table
CREATE TABLE exam_submissions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    exam_id INT NOT NULL,
    submitted_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    score INT,
    total_questions INT,
    correct_answers INT
);

-- Answers Table
CREATE TABLE answers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    submission_id INT NOT NULL,
    question_id INT NOT NULL,
    selected_option CHAR(1),
    is_correct BOOLEAN
);
