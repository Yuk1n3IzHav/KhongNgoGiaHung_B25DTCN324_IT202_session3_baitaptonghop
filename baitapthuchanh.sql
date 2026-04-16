CREATE DATABASE session_3_baitapthuchanh;
USE session_3_baitapthuchanh;

CREATE TABLE Task (
    task_id INT PRIMARY KEY,               
    task_name NVARCHAR(50) NOT NULL,       
    details TEXT,                          
    status BIT                        
);

INSERT INTO Task (task_id, task_name, details, status)
VALUES (9, 'làm bài tập elearning', 'Làm bài tập session02 - Môn Cơ sở dữ liệu', 1);

INSERT INTO Task (task_id, task_name, details, status)
VALUES (10, 'Học SQL cơ bản', 'Xem video hướng dẫn về lệnh INSERT và UPDATE', 0);

UPDATE Task
SET status = 1 WHERE task_id = 10;

DELETE FROM Task WHERE task_id = 9;

SELECT * FROM Task;

SELECT task_name, status FROM Task;