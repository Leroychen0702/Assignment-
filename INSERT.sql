INSERT INTO expo (expo_id, expo_name, expo_location, expo_description, expo_start_datetime, expo_end_datetime)
VALUES (1, 'Comic-Con Day 1', 'Boston Convention Center Hall 1', 'The biggest nerd event of the year', '2023-11-25 10:00:00', '2023-11-25 18:00:00'),
  (2, 'Comic-Con Day 2', 'Boston Convention Center Hall 2', 'The biggest nerd event of the year', '2023-11-26 10:00:00', '2023-11-26 19:00:00');

INSERT INTO attendee (attendee_id)
Values (101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111);


INSERT INTO ticket (ticket_id, expo_id, attendee_id, ticket_type, ticket_price)
VALUES 
   (1, 1, 101, 'Super-fan', 100.00),   
    (2, 2, 102, 'Single Day-Saturday', 65.00),
    (3, 1, 103, 'Super-fan', 100.00),
    (4, 2, 104, 'Single Day-Sunday', 65.00),
    (5, 1, 105, 'Super-fan', 100.00),
    (6, 2, 106, 'Single Day-Saturday', 65.00),
    (7, 1, 107, 'Super-fan', 100.00),
    (8, 2, 108, 'Single Day-Sunday', 65.00),
    (9, 1, 109, 'Super-fan', 100.00),
    (10, 2, 110, 'Single Day-Saturday', 65.00),
    (11, 2, 111, 'Single Day-Saturday', 65.00);
 
INSERT INTO stall (stall_id, expo_id, booth_number, stall_size) VALUES 
(1, 1, 'A101', '10x10'),
(2, 2, 'A102', '10x10'),
(3, 3, 'A103', '10x15'),
(4, 4, 'B101', '10x20'),
(5, 5, 'B102', '10x10'),
(6, 6, 'C101', '10x15'),
(7, 7, 'C102', '20x20'),
(8, 8, 'D101', '15x15'),
(9, 9, 'D102', '10x10'),
(10, 10, 'E101', '10x20');



INSERT INTO staff (staff_id, stall_id, staff_name, staff_email) VALUES 
(1, 1, 'John Doe', 'johndoe@example.com'),
(2, 2, 'Jane Smith', 'janesmith@example.com'),
(3, 3, 'Alice Johnson', 'alicejohnson@example.com'),
(4, 4, 'Bob Brown', 'bobbrown@example.com'),
(5, 5, 'Charlie Davis', 'charliedavis@example.com'),
(6, 6, 'Diana Evans', 'dianaevans@example.com'),
(7, 7, 'Ethan Harris', 'ethanharris@example.com'),
(8, 8, 'Fiona King', 'fionaking@example.com'),
(9, 9, 'George Lee', 'georgelee@example.com'),
(10, 10, 'Hannah Martin', 'hannahmartin@example.com');


INSERT INTO inventory (inventory_id, stall_id, item_description, item_quantity) VALUES 
(1, 1, 'Smartphone Case - Black', 100),
(2, 2, 'Laptop Backpack - 15-inch', 150),
(3, 3, 'Wireless Bluetooth Earbuds', 200),
(4, 4, 'Stainless Steel Water Bottle', 250),
(5, 5, 'LED Desk Lamp - Adjustable', 300),
(6, 6, 'Home Theater Sound System', 350),
(7, 7, 'Digital Camera - 20MP', 400),
(8, 8, 'Coffee Maker - Programmable', 450),
(9, 9, 'Fitness Tracker Watch', 500),
(10, 10, 'Smart TV - 55-inch 4K', 550);


INSERT INTO panel VALUES (1, 101, '2023-01-01T10:00:00', '2023-01-01T11:00:00');
INSERT INTO panel VALUES (2, 102, '2023-01-02T12:00:00', '2023-01-02T13:00:00');
INSERT INTO panel VALUES (3, 103, '2023-01-03T14:00:00', '2023-01-03T15:00:00');
INSERT INTO panel VALUES (4, 104, '2023-01-04T16:00:00', '2023-01-04T17:00:00');
INSERT INTO panel VALUES (5, 105, '2023-01-05T18:00:00', '2023-01-05T19:00:00');
INSERT INTO panel VALUES (6, 106, '2023-01-06T20:00:00', '2023-01-06T21:00:00');
INSERT INTO panel VALUES (7, 107, '2023-01-07T22:00:00', '2023-01-07T23:00:00');
INSERT INTO panel VALUES (8, 108, '2023-01-08T08:00:00', '2023-01-08T09:00:00');
INSERT INTO panel VALUES (9, 109, '2023-01-09T10:00:00', '2023-01-09T11:00:00');
INSERT INTO panel VALUES (10, 110, '2023-01-10T12:00:00', '2023-01-10T13:00:00');

