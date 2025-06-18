-- DONOR
INSERT INTO DONOR VALUES
(1, 'Elon', 'Musk'),
(2, 'Oprah', 'Winfrey'),
(3, 'Bill', 'Gates'),
(4, 'Serena', 'Williams'),
(5, 'LeBron', 'James'),
(6, 'Taylor', 'Swift'),
(7, 'Michael', 'Jordan'),
(8, 'Rihanna', 'Fenty'),
(9, 'Tom', 'Brady'),
(10, 'Shakira', 'Mebarak');

-- NUTRITION
INSERT INTO NUTRITION VALUES
(1, 'Chris', 'Kresser'),
(2, 'Rhonda', 'Patrick'),
(3, 'Jeff', 'Nippard'),
(4, 'Tia', 'Wright'),
(5, 'James', 'Wilks'),
(6, 'Layne', 'Norton'),
(7, 'Ben', 'Greenfield'),
(8, 'Maya', 'Fellows'),
(9, 'Alan', 'Aragon'),
(10, 'Stacy', 'Sims');

-- NUTRITION_SPECIALIZATION
INSERT INTO NUTRITION_SPECIALIZATION VALUES
(1, 'Keto Diet'),
(2, 'Intermittent Fasting'),
(3, 'Muscle Building'),
(4, 'Vegan Nutrition'),
(5, 'Weight Cutting'),
(6, 'Hormonal Health'),
(7, 'Sports Hydration'),
(8, 'Pre/Post Workout Meals'),
(9, 'Gut Health'),
(10, 'Menstrual Cycle Nutrition');

-- FACILITY
INSERT INTO FACILITY VALUES
(1, '123 Ocean Drive', 'Miami', 'USA', 300),
(2, '456 Snowy St', 'Oslo', 'Norway', 200),
(3, '789 Fast Ln', 'Tokyo', 'Japan', 350),
(4, '321 High Dive Ave', 'Sydney', 'Australia', 400),
(5, '654 Swim Blvd', 'Toronto', 'Canada', 250),
(6, '987 Aqua Way', 'London', 'UK', 275),
(7, '741 Power St', 'Berlin', 'Germany', 180),
(8, '852 Glide Rd', 'Warsaw', 'Poland', 240),
(9, '963 Jetstream Dr', 'Paris', 'France', 360),
(10, '369 Endurance Pl', 'Rome', 'Italy', 230);

-- TEAM
INSERT INTO TEAM VALUES
(1, 'AquaJets', 1, 1, 1),
(2, 'HydroBlades', 2, 2, 2),
(3, 'Streamliners', 3, 3, 3),
(4, 'WaveRiders', 4, 4, 4),
(5, 'PowerSplash', 5, 5, 5),
(6, 'SwimStorm', 6, 6, 6),
(7, 'SpeedTide', 7, 7, 7),
(8, 'GlideForce', 8, 8, 8),
(9, 'JetSwimmers', 9, 9, 9),
(10, 'TsunamiCrew', 10, 10, 10);

-- TEAM_DISCIPLINE
INSERT INTO TEAM_DIS VALUES
(1, 'Butterfly'),
(2, 'Freestyle'),
(3, 'Backstroke'),
(4, 'Breaststroke'),
(5, 'Distance'),
(6, 'Sprint'),
(7, 'IM (Individual Medley)'),
(8, 'Relay'),
(9, 'Open Water'),
(10, 'Marathon Swimming');

-- ATHLETE
INSERT INTO ATHLETE VALUES
(1, 'Katie', 'Ledecky', 183, 3.90, 1),
(2, 'Caeleb', 'Dressel', 190, 3.75, 2),
(3, 'Katinka', 'Hosszu', 175, 3.60, 3),
(4, 'Adam', 'Peaty', 185, 3.85, 4),
(5, 'Sarah', 'Sjostrom', 183, 3.80, 5),
(6, 'Simone', 'Manuel', 180, 3.95, 6),
(7, 'Michael', 'Phelps', 193, 3.70, 7),
(8, 'Federica', 'Pellegrini', 179, 3.65, 8),
(9, 'Ryan', 'Lochte', 188, 3.55, 9),
(10, 'Kosuke', 'Kitajima', 178, 3.50, 10);

-- FLYER
INSERT INTO FLYER VALUES
(75, 1),
(80, 2),
(78, 3);

-- BACKSTROKER
INSERT INTO BACKSTROKER VALUES
(6, 4),
(7, 5),
(5, 6);

-- BREASTROKER
INSERT INTO BREASTROKER VALUES
(1, 7),
(2, 8);

-- FREESTROKER
INSERT INTO FREESTROKER VALUES
(60.45, 9),
(58.90, 10);

-- DISTANCE
INSERT INTO DISTANCE VALUES
(490.23, 1),
(475.10, 2),
(510.55, 3),
(530.67, 4),
(499.88, 5);

-- SPRINT
INSERT INTO SPRINT VALUES
(24.10, 6),
(23.90, 7),
(22.75, 8),
(25.60, 9),
(23.44, 10);

-- MONEYTRANSFER
INSERT INTO MONEYTRANSFER VALUES
('2025-01-01', 1500.00, 1, 1),
('2025-01-15', 1800.00, 2, 2),
('2025-02-01', 2000.00, 3, 3),
('2025-02-20', 1700.00, 4, 4),
('2025-03-01', 2100.00, 5, 5),
('2025-03-15', 1600.00, 6, 6),
('2025-04-01', 2200.00, 7, 7),
('2025-04-20', 2500.00, 8, 8),
('2025-05-01', 2700.00, 9, 9),
('2025-06-01', 3000.00, 10, 10);
