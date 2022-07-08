INSERT INTO "Departments" ("DepartmentName","Building") VALUES ('Development', 'Main');

INSERT INTO "Departments" ("DepartmentName","Building") VALUES ('Marketing', 'North');


SELECT * FROM "Departments";

SELECT * FROM "Employees";

DELETE FROM "Departments" WHERE "Id" < 4;

UPDATE "Employees" SET "DepartmentId" = NULL WHERE "DepartmentId" < 4;

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tom Jones', 32000, 'Admin', 456, true, 5);

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")
VALUES (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock")
VALUES (99.99, 'Flowbee', 'Perfect for haircuts', 3);

INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email")
VALUES ('X529', '2020-01-01 16:55:00', 'person@example.com');

SELECT * FROM "ProductOrders";

ALTER TABLE "ProductOrders" ALTER COLUMN "Order" TYPE TEXT REFERENCES ("Id");

INSERT INTO "ProductOrders" ("OrderQuantity", "Product", "Order")
VALUES (3, 'Widget', 'X529');

INSERT INTO "ProductOrders" ("OrderQuantity", "Product", "Order")
VALUES (2, 'Flowbee', 'X529');

SELECT *
FROM "Employees"
LEFT JOIN "Departments"
ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = "North Side";

ALTER TABLE "Employees" ADD COLUMN "DepartmentID" INTEGER NULL REFERENCES "Departments" ("Id");

SELECT *
FROM "Employees"
LEFT JOIN "Departments"
ON "Employees"."DepartmentID" = "Departments"."Id"
WHERE "Departments"."Building" = 'North Side';

UPDATE "Employees" SET "DepartmentID" = 4 WHERE "FullName" = 'Tom Jones';

SELECT * FROM "Departments";
