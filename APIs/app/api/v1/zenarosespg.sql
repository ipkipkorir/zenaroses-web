/*create database */
CREATE TABLE zenarosespg;

/*create tables*/

/*create table product */
CREATE TABLE product(
	id SERIAL, 
	name VARCHAR(60) NOT NULL, 
	description VARCHAR(100) NULL, 
	CONSTRAINT product_pkey PRIMARY KEY(id)
	);

/*create table variety */
CREATE TABLE variety (
	id SERIAL, 
	name VARCHAR(60) UNIQUE NOT NULL, 
	colour VARCHAR(20) NULL,
	description VARCHAR(100) NULL,
	productid INT NOT NULL,
	CONSTRAINT variety_pkey PRIMARY KEY(id),
	CONSTRAINT variety_fkey FOREIGN KEY (productid) REFERENCES product(id)
	);

/*create table section*/
CREATE TABLE section (
	id SERIAL, 
	name VARCHAR(60) UNIQUE NOT NULL, 
	description VARCHAR(100) NULL,
	CONSTRAINT section_pkey PRIMARY KEY(id)
	);

/*create table greenhouse*/
CREATE TABLE greenhouse (
	id SERIAL, 
	name VARCHAR(60) NOT NULL, 
	description VARCHAR(100) NULL, 
	sectionid INT,
	sizeha FLOAT(5) NOT NULL,
	CONSTRAINT greenhouse_pkey PRIMARY KEY(id),
	CONSTRAINT section_greenhouse_fkey FOREIGN KEY(sectionid) REFERENCES section(id)
	);

/*create table department*/
CREATE TABLE department (
	id SERIAL, 
	name VARCHAR(15) NOT NULL UNIQUE,
	description TEXT NULL,
	CONSTRAINT department_pkey PRIMARY KEY(id)
	);

/*create table position*/
CREATE TABLE position(
	id SERIAL, 
	name VARCHAR(15) NOT NULL UNIQUE,
	description TEXT NULL,
	CONSTRAINT position_pkey PRIMARY KEY(id)
	);

/*create table user*/
CREATE TABLE employee (
	id SERIAL, 
	firstname VARCHAR(15) NOT NULL,
	lastname VARCHAR(15) NOT NULL,
	othername VARCHAR(25) NULL,
	payrollid VARCHAR(5) NOT NULL,
	nationalid INT UNIQUE NULL,
	gender VARCHAR(6) NOT NULL,
	hiredate DATE DEFAULT ('now'::text)::date NOT NULL,
	departmentid INT NOT NULL,
	positionid INT NOT NULL,
	CONSTRAINT employee_pkey PRIMARY KEY(id),
	CONSTRAINT department_employee_fkey FOREIGN KEY(departmentid) REFERENCES department(id),
	CONSTRAINT position_employee_fkey FOREIGN KEY(positionid) REFERENCES position(id)
	);


/*create table user*/
DROP TABLE zena_user;
CREATE TABLE zena_user (
	id SERIAL,
	email VARCHAR(60) UNIQUE NOT NULL,
	password VARCHAR(15) NOT NULL,
	date_created TIMESTAMP WITH TIME ZONE DEFAULT ('now'::text)::DATE NOT NULL, 
	employeeid INT NOT NULL,
	CONSTRAINT user_pkey PRIMARY KEY(id),
	CONSTRAINT user_employee_fkey FOREIGN KEY(employeeid) REFERENCES employee(id)
	);


