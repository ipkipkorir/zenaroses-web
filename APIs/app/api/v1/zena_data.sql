/*insert data to zenarosespg tables*/
INSERT INTO PRODUCT(name, description) 
VALUES('Roses', 'Rose flowers');

INSERT INTO PRODUCT(name, description) 
VALUES('Crysanthemums', 'Mums flowers');

INSERT INTO PRODUCT(name, description) 
VALUES('Gypsophila', 'Gypso flowers');

--------------------------------------

INSERT INTO VARIETY(name, colour, description, productid) 
VALUES('Wild cheetah','Cerise','',1);

INSERT INTO VARIETY(name, colour, productid) 
VALUES('Yellow sunburst','Yellow',1);

INSERT INTO VARIETY(name, colour, productid) 
VALUES('Sugar Love','Pink',1);

INSERT INTO VARIETY(name, colour, productid) 
VALUES('Vesper','White',1);

INSERT INTO VARIETY(name, colour, productid) 
VALUES('Shiary','Brown',1);

-----------------------------------------

INSERT INTO SECTION(name, description) 
VALUES('Section1','Section 1 greenhouses');

INSERT INTO SECTION(name, description) 
VALUES('Section2','Section 2 greenhouses');

-----------------------------------------------

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS1','0.0', 1);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS2','0.0', 1);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS3','0.0', 1);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS4','0.0', 1);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS1','0.0', 2);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS2','0.0', 2);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS3','0.0', 2);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS4','0.0', 2);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS5','0.0', 2);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS6','0.0', 2);

INSERT INTO GREENHOUSE(name, sizeha, sectionid) 
VALUES('GS7','0.0', 2);

SELECT * FROM GREENHOUSE;

-------------------------------------------------

INSERT INTO POSITION(name, description) 
VALUES('General', 'Can be assigned any manual work');

INSERT INTO POSITION(name, description) 
VALUES('Supervisor', 'Supervises general worker personnel');

INSERT INTO POSITION(name, description) 
VALUES('Section Head', 'Heads a section');

INSERT INTO POSITION(name, description) 
VALUES('Manager', 'Heads sections and department');

INSERT INTO POSITION(name, description) 
VALUES('Farm Manager', 'Heads farming operations');

INSERT INTO POSITION(name, description) 
VALUES('Managing Director', 'Heads the company');

INSERT INTO POSITION(name, description) 
VALUES('Executive Director', 'Company Executive director and owner');

----------------------------------------------------
ALTER TABLE employee ALTER COLUMN hiredate TYPE TIMESTAMP DEFAULT ('now'::text)::date NOT NULL;

INSERT INTO employee(firstname, lastname, payrollid, nationalid, gender, hiredate) 
VALUES('Executive Director', 'Company Executive director and owner');


