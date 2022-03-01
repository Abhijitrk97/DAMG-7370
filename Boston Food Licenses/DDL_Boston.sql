Use Boston
go


CREATE TABLE Business_details(
	[Businessid] INT PRIMARY KEY,
	[businessname] [VARCHAR](254),
	[property_id] [VARCHAR](254),
	[DBAname] [VARCHAR](254),
	[legalowner] [VARCHAR](254),
	[namelast] [VARCHAR](254),
	[namefirst] [VARCHAR](254),
	[DESCRIPT] [VARCHAR](254),
	[dayphn] [VARCHAR](254)
);


CREATE TABLE geolocation(
	[locationid] INT PRIMARY KEY,
	[address] [VARCHAR](255),
	[city] [VARCHAR](255),
	[state] [VARCHAR](255),
	[zip] [VARCHAR](255),
	[location] [VARCHAR](255)
);

CREATE TABLE [result](
	[Resultid] INT PRIMARY KEY,
	[result] [VARCHAR](255),
	[resultdttm] [VARCHAR](255),
	[comments] [VARCHAR](255)
);

CREATE TABLE [violation](
	[ViolationID] INT PRIMARY KEY,
	[violation] [VARCHAR](255),
	[viollevel] [VARCHAR](255),
	[violdesc] [VARCHAR](255),
	[violdttm] [VARCHAR](255),
	[violstatus] [VARCHAR](255),
	[statusdate] [VARCHAR](255)
);

CREATE TABLE [License](
	[Licenseno] [VARCHAR](255) PRIMARY KEY,
	[licstatus] [VARCHAR](255),
	[licensecat] [VARCHAR](255),
	[LicenseAddDtTm] [VARCHAR](255),
	[issdttm] [VARCHAR](255),
	[expdttm] [VARCHAR](255)
);

CREATE TABLE [fact](
[Factid] INT  PRIMARY KEY,
[Businessid] INT,
[locationid] INT,
[Licenseno] [VARCHAR](255),
[Violationid] INT,
[Resultid] INT,
CONSTRAINT Business_ID_business_fk FOREIGN KEY ([Businessid]) REFERENCES Business_details([Businessid]),
CONSTRAINT Business_ID_address_fk FOREIGN KEY ([locationid]) REFERENCES Geolocation([locationid]),
CONSTRAINT Business_ID_license_fk FOREIGN KEY ([Licenseno]) REFERENCES License([Licenseno]),
CONSTRAINT Business_ID_violation_fk FOREIGN KEY ([Violationid]) REFERENCES violation([ViolationID]),
CONSTRAINT Business_ID_result_fk FOREIGN KEY ([Resultid]) REFERENCES result([Resultid])
);

