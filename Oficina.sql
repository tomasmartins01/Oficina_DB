USE Oficina;

-- DROP --

DROP TABLE IF EXISTS repair;
DROP TABLE IF EXISTS client_Car;
DROP TABLE IF EXISTS repair_Used_Parts;
DROP TABLE IF EXISTS storage_Model;
DROP TABLE IF EXISTS worked_Hours;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS storage;
DROP TABLE IF EXISTS car_Brand;
DROP TABLE IF EXISTS car_Model;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS speciality;

--CREATE --

--TABLE REPAIR--
CREATE TABLE repair(
repair_id INTEGER NOT NULL,
car_id INTEGER NOT NULL,
client_id INTEGER NOT NULL,
begin_Repair DATE
);

--TABLE CLIENT CAR--
CREATE TABLE client_Car(
    client_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL
);

--TABLE REPAIR USED PARTS--
CREATE TABLE repair_Used_Parts(
    repair_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
    used_Parts INTEGER NOT NULL,
    cost INTEGER NOT NULL
);

--TABLE STORAGE MODEL--
CREATE TABLE storage_Model(
    car_Model_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL
);

--TABLE WORKED HOURS--
CREATE TABLE worked_Hours(
    repair_id INTEGER NOT NULL,
    employee  INTEGER NOT NULL,
    number_Hours_Worked INTEGER NOT NULL
);

--TABLE CLIENTS TABLE--
CREATE TABLE clients(
client_id INTEGER NOT NULL,
client_name VARCHAR(50),
client_Address VARCHAR(150),
client_Phone INTEGER 
);

--TABLE CAR--
CREATE TABLE car(
    car_id INTEGER NOT NULL,
    car_Plaque VARCHAR(15),
    car_Brand_id INTEGER NOT NULL,
    car_Model_id INTEGER NOT NULL
);

--TABLE STORAGE--
CREATE TABLE storage(
    part_id INTEGER NOT NULL,
    storage_Name VARCHAR(50),
    storage_stock INTEGER NOT NULL,
    price INTEGER NOT NULL
);

--TABLE CAR BRAND--
CREATE TABLE car_Brand(
    car_Brand_id INTEGER NOT NULL,
    car_Brand_Name VARCHAR(50)
);

--TABLE CAR MODEL--
CREATE TABLE car_Model(
    car_Model_id INTEGER NOT NULL,
    car_Model_Name VARCHAR(50)
);

--TABLE EMPLOYEE TABLE--
CREATE TABLE employee(
employee_id INTEGER NOT NULL,
employee_name VARCHAR(50),
employee_Address VARCHAR(150),
employee_Phone INTEGER,
speciality_id INTEGER NOT NULL 
);

--TABLE SPECIALITY--
CREATE TABLE speciality(
speciality_id INTEGER NOT NULL,
speciality_name VARCHAR(50),
hourly_cost INTEGER
);

--PRIMARY KEY--
-- REPAIRS KEYS--
ALTER TABLE repair ADD CONSTRAINT PK_repair_id PRIMARY KEY (repair_id);

-- CLIENT KEYS--
ALTER TABLE client ADD CONSTRAINT PK_client_id PRIMARY KEY (client_id);


-- CAR KEYS--
ALTER TABLE car ADD CONSTRAINT PK_car_id PRIMARY KEY (car_id);


-- STORAGE KEYS--
ALTER TABLE storage ADD CONSTRAINT PK_part_id PRIMARY KEY (part_id);


-- CAR BRAND KEYS--
ALTER TABLE car_Brand ADD CONSTRAINT PK_car_Brand_id PRIMARY KEY (car_Brand_id);

-- CAR MODEL KEYS--
ALTER TABLE car_Model ADD CONSTRAINT PK_car_Model_id PRIMARY KEY (car_Model_id);


-- EMPLOYEE KEYS--
ALTER TABLE employee ADD CONSTRAINT PK_employee_id PRIMARY KEY (employee_id);


-- SPECIALITY KEYS--
ALTER TABLE speciality ADD CONSTRAINT PK_speciality_id PRIMARY KEY (speciality_id);



--FOREIGN KEYS--

