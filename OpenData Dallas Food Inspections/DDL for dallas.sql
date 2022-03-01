
Use Dallas
go

  CREATE TABLE [Restaurant_Info](
	[Restaurant_ID] INT PRIMARY KEY,
	[Restaurant_name] [VARCHAR](255)
);

CREATE TABLE [Inspection](
	[Inspection_ID] INT PRIMARY KEY,
	[Inspection_type] [VARCHAR](255),
	[Inspection_date] [date],
	[Inspection_score] [VARCHAR](19),
	[Inspection_Month] [DATE],
	[Inspection_Year] [VARCHAR](255)
);

CREATE TABLE [Violation](
	[Violation_ID] INT PRIMARY KEY,
	[Violation_description] [VARCHAR](1000),
	[Violation_points] [VARCHAR](1000),
    [Violation_detail] [VARCHAR](1000),
   	[Violation_Memo] [VARCHAR](1000)
);

CREATE TABLE [GeoLocation](
	[GeoLocation_ID] INT PRIMARY KEY,
	[Street_number] [VARCHAR](255),
	[Street_name] [VARCHAR](255),
	[Street_direction] [VARCHAR](255),
	[Street_type] [VARCHAR](255),
	[Street_unit] [VARCHAR](255),
	[Street_address] [VARCHAR](255),
	[Zip_code] [VARCHAR](255),
	[Lat_long_location] [VARCHAR](255)	
);

CREATE TABLE [fact_table](
[Fact_Id] INT PRIMARY KEY,
[Restaurant_ID] INT,
[Violation_ID] INT,
[GeoLocation_ID] INT,
[Inspection_ID] INT,
CONSTRAINT Restaurant_ID_restaurant_fk FOREIGN KEY ([Restaurant_ID]) REFERENCES Restaurant_Info(Restaurant_ID),
CONSTRAINT Inspection_ID_inspection_fk FOREIGN KEY ([Inspection_ID]) REFERENCES Inspection([Inspection_ID]),
CONSTRAINT Violation_ID_violation_fk FOREIGN KEY ([Violation_ID]) REFERENCES Violation([Violation_ID]),
CONSTRAINT Location_ID_location_fk FOREIGN KEY ([GeoLocation_ID]) REFERENCES GeoLocation([GeoLocation_ID])
);