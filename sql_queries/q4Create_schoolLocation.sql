create table schoolLocation(
Education_Sector	VARCHAR(255),
	Entity_Type INTEGER,
	School_No INTEGER,
	School_Name	VARCHAR(255),
	School_Type VARCHAR(255),
	School_Status VARCHAR(2),
	Address_Line_1 VARCHAR(255),
	Address_Line_2	VARCHAR(255),
	Address_Town	VARCHAR(255),
	Address_State	VARCHAR(255),
	Address_Postcode	INTEGER,
	Postal_Address_Line_1 VARCHAR(255),
	Postal_Address_Line_2	VARCHAR(255),
	Postal_Town	VARCHAR(255),
	Postal_State VARCHAR(255),
	Postal_Postcode	INTEGER,
	Full_Phone_No	VARCHAR(255),
	LGA_ID	INTEGER,
	LGA_Name VARCHAR(255),
	X DECIMAL,
	Y DECIMAL,
	PRIMARY KEY (X,Y)

)