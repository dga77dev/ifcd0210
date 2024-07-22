CREATE TABLE log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(255),
    operation VARCHAR(10),
    record_id INT,
    old_data TEXT,
    new_data TEXT,
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

