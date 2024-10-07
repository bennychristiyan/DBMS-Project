USE student_results;

CREATE TABLE result (
    register_no INT PRIMARY KEY,
    name VARCHAR(100),
    sub1 INT,
    sub2 INT,
    sub3 INT,
    sub4 INT,
    sub5 INT,
    total INT AS (sub1 + sub2 + sub3 + sub4 + sub5) STORED,
    status VARCHAR(10) AS (
        CASE 
            WHEN sub1 >= 50 AND sub2 >= 50 AND sub3 >= 50 AND sub4 >= 50 AND sub5 >= 50 
            THEN 'Pass' 
            ELSE 'Fail' 
        END
    ) STORED
);

INSERT INTO result (register_no, name, sub1, sub2, sub3, sub4, sub5)
VALUES 
(1, 'Alice Johnson', 100, 100, 100, 100, 49),
(2, 'Bob Smith', 50, 52, 55, 60, 75),
(3, 'Charlie Davis', 80, 85, 88, 78, 90),
(4, 'David Wilson', 65, 70, 75, 80, 82),
(5, 'Eve Brown', 90, 92, 95, 85, 88),
(6, 'Frank Miller', 70, 75, 78, 65, 80),
(7, 'Grace Taylor', 60, 62, 68, 70, 72),
(8, 'Henry Anderson', 85, 88, 90, 92, 94),
(9, 'Ivy Thompson', 65, 70, 75, 80, 85),
(10, 'Jack White', 90, 42, 95, 90, 93),
(11, 'Kathy Harris', 60, 65, 70, 72, 80),
(12, 'Leo Martinez', 75, 78, 85, 88, 90),
(13, 'Megan Clark', 50, 55, 60, 62, 70),
(14, 'Nina Lewis', 82, 85, 88, 80, 90),
(15, 'Oscar Robinson', 70, 75, 80, 78, 85),
(16, 'Paul Walker', 58, 60, 65, 72, 75),
(17, 'Quinn Hall', 90, 92, 95, 88, 85),
(18, 'Rose Young', 68, 72, 75, 78, 80),
(19, 'Sam King', 85, 87, 90, 92, 94),
(20, 'Tina Scott', 77, 80, 82, 85, 90),
(21, 'Uma Green', 65, 70, 75, 68, 82),
(22, 'Victor Adams', 80, 82, 85, 90, 95),
(23, 'Wendy Baker', 55, 60, 65, 70, 75),
(24, 'Xander Carter', 75, 78, 82, 85, 90),
(25, 'Yara Evans', 88, 90, 92, 94, 96),
(26, 'Zack Turner', 68, 72, 75, 78, 80),
(27, 'Anna Mitchell', 60, 65, 70, 72, 75),
(28, 'Brian Perez', 75, 80, 85, 90, 92),
(29, 'Cara Roberts', 85, 88, 30, 92, 94),
(30, 'Dylan Foster', 65, 70, 35, 78, 80),
(31, 'Ellie Gray', 70, 75, 80, 82, 88),
(32, 'Fred Morris', 60, 62, 68, 70, 75),
(33, 'Gina Hughes', 80, 85, 88, 90, 92),
(34, 'Holly Edwards', 85, 88, 90, 92, 94),
(35, 'Ian Butler', 55, 60, 65, 70, 75),
(36, 'Jill Bell', 78, 80, 85, 88, 90),
(37, 'Kyle Reed', 88, 90, 92, 94, 96),
(38, 'Lara Long', 60, 62, 65, 70, 75),
(39, 'Mike Russell', 85, 88, 90, 92, 94),
(40, 'Nina Grant', 75, 78, 82, 85, 90),
(41, 'Owen Hayes', 50, 52, 55, 60, 65),
(42, 'Penny Cooper', 55, 60, 65, 70, 75),
(43, 'Raymond Cox', 28, 90, 62, 94, 96),
(44, 'Sara Ward', 75, 78, 82, 85, 90),
(45, 'Tom Morgan', 80, 82, 85, 88, 10),
(46, 'Usha Patel', 45, 60, 55, 62, 70),
(47, 'Vikram Singh', 65, 70, 42, 55, 80),
(48, 'Will Graham', 55, 35, 60, 62, 70),
(49, 'Xena Paul', 40, 58, 65, 70, 75), 
(50, 'Yusuf Khan', 55, 62, 60, 40, 65); 