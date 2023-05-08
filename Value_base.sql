SELECT *
FROM public."Customers"

INSERT INTO public."Customers"(
	first_name,
	last_name,
	service_type
)values(
	'Kyle',
	'Thai',
	'Buy Car'
),(
	'Vivian',
	'Nguyen',
	'Car Repairs'
)

INSERT INTO public."Sale Man"(
	first_name,
	last_name,
	total_sales
)values(
	'Micah',
	'Lee',
	'3'
),(
	'Michael',
	'Carrick',
	'1'
)

SELECT *
FROM public."Sale Man"

INSERT INTO public."Cars"(
	car_brand,
	price,
	customer_id,
	model,
	year
)values(
	'Toyota',
	30000,
	1,
	'Prius',
	2024
)

INSERT INTO public."Cars"(
	car_brand,
	price,
	customer_id,
	model,
	year
)values(
	'Jeep',
	200,
	2,
	'Wrangler',
	2020
)

SELECT *
FROM public."Cars"


INSERT INTO public."Invoices"(
	car_id,
	total,
	payment_date,
	sale_person_id,
	customer_id
)values(
	1,
	30000,
	'05-04-2023',
	1,
	1
)

INSERT INTO public."Invoices"(
	car_id,
	total,
	payment_date,
	sale_person_id,
	customer_id
)values(
	2,
	7000,
	'04-07-2023',
	2,
	2
)

SELECT *
FROM public."Invoices"

INSERT INTO public."Mechanics"(
	first_name,
	last_name
)values(
	'Luan',
	'Moises'
),(
	'Jose',
	'Hart'
)

SELECT *
FROM public."Mechanics"

INSERT INTO public."Services"(
	service_name,
	hours_done,
	mechanic_id,
	service_in,
	service_out,
	customer_id
)values(
	'Backdoor Repairing',
	30,
	2,
	'7:50:23',
	'12:12:10',
	2
)

SELECT *
FROM public."Services"

INSERT INTO public."mechanics_cars"(
	mechanic_id,
	car_id
)values(
	2,
	2
)

SELECT *
FROM public."mechanics_cars"