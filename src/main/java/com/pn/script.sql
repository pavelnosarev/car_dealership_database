
DROP TABLE IF EXISTS dealerships;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS sales_contracts;
DROP TABLE IF EXISTS lease_contracts;

-- create tables for dealerships, vehicles, inventory,
--(cont.) sales_contracts, lease_contracts

CREATE TABLE dealerships (
  dealership_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12)
);


CREATE TABLE vehicles (
  VIN VARCHAR(17) NOT NULL PRIMARY KEY,
  SOLD BOOLEAN DEFAULT FALSE,
  color VARCHAR(20),
  vehicle_type VARCHAR(20),
);


CREATE TABLE inventory (
  dealership_id INT,
  VIN VARCHAR(17),
  PRIMARY KEY (dealership_id, VIN),
  FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
  FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

CREATE TABLE sales_contracts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  VIN VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE lease_contracts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  VIN VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);






