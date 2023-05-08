DROP TABLE "Sale Man"
CREATE TABLE "Sale Man"(
    "sale_person_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "total_sales" INTEGER NOT NULL
);
ALTER TABLE
    "Sale Man" ADD PRIMARY KEY("sale_person_id");
DROP TABLE "mechanics_cars"
CREATE TABLE "mechanics_cars"(
    "id" SERIAL NOT NULL,
    "mechanic_id" INTEGER NOT NULL,
    "car_id" INTEGER NOT NULL
);
ALTER TABLE
    "mechanics_cars" ADD PRIMARY KEY("id");
DROP TABLE "Cars"
CREATE TABLE "Cars"(
    "car_id" SERIAL NOT NULL,
    "car_brand" VARCHAR(100) NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "sale_person_id" INTEGER NULL,
    "customer_id" INTEGER NOT NULL,
    "model" VARCHAR(50) NOT NULL,
    "year" INTEGER NOT NULL
);
ALTER TABLE
    "Cars" ADD PRIMARY KEY("car_id");
DROP TABLE "Customers"
CREATE TABLE "Customers"(
    "customer_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "service_type" VARCHAR(100) NOT NULL
);
ALTER TABLE
    "Customers" ADD PRIMARY KEY("customer_id");
DROP TABLE "Services"
CREATE TABLE "Services"(
    "service_id" SERIAL NOT NULL,
    "service_name" VARCHAR(100) NOT NULL,
    "hours_done" INTEGER NOT NULL,
    "mechanic_id" INTEGER NOT NULL,
    "service_in" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "service_out" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "customer_id" INTEGER NOT NULL
);
ALTER TABLE
    "Services" ADD PRIMARY KEY("service_id");
DROP TABLE "Mechanics"
CREATE TABLE "Mechanics"(
    "mechanic_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Mechanics" ADD PRIMARY KEY("mechanic_id");
DROP TABLE "Invoices"   
CREATE TABLE "Invoices"(
    "invoice_id" SERIAL NOT NULL,
    "car_id" INTEGER NOT NULL,
    "service_id" INTEGER NULL,
    "total" DOUBLE PRECISION NOT NULL,
    "payment_date" DATE NOT NULL,
    "sale_person_id" INTEGER NULL,
    "customer_id" INTEGER NOT NULL
);
ALTER TABLE
    "Invoices" ADD PRIMARY KEY("invoice_id");
ALTER TABLE
    "Invoices" ADD CONSTRAINT "invoices_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "Customers"("customer_id");
ALTER TABLE
    "Invoices" ADD CONSTRAINT "invoices_service_id_foreign" FOREIGN KEY("service_id") REFERENCES "Services"("service_id");
ALTER TABLE
    "Invoices" ADD CONSTRAINT "invoices_sale_person_id_foreign" FOREIGN KEY("sale_person_id") REFERENCES "Sale Man"("sale_person_id");
ALTER TABLE
    "Services" ADD CONSTRAINT "services_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "Customers"("customer_id");
ALTER TABLE
    "Cars" ADD CONSTRAINT "cars_sale_person_id_foreign" FOREIGN KEY("sale_person_id") REFERENCES "Sale Man"("sale_person_id");
ALTER TABLE
    "mechanics_cars" ADD CONSTRAINT "mechanics_cars_mechanic_id_foreign" FOREIGN KEY("mechanic_id") REFERENCES "Mechanics"("mechanic_id");
ALTER TABLE
    "Invoices" ADD CONSTRAINT "invoices_car_id_foreign" FOREIGN KEY("car_id") REFERENCES "Cars"("car_id");
ALTER TABLE
    "Cars" ADD CONSTRAINT "cars_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "Customers"("customer_id");
ALTER TABLE
    "mechanics_cars" ADD CONSTRAINT "mechanics_cars_car_id_foreign" FOREIGN KEY("car_id") REFERENCES "Cars"("car_id");