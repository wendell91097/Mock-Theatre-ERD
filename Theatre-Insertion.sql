insert into studio(
	studio_id,
	brand_name,
	contact_number,
	address
) values (
	1,
	'Fanta Films',
	'555-545-5321',
	'78 Highsky Lane Bermuda, FL'
);

insert into studio(
	studio_id,
	brand_name,
	contact_number,
	address
) values (
	2,
	'Pretty Pictures',
	'895-500-5111',
	'303 Malibu Road Hollywood, CA'
);

insert into movie(
	movie_id,
	movie_name,
	studio_id
) values (
	1,
	'Lost in Paradise',
	1
);

insert into movie(
	movie_id,
	movie_name,
	studio_id
) values (
	678449,
	'Found in Hell',
	2
);

insert into theatre_inventory(
	upc,
	product_amount
) values (
	1,
	120
);

insert into theatre_inventory(
	upc,
	product_amount
) values (
	2,
	120
);

insert into theatre_inventory(
	upc,
	product_amount
) values (
	901,
	100
);

insert into theatre_inventory(
	upc,
	product_amount
) values (
	951,
	100
);

insert into concessions (
	item_id,
	amount,
	item_name,
	upc
) values (
	101,
	10.00,
	'Popcorn',
	'1'
);
insert into concessions (
	item_id,
	amount,
	item_name,
	upc
) values (
	102,
	8.00,
	'Soda',
	'2'
);

insert into ticket (
	ticket_id,
	amount,
	movie_id,
	upc
) values (
	1,
	12.00,
	1,
	901
)

insert into ticket (
	ticket_id,
	amount,
	movie_id,
	upc
) values (
	2,
	12.00,
	678449,
	951
)

insert into order_ (
	order_id,
	sub_total,
	total_count,
	upc
) values (
	1,
	10.00,
	10.70,
	1
);
insert into order_ (
	order_id,
	sub_total,
	total_count,
	upc
) values (
	2,
	8.00,
	8.56,
	2
);
insert into order_ (
	order_id,
	sub_total,
	total_count,
	upc
) values (
	3,
	24.00,
	25.68,
	901
);
insert into customer (
	customer_id,
	first_name,
	last_name,
	contact_number,
	address,
	order_id
) values (
	1,
	'Joe',
	'Schmo',
	'653-000-8900',
	'532 Sea Watch Ter. Joeville, MI 53340',
	1
);
insert into customer (
	customer_id,
	first_name,
	last_name,
	contact_number,
	address,
	order_id
) values (
	2,
	'Haley',
	'Comment',
	'653-405-8050',
	'132 Landview St Joeville, MI 53340',
	2
);
insert into customer (
	customer_id,
	first_name,
	last_name,
	contact_number,
	address,
	order_id
) values (
	3,
	'Hugh',
	'Ji-Go',
	'760-665-0000',
	'131 Cloud District Whiterun, MI 53391',
	3
);

select * from customer