INSERT INTO artist VALUES (1, 1, 'Evelyn Hart', 'Superhero', 'evelyn.hart@example.com', '123-456-7890');
INSERT INTO artist VALUES (2, 2, 'Leo Goodman', 'Fantasy', 'leo.goodman@example.com', '123-456-7891');
INSERT INTO artist VALUES (3, 3, 'Adrianne Low', 'Science Fiction', 'adrianne.low@example.com', '123-456-7892');
INSERT INTO artist VALUES (4, 4, 'Marcus Reid', 'Horror', 'marcus.reid@example.com', '123-456-7893');
INSERT INTO artist VALUES (5, 5, 'Tanya Burke', 'Mystery', 'tanya.burke@example.com', '123-456-7894');
INSERT INTO artist VALUES (6, 6, 'Samuel Tate', 'Thriller', 'samuel.tate@example.com', '123-456-7895');
INSERT INTO artist VALUES (7, 7, 'Christina Yang', 'Romance', 'christina.yang@example.com', '123-456-7896');
INSERT INTO artist VALUES (8, 8, 'Oscar Dunn', 'Adventure', 'oscar.dunn@example.com', '123-456-7897');
INSERT INTO artist VALUES (9, 9, 'Sophia Miles', 'Slice of Life', 'sophia.miles@example.com', '123-456-7898');
INSERT INTO artist VALUES (10, 10, 'Lucas Grant', 'Historical', 'lucas.grant@example.com', '123-456-7899');


INSERT INTO sponsor_role(role_id,sponsor_id,role_name)
VALUES('RL1', 'SP1', 'Platinum Sponsor'),
('RL2', 'SP2', 'Gold Partner'),
('RL3', 'SP3', 'Silver Contributor'),
('RL4', 'SP4', 'Exclusive Panel Sponsor'),
('RL5', 'SP5', 'Cosplay Competition Sponsor'),
('RL6', 'SP6', 'VIP Lounge Sponsor'),
('RL7', 'SP7', 'Artist Alley Supporter'),
('RL8', 'SP8', 'Interactive Exhibit Sponsor'),
('RL9', 'SP9', 'Official Merchandise Partner'),
('RL10','SP10', 'After-Party Host');


INSERT INTO sponsor(sponsor_id,role_id,expo_id,sponsor_name,sponsor_description)
VALUES('SP1','RL1','EXP1','John Doe','Premier supporter providing top-level sponsorship'),
('SP2','RL2','EXP2','Jane Smith','Key collaborator with significant sponsorship'),
('SP3','RL3','EXP3','Mark Johnson','Valuable supporter contributing at a substantial level'),
('SP4','RL4','EXP4','Sarah White',' Sponsors specific panels'),
('SP5','RL5','EXP5','Robert Lee','Supports and sponsors the cosplay competition'),
('SP6','RL6','EXP6','Emily Brown',' Provides sponsorship for the VIP lounge'),
('SP7','RL7','EXP7','Michael Taylor','Supports the artist alley'),
('SP8','RL8','EXP8','Laura Davis','Sponsors interactive exhibits'),
('SP9','RL9','EXP9','Kevin Miller','Exclusive partner for event merchandise'),
('SP10','RL10','EXP10','Amanda Wilson','Hosts and sponsors the official after-party');


INSERT INTO Attendee (AttendeeID, Name, Email, Phone, TicketsBought, PaymentStatus)
VALUES
(1, 'John Doe', 'john.doe@example.com', '123-456-7890', 2, 'Paid'),
(2, 'Jane Smith', 'jane.smith@example.com', '987-654-3210', 1, 'Pending'),
(3, 'Bob Johnson', 'bob.johnson@example.com', '555-123-4567', 3, 'Paid'),
(4, 'Alice Johnson', 'alice.johnson@example.com', '444-555-6666', 1, 'Pending'),
(5, 'Charlie Brown', 'charlie.brown@example.com', '777-888-9999', 2, 'Paid'),
(6, 'Eva Martinez', 'eva.martinez@example.com', '111-222-3333', 1, 'Completed'),
(7, 'Michael Wang', 'michael.wang@example.com', '999-888-7777', 3, 'Paid'),
(8, 'Olivia Turner', 'olivia.turner@example.com', '123-456-7890', 1, 'Completed'),
(9, 'David Lee', 'david.lee@example.com', '987-654-3210', 2, 'Pending'),
(10, 'Sophia Garcia', 'sophia.garcia@example.com', '555-123-4567', 1, 'Paid');


INSERT INTO Payment (PaymentID, Amount, Method, Status)
VALUES
(1, 50.00, 'Credit Card', 'Completed'),
(2, 25.00, 'Cash', 'Pending'),
(3, 75.00, 'PayPal', 'Completed'),
(4, 30.00, 'Credit Card', 'Completed'),
(5, 40.00, 'Cash', 'Pending'),
(6, 60.00, 'PayPal', 'Completed'),
(7, 25.00, 'Credit Card', 'Pending'),
(8, 55.00, 'Cash', 'Completed'),
(9, 70.00, 'PayPal', 'Pending'),
(10, 45.00, 'Credit Card', 'Completed');
 
 
 

    
    
    
    
    
    
    
    
    
    