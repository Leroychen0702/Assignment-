  USE PROJECT;

CREATE TABLE expo (
    expo_id INT PRIMARY KEY,
    expo_name VARCHAR(255) NOT NULL,
    CONSTRAINT expo_name_CHK CHECK (expo_name IN ('Comic-Con Day 1', 'Comic-Con Day 2')),
    expo_location VARCHAR(255) NOT NULL,
    expo_description TEXT NULL,
    expo_start_datetime DATETIME NOT NULL,
    expo_end_datetime DATETIME NOT NULL
);


CREATE TABLE stall (
    stall_id INT PRIMARY KEY,
    expo_id INT,
    booth_number VARCHAR(255),
    stall_size VARCHAR(255),
    FOREIGN KEY (expo_id) REFERENCES expo(expo_id)
);

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    stall_id INT,
    staff_name VARCHAR(255),
    staff_email VARCHAR(255),
    FOREIGN KEY (stall_id) REFERENCES stall(stall_id)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    stall_id INT,
    item_description TEXT,
    item_quantity INT,
    FOREIGN KEY (stall_id) REFERENCES stall(stall_id)
);



CREATE TABLE attendee (
    attendee_id INT PRIMARY KEY
);


CREATE TABLE ticket (
    ticket_id INT PRIMARY KEY,
    expo_id INT,
    attendee_id INT,
    ticket_type VARCHAR(50) CONSTRAINT
    ticket_type_CHK CHECK ( ticket_type IN ('Super-fan','Single Day-Saturday','Single Day-Sunday') ),
    ticket_price DECIMAL(10, 2),
    FOREIGN KEY (expo_id) REFERENCES expo(expo_id),
    FOREIGN KEY (attendee_id) REFERENCES attendee(attendee_id)
  
);



CREATE TABLE panel (
    panel_id INT PRIMARY KEY,
    expo_id INT,
    panel_start_time DATETIME,
    panel_end_time DATETIME
);




CREATE TABLE artist (
    artist_id INT PRIMARY KEY,
    panel_id INT,
    artist_name NVARCHAR(100),
    genre NVARCHAR(50),
    artist_email NVARCHAR(100),
    artist_phone NVARCHAR(15),
    CONSTRAINT CHK_PhoneFormat CHECK (artist_phone REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'),
    FOREIGN KEY (panel_id) REFERENCES panel(panel_id)
);


CREATE TABLE sponsor_role (
    role_id VARCHAR(255) PRIMARY KEY,
    sponsor_id VARCHAR(255) NOT NULL,
    role_name VARCHAR(255) NOT NULL,
    CONSTRAINT chk_role_name_length CHECK (CHAR_LENGTH(role_name) <= 255)
);


CREATE TABLE sponsor (
    sponsor_id VARCHAR(255) PRIMARY KEY,
    role_id VARCHAR(255) NOT NULL,
    expo_id INT NOT NULL,
    sponsor_name VARCHAR(255) NOT NULL,
    sponsor_description VARCHAR(255) NOT NULL,
    CONSTRAINT chk_sponsor_description_length CHECK (CHAR_LENGTH(sponsor_description) <= 255),
    FOREIGN KEY (role_id) REFERENCES sponsor_role(role_id),
    FOREIGN KEY (expo_id) REFERENCES expo(expo_id)
);



CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    Amount DECIMAL(10, 2) NOT NULL,
    Method VARCHAR(50) NOT NULL,
    Status VARCHAR(50) NOT NULL
);
