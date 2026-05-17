-- ---------------------------------------------------------------------------
-- 1. FLIGHTS  (id_flight is AUTO_INCREMENT, we force specific IDs for seeding)
-- ---------------------------------------------------------------------------
INSERT IGNORE INTO flight (id_flight, departure_city, departure_airport, arrival_city, arrival_airport, date, departure_time, arrival_time, company, price)
VALUES
(1, 'Casablanca', 'CMN', 'Paris',      'CDG', '2026-06-15', '08:00', '12:30', 'Royal Air Maroc', 1850.00),
(2, 'Marrakech',  'RAK', 'London',     'LHR', '2026-06-16', '10:15', '14:45', 'Ryanair',         1200.00),
(3, 'Paris',      'CDG', 'New York',   'JFK', '2026-06-17', '13:00', '16:00', 'Air France',      4500.00),
(4, 'Dubai',      'DXB', 'Casablanca', 'CMN', '2026-06-18', '22:00', '05:30', 'Emirates',        3200.00),
(5, 'Istanbul',   'IST', 'Marrakech',  'RAK', '2026-06-19', '09:30', '12:00', 'Turkish Airlines', 2100.00),
(6, 'Casablanca', 'CMN', 'Madrid',     'MAD', '2026-06-20', '07:45', '10:15', 'Iberia',          950.00),
(7, 'London',     'LHR', 'Dubai',      'DXB', '2026-06-21', '20:00', '06:30', 'British Airways',  3800.00),
(8, 'New York',   'JFK', 'Istanbul',   'IST', '2026-06-22', '18:00', '12:00', 'Turkish Airlines', 5200.00),
(9, 'K8s',   'JFK', 'test',   'test', '2026-06-22', '18:00', '12:00', 'K8s Airlines', 5200.00);

-- ---------------------------------------------------------------------------
-- 2. PASSENGERS
-- ---------------------------------------------------------------------------
INSERT IGNORE INTO passenger (id_passenger, first_name, family_name, gender, age, passport)
VALUES
(1, 'Youssef',  'El Amrani',  'Male',   28, 'MA1234567'),
(2, 'Fatima',   'Benali',     'Female', 35, 'MA7654321'),
(3, 'Adnan',    'Chakir',     'Male',   22, 'MA1112233'),
(4, 'Sara',     'Toumi',      'Female', 30, 'MA4455667'),
(5, 'Mehdi',    'Ouazzani',   'Male',   45, 'MA8899001'),
(6, 'Amina',    'Idrissi',    'Female', 27, 'MA2233445'),
(7, 'Omar',     'Fassi',      'Male',   60, 'MA5566778'),
(8, 'Leila',    'Berrada',    'Female', 19, 'MA9900112');

-- ---------------------------------------------------------------------------
-- 3. SEATS  (one seat-map per flight, id matches the flight id for simplicity)
--    Each column (a1..d9) is either NULL (available) or a passenger name (taken).
--    We leave all seats NULL (available) so the app starts fresh.
-- ---------------------------------------------------------------------------
INSERT IGNORE INTO seats (id, id_flight, a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, a4, b4, c4, d4, a5, b5, c5, d5, a6, b6, c6, d6, a7, b7, c7, d7, a8, b8, c8, d8, a9, b9, c9, d9)
VALUES
(1, 1, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(2, 2, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(3, 3, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(4, 4, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(5, 5, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(6, 6, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(7, 7, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(8, 8, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL),
(9, 9, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL, NULL,NULL,NULL,NULL);

-- ---------------------------------------------------------------------------
-- 4. RESERVATIONS  (links passengers to flights with a seat assignment)
-- ---------------------------------------------------------------------------
INSERT IGNORE INTO reservation (id, id_passenger, id_flight, seat)
VALUES
(1, 1, 1, 'A1'),
(2, 2, 1, 'B1'),
(3, 3, 2, 'A3'),
(4, 4, 3, 'C2'),
(5, 5, 4, 'D1'),
(6, 6, 5, 'B4'),
(7, 7, 6, 'A1'),
(8, 8, 7, 'C5'),
(9, 9, 8, 'A9');
