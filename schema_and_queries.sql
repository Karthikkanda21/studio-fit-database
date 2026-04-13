-- =============================================================
-- FINAL ASSESSMENT - STUDIO FIT
-- =============================================================

-- 1. CLEAN START
DROP DATABASE IF EXISTS studio_fit;
CREATE DATABASE studio_fit;
USE studio_fit;

-- 2. CREATE TABLES
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    join_date DATE NOT NULL,
    membership_type ENUM('Monthly','Annual') NOT NULL
);

CREATE TABLE trainers (
    trainer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(50) NOT NULL,
    employment_type ENUM('Full-Time','Freelance') NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE class_types (
    class_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    difficulty VARCHAR(20) NOT NULL,
    required_specialty VARCHAR(50) NOT NULL
);

CREATE TABLE class_schedule (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    class_type_id INT NOT NULL,
    trainer_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    status ENUM('Scheduled','Cancelled') NOT NULL DEFAULT 'Scheduled',
    FOREIGN KEY (class_type_id) REFERENCES class_types(class_type_id),
    FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id)
);

CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    schedule_id INT NOT NULL,
    member_id INT NOT NULL,
    booking_date DATETIME NOT NULL,
    booking_status ENUM('Confirmed','Cancelled','Attended','No-Show') NOT NULL,
    payment_status ENUM('Paid','Pending','Refunded') NOT NULL,
    FOREIGN KEY (schedule_id) REFERENCES class_schedule(schedule_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    amount DECIMAL(6,2) NOT NULL,
    payment_date DATETIME NOT NULL,
    method ENUM('Card','Cash','Online','Transfer') NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

-- 3. INSERT MANUAL DATA

-- Trainers
INSERT INTO trainers (first_name, last_name, specialty, employment_type, email) VALUES
('Olivia', 'Carter', 'Yoga', 'Full-Time', 'olivia.carter@studiofit.co.uk'),
('James', 'Miller', 'Yoga', 'Full-Time', 'james.miller@studiofit.co.uk'),
('Sophie', 'Turner', 'Yoga', 'Full-Time', 'sophie.turner@studiofit.co.uk'),
('Daniel', 'Wright', 'Yoga', 'Full-Time', 'daniel.wright@studiofit.co.uk'),
('Emily', 'Harris', 'Yoga', 'Full-Time', 'emily.harris@studiofit.co.uk'),
('Thomas', 'Clark', 'Yoga', 'Freelance', 'thomas.clark@studiofit.co.uk'),
('Grace', 'Lewis', 'Yoga', 'Freelance', 'grace.lewis@studiofit.co.uk'),
('Benjamin', 'Walker', 'Yoga', 'Freelance', 'benjamin.walker@studiofit.co.uk'),
('Lucy', 'Hall', 'Yoga', 'Freelance', 'lucy.hall@studiofit.co.uk'),
('William', 'King', 'Yoga', 'Freelance', 'william.king@studiofit.co.uk'),
('Ethan', 'Scott', 'HIIT', 'Full-Time', 'ethan.scott@studiofit.co.uk'),
('Mia', 'Green', 'HIIT', 'Full-Time', 'mia.green@studiofit.co.uk'),
('Noah', 'Baker', 'HIIT', 'Full-Time', 'noah.baker@studiofit.co.uk'),
('Ava', 'Hill', 'HIIT', 'Full-Time', 'ava.hill@studiofit.co.uk'),
('Leo', 'Adams', 'HIIT', 'Full-Time', 'leo.adams@studiofit.co.uk'),
('Holly', 'Ward', 'HIIT', 'Freelance', 'holly.ward@studiofit.co.uk'),
('Archie', 'Cooper', 'HIIT', 'Freelance', 'archie.cooper@studiofit.co.uk'),
('Ruby', 'Morris', 'HIIT', 'Freelance', 'ruby.morris@studiofit.co.uk'),
('Isaac', 'Reed', 'HIIT', 'Freelance', 'isaac.reed@studiofit.co.uk'),
('Poppy', 'Hughes', 'HIIT', 'Freelance', 'poppy.hughes@studiofit.co.uk'),
('Hannah', 'Foster', 'Pilates', 'Full-Time', 'hannah.foster@studiofit.co.uk'),
('Liam', 'Rogers', 'Pilates', 'Full-Time', 'liam.rogers@studiofit.co.uk'),
('Ella', 'Simmons', 'Pilates', 'Full-Time', 'ella.simmons@studiofit.co.uk'),
('Max', 'Price', 'Pilates', 'Freelance', 'max.price@studiofit.co.uk'),
('Daisy', 'Butler', 'Pilates', 'Freelance', 'daisy.butler@studiofit.co.uk'),
('Harvey', 'Barnes', 'Pilates', 'Freelance', 'harvey.barnes@studiofit.co.uk'),
('Megan', 'Brooks', 'Pilates', 'Freelance', 'megan.brooks@studiofit.co.uk'),
('Oliver', 'Powell', 'Pilates', 'Freelance', 'oliver.powell@studiofit.co.uk'),
('Charlotte', 'Warren', 'Cycling', 'Full-Time', 'charlotte.warren@studiofit.co.uk'),
('Jacob', 'Rose', 'Cycling', 'Full-Time', 'jacob.rose@studiofit.co.uk'),
('Millie', 'Coleman', 'Cycling', 'Freelance', 'millie.coleman@studiofit.co.uk'),
('Ryan', 'Hart', 'Cycling', 'Freelance', 'ryan.hart@studiofit.co.uk'),
('Evelyn', 'Stone', 'Cycling', 'Freelance', 'evelyn.stone@studiofit.co.uk'),
('Luke', 'Barrett', 'Cycling', 'Freelance', 'luke.barrett@studiofit.co.uk'),
('Aaron', 'Chapman', 'Strength', 'Full-Time', 'aaron.chapman@studiofit.co.uk'),
('Freya', 'Hudson', 'Strength', 'Full-Time', 'freya.hudson@studiofit.co.uk'),
('Dylan', 'Spencer', 'Strength', 'Full-Time', 'dylan.spencer@studiofit.co.uk'),
('Phoebe', 'Kirk', 'Strength', 'Freelance', 'phoebe.kirk@studiofit.co.uk'),
('Jayden', 'Hunt', 'Strength', 'Freelance', 'jayden.hunt@studiofit.co.uk'),
('Matilda', 'Doyle', 'Strength', 'Freelance', 'matilda.doyle@studiofit.co.uk'),
('Sofia', 'Parsons', 'Dance', 'Full-Time', 'sofia.parsons@studiofit.co.uk'),
('Leo', 'Gallagher', 'Dance', 'Full-Time', 'leo.gallagher@studiofit.co.uk'),
('Erin', 'Kemp', 'Dance', 'Freelance', 'erin.kemp@studiofit.co.uk'),
('Harry', 'Bowen', 'Dance', 'Freelance', 'harry.bowen@studiofit.co.uk'),
('Imogen', 'Sutton', 'Mobility', 'Full-Time', 'imogen.sutton@studiofit.co.uk'),
('Reece', 'Hammond', 'Mobility', 'Freelance', 'reece.hammond@studiofit.co.uk'),
('Zara', 'Bishop', 'Mobility', 'Freelance', 'zara.bishop@studiofit.co.uk'),
('Callum', 'Yates', 'Mobility', 'Freelance', 'callum.yates@studiofit.co.uk'),
('Talia', 'Norris', 'Aerial', 'Freelance', 'talia.norris@studiofit.co.uk'),
('Finn', 'Porter', 'Aerial', 'Freelance', 'finn.porter@studiofit.co.uk');

SELECT * FROM studio_fit.trainers;

-- Class Types
INSERT INTO class_types (name, category, difficulty, required_specialty) VALUES
('Morning Vinyasa', 'Yoga', 'Beginner', 'Yoga'),
('Power Vinyasa', 'Yoga', 'Advanced', 'Yoga'),
('Yin Yoga', 'Yoga', 'Beginner', 'Yoga'),
('Lunchtime HIIT', 'HIIT', 'Beginner', 'HIIT'),
('Evening HIIT Blast', 'HIIT', 'Advanced', 'HIIT'),
('Saturday Bootcamp HIIT', 'HIIT', 'Advanced', 'HIIT'),
('Core Pilates', 'Pilates', 'Beginner', 'Pilates'),
('Reformer Pilates', 'Pilates', 'Advanced', 'Pilates'),
('Mat Pilates', 'Pilates', 'Beginner', 'Pilates'),
('Spin Express', 'Cycling', 'Beginner', 'Cycling'),
('Endurance Spin', 'Cycling', 'Advanced', 'Cycling'),
('Power Cycling', 'Cycling', 'Advanced', 'Cycling'),
('Full-Body Strength', 'Strength', 'Beginner', 'Strength'),
('Barbell Basics', 'Strength', 'Beginner', 'Strength'),
('Kettlebell Strength', 'Strength', 'Advanced', 'Strength'),
('Zumba Fitness', 'Dance', 'Beginner', 'Dance'),
('Latin Dance Cardio', 'Dance', 'Advanced', 'Dance'),
('Hip-Hop Dance', 'Dance', 'Advanced', 'Dance'),
('Morning Mobility', 'Mobility', 'Beginner', 'Mobility'),
('Stretch and Release', 'Mobility', 'Beginner', 'Mobility'),
('Functional Mobility', 'Mobility', 'Advanced', 'Mobility'),
('Aerial Silks Beginner', 'Aerial', 'Beginner', 'Aerial'),
('Aerial Hoop', 'Aerial', 'Advanced', 'Aerial'),
('Aerial Conditioning', 'Aerial', 'Advanced', 'Aerial'),
('Sunrise Hatha Yoga', 'Yoga', 'Beginner', 'Yoga'),
('Gentle Evening Yoga', 'Yoga', 'Beginner', 'Yoga'),
('Hot Yoga Flow', 'Yoga', 'Advanced', 'Yoga'),
('Dynamic Yoga Sculpt', 'Yoga', 'Advanced', 'Yoga'),
('HIIT Circuit 30', 'HIIT', 'Beginner', 'HIIT'),
('HIIT Strength Mix', 'HIIT', 'Advanced', 'HIIT'),
('Cardio HIIT Burn', 'HIIT', 'Beginner', 'HIIT'),
('Tabata HIIT', 'HIIT', 'Advanced', 'HIIT'),
('Pilates Stretch', 'Pilates', 'Beginner', 'Pilates'),
('Pilates Power Core', 'Pilates', 'Advanced', 'Pilates'),
('Lunchtime Pilates', 'Pilates', 'Beginner', 'Pilates'),
('Pilates Sculpt', 'Pilates', 'Advanced', 'Pilates'),
('Spin and Climb', 'Cycling', 'Advanced', 'Cycling'),
('Low-Impact Cycling', 'Cycling', 'Beginner', 'Cycling'),
('Rhythm Ride', 'Cycling', 'Beginner', 'Cycling'),
('City Night Ride', 'Cycling', 'Advanced', 'Cycling'),
('Strength Fundamentals', 'Strength', 'Beginner', 'Strength'),
('Upper Body Strength', 'Strength', 'Advanced', 'Strength'),
('Lower Body Strength', 'Strength', 'Advanced', 'Strength'),
('Strength and Core', 'Strength', 'Advanced', 'Strength'),
('Dance Cardio Party', 'Dance', 'Beginner', 'Dance'),
('Bollywood Dance', 'Dance', 'Advanced', 'Dance'),
('Street Dance Basics', 'Dance', 'Beginner', 'Dance'),
('Contemporary Dance', 'Dance', 'Advanced', 'Dance'),
('Desk Detox Mobility', 'Mobility', 'Beginner', 'Mobility'),
('Evening Stretch', 'Mobility', 'Beginner', 'Mobility'),
('Athletic Mobility', 'Mobility', 'Advanced', 'Mobility'),
('Weekend Mobility Flow', 'Mobility', 'Advanced', 'Mobility'),
('Aerial Strength Flow', 'Aerial', 'Advanced', 'Aerial'),
('Aerial Skills Lab', 'Aerial', 'Advanced', 'Aerial'),
('Aerial Basics Workshop', 'Aerial', 'Beginner', 'Aerial');

SELECT * FROM studio_fit.class_types;

-- Members
INSERT INTO members (first_name, last_name, email, phone, join_date, membership_type) VALUES
('Amelia','Smith','amelia.smith@studiofit.co.uk','+44770090001','2025-01-01','Monthly'),
('George','Jones','george.jones@studiofit.co.uk','+44770090002','2025-01-02','Annual'),
('Isla','Taylor','isla.taylor@studiofit.co.uk','+44770090003','2025-01-03','Monthly'),
('Harry','Brown','harry.brown@studiofit.co.uk','+44770090004','2025-01-04','Monthly'),
('Emily','Wilson','emily.wilson@studiofit.co.uk','+44770090005','2025-01-05','Annual'),
('Jack','Davies','jack.davies@studiofit.co.uk','+44770090006','2025-01-06','Monthly'),
('Sophie','Evans','sophie.evans@studiofit.co.uk','+44770090007','2025-01-07','Monthly'),
('Jacob','Thomas','jacob.thomas@studiofit.co.uk','+44770090008','2025-01-08','Annual'),
('Chloe','Johnson','chloe.johnson@studiofit.co.uk','+44770090009','2025-01-09','Monthly'),
('Liam','Roberts','liam.roberts@studiofit.co.uk','+44770090010','2025-01-10','Annual'),
('Emma','Miller','emma.miller@studiofit.co.uk','+44770090011','2025-01-11','Monthly'),
('Noah','Anderson','noah.anderson@studiofit.co.uk','+44770090012','2025-01-12','Monthly'),
('Ava','Clark','ava.clark@studiofit.co.uk','+44770090013','2025-01-13','Annual'),
('William','Thompson','william.thompson@studiofit.co.uk','+44770090014','2025-01-14','Monthly'),
('Mia','Moore','mia.moore@studiofit.co.uk','+44770090015','2025-01-15','Monthly'),
('James','Martin','james.martin@studiofit.co.uk','+44770090016','2025-01-16','Annual'),
('Charlotte','Lee','charlotte.lee@studiofit.co.uk','+44770090017','2025-01-17','Monthly'),
('Benjamin','Perez','benjamin.perez@studiofit.co.uk','+44770090018','2025-01-18','Monthly'),
('Harper','White','harper.white@studiofit.co.uk','+44770090019','2025-01-19','Annual'),
('Lucas','Harris','lucas.harris@studiofit.co.uk','+44770090020','2025-01-20','Monthly'),
('Evelyn','Sanchez','evelyn.sanchez@studiofit.co.uk','+44770090021','2025-01-21','Monthly'),
('Henry','Hall','henry.hall@studiofit.co.uk','+44770090022','2025-01-22','Annual'),
('Abigail','Young','abigail.young@studiofit.co.uk','+44770090023','2025-01-23','Monthly'),
('Alexander','King','alexander.king@studiofit.co.uk','+44770090024','2025-01-24','Monthly'),
('Ella','Wright','ella.wright@studiofit.co.uk','+44770090025','2025-01-25','Annual'),
('Michael','Scott','michael.scott@studiofit.co.uk','+44770090026','2025-01-26','Monthly'),
('Elizabeth','Green','elizabeth.green@studiofit.co.uk','+44770090027','2025-01-27','Monthly'),
('Daniel','Baker','daniel.baker@studiofit.co.uk','+44770090028','2025-01-28','Annual'),
('Sofia','Hill','sofia.hill@studiofit.co.uk','+44770090029','2025-01-29','Monthly'),
('Matthew','Adams','matthew.adams@studiofit.co.uk','+44770090030','2025-01-30','Annual'),
('Madison','Ward','madison.ward@studiofit.co.uk','+44770090031','2025-01-31','Monthly'),
('Samuel','Cooper','samuel.cooper@studiofit.co.uk','+44770090032','2025-02-01','Monthly'),
('Scarlett','Morris','scarlett.morris@studiofit.co.uk','+44770090033','2025-02-02','Annual'),
('David','Reed','david.reed@studiofit.co.uk','+44770090034','2025-02-03','Monthly'),
('Victoria','Hughes','victoria.hughes@studiofit.co.uk','+44770090035','2025-02-04','Monthly'),
('Joseph','Foster','joseph.foster@studiofit.co.uk','+44770090036','2025-02-05','Annual'),
('Aria','Rogers','aria.rogers@studiofit.co.uk','+44770090037','2025-02-06','Monthly'),
('Carter','Simmons','carter.simmons@studiofit.co.uk','+44770090038','2025-02-07','Monthly'),
('Grace','Price','grace.price@studiofit.co.uk','+44770090039','2025-02-08','Annual'),
('Owen','Butler','owen.butler@studiofit.co.uk','+44770090040','2025-02-09','Monthly'),
('Leo','Gibson','leo.gibson@studiofit.co.uk','+44770090041','2025-02-10','Monthly'),
('Hannah','Matthews','hannah.matthews@studiofit.co.uk','+44770090042','2025-02-11','Annual'),
('Ryan','Webb','ryan.webb@studiofit.co.uk','+44770090043','2025-02-12','Monthly'),
('Zara','Harvey','zara.harvey@studiofit.co.uk','+44770090044','2025-02-13','Monthly'),
('Ellie','Fox','ellie.fox@studiofit.co.uk','+44770090045','2025-02-14','Annual'),
('Harvey','Murray','harvey.murray@studiofit.co.uk','+44770090046','2025-02-15','Monthly'),
('Poppy','Knight','poppy.knight@studiofit.co.uk','+44770090047','2025-02-16','Monthly'),
('Aaron','Graham','aaron.graham@studiofit.co.uk','+44770090048','2025-02-17','Annual'),
('Megan','Wallace','megan.wallace@studiofit.co.uk','+44770090049','2025-02-18','Monthly'),
('Jasmine','Cole','jasmine.cole@studiofit.co.uk','+44770090050','2025-02-19','Annual'),
('Theo','Carpenter','theo.carpenter@studiofit.co.uk','+44770090051','2025-02-20','Monthly'),
('Holly','George','holly.george@studiofit.co.uk','+44770090052','2025-02-21','Monthly'),
('Ethan','Jennings','ethan.jennings@studiofit.co.uk','+44770090053','2025-02-22','Annual'),
('Layla','Stephens','layla.stephens@studiofit.co.uk','+44770090054','2025-02-23','Monthly'),
('Tom','Barlow','tom.barlow@studiofit.co.uk','+44770090055','2025-02-24','Monthly'),
('Aisha','Fraser','aisha.fraser@studiofit.co.uk','+44770090056','2025-02-25','Annual'),
('Connor','Read','connor.read@studiofit.co.uk','+44770090057','2025-02-26','Monthly'),
('Sienna','Hayes','sienna.hayes@studiofit.co.uk','+44770090058','2025-02-27','Monthly'),
('Jamie','Carr','jamie.carr@studiofit.co.uk','+44770090059','2025-02-28','Annual'),
('Mollie','Carter','mollie.carter@studiofit.co.uk','+44770090060','2025-03-01','Monthly'),
('Oscar','Fletcher','oscar.fletcher@studiofit.co.uk','+44770090061','2025-03-02','Annual'),
('Nancy','Pearson','nancy.pearson@studiofit.co.uk','+44770090062','2025-03-03','Monthly'),
('Blake','Barnett','blake.barnett@studiofit.co.uk','+44770090063','2025-03-04','Monthly'),
('Eliza','Riley','eliza.riley@studiofit.co.uk','+44770090064','2025-03-05','Annual'),
('Harrison','Burns','harrison.burns@studiofit.co.uk','+44770090065','2025-03-06','Monthly'),
('Willow','Nichols','willow.nichols@studiofit.co.uk','+44770090066','2025-03-07','Monthly'),
('Reuben','Bates','reuben.bates@studiofit.co.uk','+44770090067','2025-03-08','Annual'),
('Georgia','Holmes','georgia.holmes@studiofit.co.uk','+44770090068','2025-03-09','Monthly'),
('Caleb','Atkins','caleb.atkins@studiofit.co.uk','+44770090069','2025-03-10','Monthly'),
('Summer','Holt','summer.holt@studiofit.co.uk','+44770090070','2025-03-11','Annual'),
('Elliot','Jarvis','elliot.jarvis@studiofit.co.uk','+44770090071','2025-03-12','Monthly'),
('Maya','Horton','maya.horton@studiofit.co.uk','+44770090072','2025-03-13','Annual'),
('Roman','Flynn','roman.flynn@studiofit.co.uk','+44770090073','2025-03-14','Monthly'),
('Imogen','Cooke','imogen.cooke@studiofit.co.uk','+44770090074','2025-03-15','Monthly'),
('Brody','Parr','brody.parr@studiofit.co.uk','+44770090075','2025-03-16','Annual'),
('Phoebe','Nicholson','phoebe.nicholson@studiofit.co.uk','+44770090076','2025-03-17','Monthly'),
('Archie','Benson','archie.benson@studiofit.co.uk','+44770090077','2025-03-18','Annual'),
('Tilly','Barker','tilly.barker@studiofit.co.uk','+44770090078','2025-03-19','Monthly'),
('Evan','Hammond','evan.hammond@studiofit.co.uk','+44770090079','2025-03-20','Monthly'),
('Lola','Dawson','lola.dawson@studiofit.co.uk','+44770090080','2025-03-21','Annual'),
('Harley','Rowe','harley.rowe@studiofit.co.uk','+44770090081','2025-03-22','Monthly'),
('Ariana','Kerr','ariana.kerr@studiofit.co.uk','+44770090082','2025-03-23','Monthly'),
('Joel','Norton','joel.norton@studiofit.co.uk','+44770090083','2025-03-24','Annual'),
('Faith','Bond','faith.bond@studiofit.co.uk','+44770090084','2025-03-25','Monthly'),
('Declan','Reeve','declan.reeve@studiofit.co.uk','+44770090085','2025-03-26','Annual'),
('Caitlin','Hope','caitlin.hope@studiofit.co.uk','+44770090086','2025-03-27','Monthly'),
('Spencer','Shaw','spencer.shaw@studiofit.co.uk','+44770090087','2025-03-28','Monthly'),
('Sasha','Briggs','sasha.briggs@studiofit.co.uk','+44770090088','2025-03-29','Annual'),
('Finley','Sanders','finley.sanders@studiofit.co.uk','+44770090089','2025-03-30','Monthly'),
('Nina','Goodwin','nina.goodwin@studiofit.co.uk','+44770090090','2025-03-31','Annual'),
('Alfie','Dixon','alfie.dixon@studiofit.co.uk','+44770090091','2025-04-01','Monthly'),
('Elise','Gallagher','elise.gallagher@studiofit.co.uk','+44770090092','2025-04-02','Monthly'),
('Kieran','Henderson','kieran.henderson@studiofit.co.uk','+44770090093','2025-04-03','Annual'),
('Riley','Walters','riley.walters@studiofit.co.uk','+44770090094','2025-04-04','Monthly'),
('Serena','Porter','serena.porter@studiofit.co.uk','+44770090095','2025-04-05','Monthly'),
('Marcus','Todd','marcus.todd@studiofit.co.uk','+44770090096','2025-04-06','Annual'),
('Elena','Frost','elena.frost@studiofit.co.uk','+44770090097','2025-04-07','Monthly'),
('Grayson','Blair','grayson.blair@studiofit.co.uk','+44770090098','2025-04-08','Monthly'),
('Rosie','Kent','rosie.kent@studiofit.co.uk','+44770090099','2025-04-09','Annual'),
('Callum','Brady','callum.brady@studiofit.co.uk','+44770090100','2025-04-10','Monthly'),
('Paige','McCarthy','paige.mccarthy@studiofit.co.uk','+44770090101','2025-04-11','Monthly'),
('Jonah','Little','jonah.little@studiofit.co.uk','+44770090102','2025-04-12','Annual'),
('April','Milton','april.milton@studiofit.co.uk','+44770090103','2025-04-13','Monthly'),
('Ronan','Foley','ronan.foley@studiofit.co.uk','+44770090104','2025-04-14','Monthly'),
('Tessa','Reynolds','tessa.reynolds@studiofit.co.uk','+44770090105','2025-04-15','Annual'),
('Clay','Gilbert','clay.gilbert@studiofit.co.uk','+44770090106','2025-04-16','Monthly'),
('Kayla','Jennings','kayla.jennings@studiofit.co.uk','+44770090107','2025-04-17','Monthly'),
('Mason','Faulkner','mason.faulkner@studiofit.co.uk','+44770090108','2025-04-18','Annual'),
('Bella','Farmer','bella.farmer@studiofit.co.uk','+44770090109','2025-04-19','Monthly'),
('Tristan','Baldwin','tristan.baldwin@studiofit.co.uk','+44770090110','2025-04-20','Annual');

SELECT * FROM studio_fit.members;

-- 4. PROCEDURES & POPULATION

DELIMITER $$

-- Procedure to Populate Class Schedule
DROP PROCEDURE IF EXISTS populate_class_schedule$$
CREATE PROCEDURE populate_class_schedule()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE ct_id INT;
    DECLARE tr_id INT;
    DECLARE st DATETIME;
    DECLARE et DATETIME;

    -- Loop 75 times to ensure all 55 classes get scheduled
    WHILE i <= 75 DO
        SET ct_id = MOD(i-1,55) + 1;

        -- MATCHING LOGIC FOR ALL 55 CLASSES
        SET tr_id = CASE
            WHEN (ct_id BETWEEN 1 AND 3) OR (ct_id BETWEEN 25 AND 28) THEN 1 + MOD(i,10)
            WHEN (ct_id BETWEEN 4 AND 6) OR (ct_id BETWEEN 29 AND 32) THEN 11 + MOD(i,10)
            WHEN (ct_id BETWEEN 7 AND 9) OR (ct_id BETWEEN 33 AND 36) THEN 21 + MOD(i,8)
            WHEN (ct_id BETWEEN 10 AND 12) OR (ct_id BETWEEN 37 AND 40) THEN 29 + MOD(i,6)
            WHEN (ct_id BETWEEN 13 AND 15) OR (ct_id BETWEEN 41 AND 44) THEN 35 + MOD(i,6)
            WHEN (ct_id BETWEEN 16 AND 18) OR (ct_id BETWEEN 45 AND 48) THEN 41 + MOD(i,4)
            WHEN (ct_id BETWEEN 19 AND 21) OR (ct_id BETWEEN 49 AND 52) THEN 45 + MOD(i,4)
            ELSE 49 + MOD(i,2)
        END;

        SET st = DATE_ADD(DATE_ADD('2025-12-01 07:00:00', INTERVAL (i DIV 5) DAY), INTERVAL (MOD(i,5)*3) HOUR);
        SET et = DATE_ADD(st, INTERVAL 1 HOUR);

        INSERT INTO class_schedule (class_type_id, trainer_id, start_time, end_time, status)
        VALUES (ct_id, tr_id, st, et, CASE WHEN MOD(i,15) = 0 THEN 'Cancelled' ELSE 'Scheduled' END);

        SET i = i + 1;
    END WHILE;
END$$

SELECT * FROM studio_fit.class_schedule;



-- Procedure to Populate Bookings
DROP PROCEDURE IF EXISTS populate_bookings$$
CREATE PROCEDURE populate_bookings()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE sched_id INT;
    DECLARE mem_id INT;
    DECLARE bk_date DATETIME;
    DECLARE bk_status ENUM('Confirmed','Cancelled','Attended','No-Show');
    DECLARE pay_status ENUM('Paid','Pending','Refunded');

    -- Increased to 150 bookings to cover all 110 members
    WHILE i <= 150 DO
        SET sched_id = MOD(i-1,50) + 1;
        SET mem_id = MOD(i-1,110) + 1; -- Matches your 110 manual members
        SET bk_date = DATE_ADD('2025-11-25 09:00:00', INTERVAL i HOUR);

        IF MOD(i,5) = 0 THEN
            SET bk_status = 'Cancelled';
            SET pay_status = 'Refunded';
        ELSE
            SET bk_status = 'Attended';
            SET pay_status = 'Paid';
        END IF;

        INSERT INTO bookings (schedule_id, member_id, booking_date, booking_status, payment_status)
        VALUES (sched_id, mem_id, bk_date, bk_status, pay_status);

        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;
CALL populate_class_schedule();
CALL populate_bookings();

SELECT * FROM studio_fit.bookings;


-- Payments (Matches bookings)
INSERT INTO payments (booking_id, amount, payment_date, method)
SELECT
    b.booking_id,
    ELT(FLOOR(1 + (RAND() * 3)), 10.00, 15.00, 20.00) AS amount,
    DATE_ADD('2025-11-26 10:00:00', INTERVAL b.booking_id HOUR) AS payment_date,
    ELT(FLOOR(1 + (RAND() * 4)), 'Card', 'Cash', 'Online', 'Transfer') AS method
FROM bookings b
WHERE b.payment_status IN ('Paid','Refunded');

SELECT * FROM studio_fit.payments;

-- 5. ADVANCED QUERIES
SELECT ct.category, COUNT(b.booking_id) AS total_bookings, SUM(p.amount) AS total_revenue
FROM class_types ct
JOIN class_schedule cs ON ct.class_type_id = cs.class_type_id
JOIN bookings b ON cs.schedule_id = b.schedule_id
JOIN payments p ON b.booking_id = p.booking_id
GROUP BY ct.category ORDER BY total_revenue DESC;




SELECT t.first_name, t.last_name, t.specialty, COUNT(b.booking_id) AS total_attendees,
DENSE_RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS performance_rank
FROM trainers t
JOIN class_schedule cs ON t.trainer_id = cs.trainer_id
JOIN bookings b ON cs.schedule_id = b.schedule_id
WHERE b.booking_status = 'Attended'
GROUP BY t.trainer_id, t.first_name, t.last_name, t.specialty;

SELECT 
    m.first_name,
    m.last_name,
    SUM(p.amount) AS total_spend
FROM members m
JOIN bookings b ON m.member_id = b.member_id
JOIN payments p ON b.booking_id = p.booking_id
GROUP BY m.member_id, m.first_name, m.last_name
HAVING total_spend > (
    SELECT AVG(member_total)
    FROM (
        SELECT 
            m2.member_id,
            SUM(p2.amount) AS member_total
        FROM members m2
        JOIN bookings b2 ON m2.member_id = b2.member_id
        JOIN payments p2 ON b2.booking_id = p2.booking_id
        GROUP BY m2.member_id
    ) AS t
)
ORDER BY total_spend DESC;


SELECT ct.difficulty, COUNT(b.booking_id) AS total_bookings,
SUM(CASE WHEN b.booking_status = 'Cancelled' THEN 1 ELSE 0 END) AS total_cancelled,
ROUND((SUM(CASE WHEN b.booking_status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(b.booking_id)) * 100, 2) AS cancellation_rate_percent
FROM class_types ct
JOIN class_schedule cs ON ct.class_type_id = cs.class_type_id
JOIN bookings b ON cs.schedule_id = b.schedule_id
GROUP BY ct.difficulty;

SELECT m.member_id, m.first_name, m.last_name, m.join_date
FROM members m
LEFT JOIN bookings b ON m.member_id = b.member_id
WHERE b.booking_id IS NULL;

SELECT HOUR(cs.start_time) AS hour_of_day, COUNT(b.booking_id) AS total_bookings
FROM class_schedule cs
JOIN bookings b ON cs.schedule_id = b.schedule_id
WHERE b.booking_status IN ('Confirmed', 'Attended')
GROUP BY HOUR(cs.start_time) ORDER BY total_bookings DESC;

SELECT 
    m.member_id,
    m.first_name,
    m.last_name
FROM members m
JOIN bookings b ON m.member_id = b.member_id
JOIN class_schedule cs ON b.schedule_id = cs.schedule_id
JOIN class_types ct ON cs.class_type_id = ct.class_type_id
WHERE ct.category = 'Yoga'
AND NOT EXISTS (
    SELECT 1 
    FROM bookings b2 
    JOIN class_schedule cs2 ON b2.schedule_id = cs2.schedule_id 
    JOIN class_types ct2 ON cs2.class_type_id = ct2.class_type_id 
    WHERE b2.member_id = m.member_id 
      AND ct2.category <> 'Yoga'
)
GROUP BY m.member_id, m.first_name, m.last_name;


SELECT DATE_FORMAT(p.payment_date, '%M %Y') AS month_name, COUNT(p.payment_id) AS transactions, SUM(p.amount) AS revenue
FROM payments p
GROUP BY DATE_FORMAT(p.payment_date, '%M %Y'), MONTH(p.payment_date) ORDER BY MONTH(p.payment_date);


-- 6. OPTIMIZATION

EXPLAIN SELECT * FROM bookings WHERE booking_date = '2025-12-10 09:00:00';

CREATE INDEX idx_bookings_date ON bookings(booking_date);

EXPLAIN SELECT * FROM bookings WHERE booking_date = '2025-12-10 09:00:00';
-- explain
EXPLAIN
SELECT ct.category, COUNT(b.booking_id) AS total_bookings, SUM(p.amount) AS total_revenue
FROM class_types ct
JOIN class_schedule cs ON ct.class_type_id = cs.class_type_id
JOIN bookings b ON cs.schedule_id = b.schedule_id
JOIN payments p ON b.booking_id = p.booking_id
WHERE b.payment_status = 'Paid'
GROUP BY ct.category
ORDER BY total_revenue DESC;

-- index creation --
-- Index on the main join between bookings and class_schedule
CREATE INDEX idx_schedule_id ON bookings(schedule_id);

-- Index on member_id to speed up member-level aggregations
CREATE INDEX idx_member_id ON bookings(member_id);

-- Index on booking_date for faster time-based filtering
CREATE INDEX idx_booking_date ON bookings(booking_date);

-- Index on payment_date to optimise financial reports
CREATE INDEX idx_payment_date ON payments(payment_date);

-- Index on payments.booking_id to speed up joins with bookings
CREATE INDEX idx_payment_booking_id ON payments(booking_id);

-- Index on class_schedule.class_type_id for category-level analysis
CREATE INDEX idx_class_type_id ON class_schedule(class_type_id);

EXPLAIN
SELECT ct.category, COUNT(b.booking_id) AS total_bookings, SUM(p.amount) AS total_revenue
FROM class_types ct
JOIN class_schedule cs ON ct.class_type_id = cs.class_type_id
JOIN bookings b ON cs.schedule_id = b.schedule_id
JOIN payments p ON b.booking_id = p.booking_id
WHERE b.payment_status = 'Paid'
GROUP BY ct.category
ORDER BY total_revenue DESC;



-- 7. SECURITY
DROP USER IF EXISTS 'manager_sarah'@'localhost';
DROP USER IF EXISTS 'trainer_tom'@'localhost';
CREATE USER 'manager_sarah'@'localhost' IDENTIFIED BY 'SecurePass123!';
GRANT ALL PRIVILEGES ON studio_fit.* TO 'manager_sarah'@'localhost';
CREATE USER 'trainer_tom'@'localhost' IDENTIFIED BY 'TrainerPass456!';
GRANT SELECT ON studio_fit.class_schedule TO 'trainer_tom'@'localhost';
GRANT SELECT ON studio_fit.class_types TO 'trainer_tom'@'localhost';
FLUSH PRIVILEGES;

-- 8. TESTING

-- Attempt to insert a duplicate email
INSERT INTO members (first_name, last_name, email, phone, join_date, membership_type)
VALUES ('Fail', 'User', 'amelia.smith@studiofit.co.uk', '00000', '2025-01-01', 'Monthly');

-- Attempt to book for non-existent Member ID 999
INSERT INTO bookings (schedule_id, member_id, booking_date, booking_status, payment_status)
VALUES (1, 999, NOW(), 'Confirmed', 'Paid');
