create table lga_postcode(
	sr	INTEGER,
	State	VARCHAR(255),
	LGA_NAME VARCHAR(255),	
	Postcode INTEGER,
	PRIMARY KEY (Postcode)
)

select * from lga_postcode