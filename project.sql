drop table ribcot;
drop table trends;
purge recyclebin;

create table ribcot
	(
	dma varchar(40) not null,
	state char(2) not null,
	geoCode int not null,
	year int not null,
	cancer int not null,
	cardiovascular int not null,
	depression int not null,
	diabetes int not null,
	diarrhea int not null,
	obesity int not null,
	rehab int not null,
	stroke int not null,
	vaccine int not null,
	primary key (state, year));

grant select on ribcot to public;


create table trends
	(
	year int not null,
	stateAbbr char(2) not null,
	stateDesc varchar(40) not null,
	cityName varchar(40) not null,
	category varchar(40) not null,
	measure varchar(100) not null,
	dataValueTypeID varchar(40) not null,
	data_Value_Pct decimal not null,
	population2010 int not null,
	cityFIPS int not null,
	primary key (state, year));

grant select on trends to public;