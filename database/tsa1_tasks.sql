-- IT0049 TSA1 Tasks for Today Management System
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;

CREATE TABLE tasks (id INT AUTO_INCREMENT PRIMARY KEY, title VARCHAR(150) NOT NULL, status VARCHAR(20) NOT NULL DEFAULT 'pending', task_date DATE NOT NULL, created_at DATETIME NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY, username VARCHAR(50) NOT NULL UNIQUE, full_name VARCHAR(100) NOT NULL, email VARCHAR(100) NOT NULL, created_at DATETIME NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tasks (title, status, task_date, created_at) VALUES
('Review the morning support queue', 'done', '2026-10-09', '2026-10-08 08:00:00'),
('Prepare the team stand-up notes', 'in_progress', '2026-10-09', '2026-10-08 08:15:00'),
('Send the daily progress update', 'pending', '2026-10-09', '2026-10-08 08:30:00'),
('Archive last week’s completed requests', 'pending', '2026-10-08', '2026-10-07 09:00:00'),
('Check the shared equipment log', 'done', '2026-10-08', '2026-10-07 09:30:00'),
('Plan next week’s maintenance window', 'pending', '2026-10-10', '2026-10-08 10:00:00'),
('Confirm the Monday briefing room', 'pending', '2026-10-10', '2026-10-08 10:15:00'),
('Update the internal contact sheet', 'done', '2026-10-07', '2026-10-06 14:00:00');

INSERT INTO users (username, full_name, email, created_at) VALUES ('marco.deleon', 'Marco Arsenio B. De Leon', 'marco.deleon@example.com', '2026-10-01 08:00:00');
