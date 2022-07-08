CREATE TABLE "Employees" (
"FullName"        TEXT NOT NULL,
"Salary" INT,
"JobPosition" TEXT,
"PhoneExtension" INT,
"IsPartTime" BOOL
);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Sid Kid Nextdoor',3250, 'Explosives Expert',6, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mickey Mouse',5000, 'Little bitch', 4, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Minnie Mouse',500, 'Chef', 1, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Goofy Man',1000, 'Janitor', 1, FALSE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Daisy Duck',10, 'Teacher', 31, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Woody Woodpecker',8000, 'Carpenter', 22, FALSE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Gimmini Cricket',90000, 'CEO', 660, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('PUMBA',7500, 'Flatulence expert', 8880, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('SIMBA',65210, 'Male Model', 740, FALSE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Buzz Lightyear',100, 'Satellite', 123, FALSE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Sid Kid Nextdoor',3250, 'Explosives Expert',6, TRUE);

INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Donald Duck', 1000, 'Boss', 5, False);

--Select all columns for all employees.
 SELECT * FROM "Employees";

--Select only the full names and phone extensions for only full-time employees.
SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = FALSE; 

-- Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.
INSERT INTO "Employees" ("FullName","Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('George Bluth',450, 'Software Developer',23, FALSE);

-- Update all employees that are cooks to have a salary of 500.
UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';


-- Delete all employees that have the full name of "Lazy Larry".
DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

-- Add a column to the table: ParkingSpot as textual information that can store up to 10 characters.
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);


ALTER TABLE "Employees" ADD COLUMN "Id" SERIAL PRIMARY KEY;

CREATE TABLE "Departments" (
"Name" TEXT NOT NULL,
"BuildingNumber" INT
);

ALTER TABLE "Departments" ADD COLUMN "Id" SERIAL PRIMARY KEY;

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments"("Id");

INSERT INTO "Departments" ("Name", "BuildingNumber", "Id") 
VALUES ('Finance', 1, 1);

INSERT INTO "Departments" ("Name", "BuildingNumber", "Id") 
VALUES ('Operations',2, 2);

INSERT INTO "Departments" ("Name", "BuildingNumber", "Id") 
VALUES ('Sales',3, 3);


