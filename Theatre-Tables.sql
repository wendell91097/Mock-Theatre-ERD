create table studio (
	studio_id SERIAL primary key,
	brand_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);

create table movie (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	studio_id INTEGER not null,
	foreign key(studio_id) references studio(studio_id)
);

create table theatre_inventory(
	upc SERIAL primary key,
	product_amount INTEGER
);

create table ticket (
	ticket_id SERIAL primary key,
	amount NUMERIC(5,2),
	movie_id INTEGER not null,
	upc INTEGER not null,
	foreign key(movie_id) references movie(movie_id),
	foreign key(upc) references theatre_inventory(upc)
);

create table concessions (
	item_id SERIAL primary key,
	amount NUMERIC(4,2),
	item_name VARCHAR(150),
	upc INTEGER not null,
	foreign key(upc) references theatre_inventory(upc)
);

create table order_ (
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_count NUMERIC(8,2),
	upc INTEGER not null,
	foreign key(upc) references theatre_inventory(upc)
);

create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150),
	order_id INTEGER not null,
	foreign key(order_id) references order_(order_id)
)

