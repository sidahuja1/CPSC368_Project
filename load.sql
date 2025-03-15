drop table salesdetails;
drop table sales;
drop table titleditors;
drop table titleauthors;
drop table titles;
drop table publishers;
drop table authors;
drop table editors;
purge recyclebin;

CREATE TABLE cities500 (
    State VARCHAR2(2),
    CityName VARCHAR2(100),
    Population2010 NUMBER,
    cityfips NUMBER,
    BingeDrinking NUMBER(5,2),
    SmokingRate NUMBER(5,2),
    NoPhysicalActivity NUMBER(5,2),
    ObesityRate NUMBER(5,2),
    SleepDeprivation NUMBER(5,2),
    PRIMARY KEY (State, CityName)
);

grant select on cities500 to public;

CREATE TABLE ribcot (
    CityName VARCHAR2(100) NOT NULL,
    State VARCHAR2(2) NOT NULL,
    geoCode NUMBER,
    cancer NUMBER,
    cardiovascular NUMBER,
    depression NUMBER,
    diabetes NUMBER,
    diarrhea NUMBER,
    obesity NUMBER,
    rehab NUMBER,
    stroke NUMBER,
    vaccine NUMBER,
    PRIMARY KEY (State, CityName),
    FOREIGN KEY (State, CityName) 
        REFERENCES cities500(State, CityName) 
        ON DELETE CASCADE
);

grant select on ribcot to public;

INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('AK', 'Anchorage', 291826, 203000, 20.2, 18.3, 19.2, 27.7, 33.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('AL', 'Birmingham', 212237, 107000, 11.4, 22.0, 31.7, 39.0, 46.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('AR', 'Jonesboro', 67263, 535710, 14.4, 24.3, 30.1, 32.9, 35.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('AZ', 'Phoenix', 1445632, 455000, 14.5, 19.6, 24.1, 30.1, 35.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('CA', 'Bakersfield', 347483, 603526, 16.8, 17.6, 27.1, 30.3, 34.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('CA', 'Los Angeles', 3792621, 644000, 15.1, 15.6, 25.1, 26.7, 37.5);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('CA', 'San Diego', 1307402, 666000, 17.3, 13.1, 21.0, 22.2, 34.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('CO', 'Denver', 600158, 820000, 19.9, 17.0, 16.7, 19.7, 28.1);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('DC', 'Washington', 601723, 1150000, 20.3, 18.0, 20.5, 25.4, 35.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('FL', 'Gainesville', 124354, 1225175, 16.3, 19.7, 22.6, 27.9, 36.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('FL', 'Jacksonville', 821784, 1235000, 17.4, 21.1, 25.5, 30.6, 37.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('GA', 'Albany', 77434, 1301052, 10.9, 23.7, 33.1, 40.4, 46.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('GA', 'Atlanta', 420003, 1304000, 14.1, 16.6, 22.4, 31.6, 40.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('GA', 'Augusta', 195844, 1304204, 12.5, 21.8, 28.1, 36.0, 44.1);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('GA', 'Columbus', 189885, 1319000, 13.5, 20.3, 25.8, 33.2, 42.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('GA', 'Macon', 91351, 1349000, 11.2, 25.9, 34.5, 42.9, 46.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('GA', 'Savannah', 136286, 1369000, 13.5, 21.0, 26.9, 36.0, 44.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('HI', 'Honolulu', 953207, 15003, 19.0, 15.5, 22.2, 22.1, 48.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('IA', 'Sioux City', 82684, 1973335, 19.7, 22.8, 27.7, 35.5, 33.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('IL', 'Chicago', 2695598, 1714000, 18.7, 19.1, 27.6, 31.3, 37.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('IL', 'Rockford', 152871, 1765000, 18.0, 22.4, 31.1, 37.5, 37.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('IN', 'Evansville', 117429, 1822000, 15.8, 25.3, 28.9, 35.1, 39.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('IN', 'Indianapolis', 820445, 1836003, 14.9, 23.9, 27.6, 34.9, 39.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('IN', 'Lafayette', 67140, 1840788, 14.8, 23.2, 25.4, 31.8, 38.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('KS', 'Topeka', 127473, 2071000, 14.6, 24.1, 26.1, 34.9, 31.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('KY', 'Lexington', 295803, 2146027, 12.4, 23.2, 26.3, 30.8, 37.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('KY', 'Louisville', 597337, 2148006, 14.6, 25.5, 27.8, 32.9, 37.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('LA', 'Baton Rouge', 229493, 2205000, 15.7, 22.8, 30.4, 36.8, 36.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('LA', 'Lafayette', 120623, 2240735, 17.2, 23.8, 27.8, 34.1, 35.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('LA', 'Lake Charles', 71993, 2241155, 15.3, 28.0, 32.5, 36.9, 39.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('LA', 'New Orleans', 343829, 2255000, 17.3, 23.6, 28.2, 34.4, 38.5);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('LA', 'Shreveport', 199311, 2270000, 15.7, 25.9, 31.7, 37.1, 40.7);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MD', 'Baltimore', 620961, 2404000, 13.9, 23.2, 26.3, 35.6, 44.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MI', 'Detroit', 713777, 2622000, 13.5, 29.8, 36.4, 45.2, 50.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MI', 'Lansing', 114297, 2646000, 17.7, 22.5, 28.2, 36.1, 36.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MO', 'Kansas City', 459787, 2938000, 14.7, 22.3, 25.7, 34.7, 35.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MO', 'Springfield', 159498, 2970000, 15.1, 24.4, 26.2, 35.9, 34.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MO', 'St. Joseph', 76780, 2964550, 15.6, 24.8, 27.9, 32.4, 37.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MO', 'St. Louis', 319294, 2965000, 14.9, 24.9, 27.6, 37.0, 39.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MS', 'Jackson', 173514, 2836000, 11.4, 23.4, 33.0, 40.6, 43.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('MT', 'Missoula', 66788, 3050200, 20.1, 18.3, 17.1, 25.5, 29.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NC', 'Charlotte', 731424, 3712000, 14.7, 16.8, 20.5, 27.8, 34.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NC', 'Wilmington', 106476, 3774440, 15.1, 18.8, 20.5, 28.2, 32.5);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NE', 'Omaha', 408958, 3137000, 20.9, 20.4, 22.3, 30.6, 32.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NV', 'Las Vegas', 583756, 3240000, 15.9, 20.4, 26.2, 30.3, 38.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NV', 'Reno', 225221, 3260600, 19.0, 19.3, 20.3, 22.8, 33.7);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NY', 'Buffalo', 261310, 3611000, 15.6, 22.8, 31.2, 36.3, 43.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NY', 'New York', 8175133, 3651000, 15.5, 16.8, 28.8, 26.3, 41.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NY', 'Rochester', 210565, 3663000, 14.3, 22.8, 30.1, 38.6, 42.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('NY', 'Syracuse', 145170, 3673000, 14.8, 24.1, 30.7, 33.7, 39.7);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OH', 'Cincinnati', 296943, 3915000, 15.9, 24.0, 27.0, 36.5, 38.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OH', 'Columbus', 787033, 3918000, 17.0, 21.7, 27.0, 35.0, 40.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OH', 'Dayton', 141527, 3921000, 13.6, 28.7, 32.2, 47.2, 45.7);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OH', 'Toledo', 287208, 3977000, 17.4, 25.5, 32.5, 41.0, 40.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OH', 'Youngstown', 66982, 3988000, 14.4, 30.2, 36.5, 43.8, 46.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OK', 'Oklahoma City', 579999, 4055000, 13.4, 20.5, 28.5, 32.4, 35.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OK', 'Tulsa', 391906, 4075000, 13.4, 21.4, 28.1, 31.7, 36.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OR', 'Bend', 76639, 4105800, 20.1, 16.0, 14.6, 26.1, 30.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OR', 'Eugene', 156185, 4123850, 18.9, 17.7, 14.9, 28.7, 31.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('OR', 'Portland', 583776, 4159000, 20.4, 17.9, 15.4, 24.3, 29.2);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('PA', 'Erie', 101786, 4224000, 16.9, 27.6, 26.1, 36.0, 37.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('PA', 'Philadelphia', 1526006, 4260000, 17.5, 25.5, 29.0, 33.9, 44.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('PA', 'Pittsburgh', 305704, 4261000, 18.9, 23.1, 24.6, 33.1, 40.5);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('SC', 'Charleston', 120083, 4513330, 19.9, 17.4, 19.4, 28.0, 34.7);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('SC', 'Columbia', 129272, 4516000, 15.9, 20.3, 24.9, 34.4, 40.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('SD', 'Rapid City', 67956, 4652980, 17.9, 22.1, 20.3, 28.1, 28.6);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TN', 'Chattanooga', 167674, 4714000, 11.0, 24.1, 29.2, 35.1, 38.1);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TN', 'Knoxville', 178874, 4740000, 10.8, 25.4, 27.7, 32.4, 39.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TN', 'Memphis', 646889, 4748000, 9.6, 24.4, 31.6, 36.3, 39.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TN', 'Nashville', 601222, 4752006, 12.3, 22.6, 26.7, 31.1, 36.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'Amarillo', 190695, 4803000, 16.5, 18.5, 27.9, 32.0, 32.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'Austin', 790390, 4805000, 18.9, 13.2, 21.4, 26.0, 29.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'Corpus Christi', 305215, 4817000, 17.0, 17.7, 29.0, 37.3, 35.4);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'El Paso', 649121, 4824000, 16.3, 15.6, 29.0, 35.5, 34.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'Houston', 2099451, 4835000, 14.9, 16.4, 29.7, 33.9, 36.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'Laredo', 236091, 4841464, 13.6, 16.9, 37.6, 38.6, 33.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'Lubbock', 229573, 4845000, 16.3, 18.2, 27.8, 33.0, 33.5);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'San Angelo', 93200, 4864472, 16.8, 18.7, 28.7, 34.2, 33.5);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('TX', 'San Antonio', 1327407, 4865000, 15.7, 15.2, 29.5, 32.9, 36.8);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('UT', 'Salt Lake City', 186440, 4967000, 11.6, 11.2, 19.0, 28.2, 32.0);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('WA', 'Spokane', 208916, 5367000, 18.5, 19.6, 19.7, 32.6, 32.9);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('WI', 'Madison', 233209, 5548000, 22.7, 14.0, 17.7, 27.5, 30.3);
INSERT INTO cities500 (State, CityName, population2010, cityfips, bingedrinking, smokingrate, nophysicalactivity, obesityrate, sleepdeprivation) VALUES ('WI', 'Milwaukee', 594833, 5553000, 19.8, 23.7, 28.6, 39.0, 40.8);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Albany', 'GA', 525, 76, 71, 64, 77, 64, 64, 62, 64, 52);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Amarillo', 'TX', 634, 67, 34, 67, 74, 77, 39, 62, 54, 58);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Anchorage', 'AK', 743, 62, 32, 55, 68, 60, 41, 33, 68, 74);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Atlanta', 'GA', 524, 72, 41, 51, 64, 63, 35, 56, 53, 51);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Augusta', 'GA', 520, 69, 28, 54, 59, 72, 24, 70, 62, 41);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Austin', 'TX', 635, 66, 30, 51, 67, 69, 35, 64, 52, 63);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Bakersfield', 'CA', 800, 67, 37, 60, 73, 71, 45, 36, 53, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Baltimore', 'MD', 512, 80, 52, 62, 79, 63, 59, 66, 58, 78);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Baton Rouge', 'LA', 716, 71, 64, 59, 70, 72, 47, 74, 61, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Bend', 'OR', 821, 72, 37, 65, 71, 59, 37, 52, 66, 80);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Birmingham', 'AL', 630, 78, 70, 67, 77, 73, 52, 79, 64, 59);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Buffalo', 'NY', 514, 84, 36, 65, 71, 66, 47, 64, 60, 64);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Charleston', 'SC', 519, 78, 41, 58, 69, 68, 46, 65, 76, 64);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Charlotte', 'NC', 517, 69, 33, 54, 65, 65, 39, 56, 53, 51);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Chattanooga', 'TN', 575, 78, 38, 61, 70, 75, 36, 57, 67, 55);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Chicago', 'IL', 602, 71, 35, 56, 63, 64, 38, 63, 52, 52);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Cincinnati', 'OH', 515, 74, 39, 60, 74, 67, 44, 53, 54, 68);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Columbia', 'SC', 546, 77, 53, 66, 81, 62, 76, 61, 61, 66);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Columbus', 'GA', 522, 74, 49, 61, 74, 70, 61, 66, 63, 62);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Columbus', 'OH', 535, 78, 37, 61, 72, 69, 43, 55, 55, 63);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Corpus Christi', 'TX', 600, 71, 39, 61, 83, 78, 46, 57, 50, 59);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Dayton', 'OH', 542, 75, 30, 69, 74, 71, 45, 52, 55, 62);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Denver', 'CO', 751, 63, 30, 55, 59, 65, 39, 55, 51, 53);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Detroit', 'MI', 505, 74, 42, 58, 65, 65, 37, 64, 59, 58);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('El Paso', 'TX', 765, 68, 62, 66, 84, 65, 61, 42, 42, 68);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Erie', 'PA', 516, 83, 47, 71, 76, 73, 42, 70, 65, 63);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Eugene', 'OR', 801, 65, 41, 65, 71, 65, 62, 49, 66, 68);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Evansville', 'IN', 649, 74, 38, 70, 80, 82, 53, 74, 67, 65);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Gainesville', 'FL', 592, 82, 86, 66, 85, 62, 81, 77, 83, 100);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Honolulu', 'HI', 744, 64, 26, 53, 66, 66, 50, 49, 60, 53);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Houston', 'TX', 618, 70, 41, 51, 67, 60, 38, 47, 53, 59);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Indianapolis', 'IN', 527, 77, 46, 68, 80, 70, 56, 63, 61, 67);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Jackson', 'MS', 718, 78, 58, 61, 92, 67, 75, 91, 70, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Jacksonville', 'FL', 561, 72, 60, 55, 71, 67, 46, 91, 61, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Jonesboro', 'AR', 734, 81, 46, 71, 77, 74, 65, 72, 60, 75);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Kansas City', 'MO', 616, 76, 47, 61, 73, 67, 46, 63, 60, 61);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Knoxville', 'TN', 557, 76, 38, 62, 71, 77, 40, 64, 64, 60);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Lafayette', 'IN', 582, 69, 37, 66, 70, 54, 78, 35, 41, 73);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Lafayette', 'LA', 642, 67, 71, 61, 58, 74, 29, 54, 69, 52);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Lake Charles', 'LA', 643, 69, 37, 62, 66, 68, 32, 67, 65, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Lansing', 'MI', 551, 73, 52, 67, 70, 63, 58, 75, 57, 80);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Laredo', 'TX', 749, 63, 52, 58, 80, 50, 54, 37, 46, 52);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Las Vegas', 'NV', 839, 67, 38, 53, 63, 69, 33, 63, 53, 51);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Lexington', 'KY', 541, 85, 46, 70, 76, 81, 66, 59, 67, 62);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Los Angeles', 'CA', 803, 63, 32, 54, 61, 58, 40, 44, 48, 49);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Louisville', 'KY', 529, 81, 43, 62, 77, 81, 44, 91, 68, 63);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Lubbock', 'TX', 651, 65, 47, 68, 65, 77, 49, 68, 47, 58);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Macon', 'GA', 503, 72, 56, 60, 78, 68, 54, 71, 69, 53);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Madison', 'WI', 669, 71, 30, 61, 64, 68, 41, 52, 59, 64);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Memphis', 'TN', 640, 76, 79, 57, 80, 69, 52, 72, 63, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Milwaukee', 'WI', 617, 71, 42, 65, 70, 64, 43, 59, 59, 61);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Missoula', 'MT', 762, 70, 36, 64, 69, 65, 45, 60, 66, 77);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Nashville', 'TN', 659, 79, 43, 59, 77, 80, 41, 77, 65, 66);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('New Orleans', 'LA', 622, 69, 40, 53, 63, 75, 33, 62, 64, 52);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('New York', 'NY', 501, 71, 33, 53, 62, 56, 39, 58, 45, 57);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Oklahoma City', 'OK', 650, 74, 32, 53, 65, 78, 36, 65, 60, 63);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Omaha', 'NE', 652, 76, 34, 60, 70, 73, 45, 70, 60, 60);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Philadelphia', 'PA', 504, 81, 39, 62, 70, 66, 44, 83, 57, 68);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Phoenix', 'AZ', 753, 69, 47, 58, 68, 68, 45, 63, 57, 55);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Pittsburgh', 'PA', 508, 82, 40, 67, 70, 71, 43, 77, 70, 71);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Portland', 'OR', 820, 41, 21, 33, 47, 34, 24, 29, 36, 38);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Rapid City', 'SD', 764, 61, 28, 70, 66, 76, 34, 63, 64, 70);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Reno', 'NV', 811, 67, 24, 52, 66, 71, 38, 47, 63, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Rochester', 'NY', 538, 82, 37, 63, 71, 64, 55, 47, 62, 67);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Rockford', 'IL', 610, 78, 40, 68, 78, 74, 41, 54, 54, 64);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Salt Lake City', 'UT', 770, 60, 37, 67, 69, 67, 44, 65, 57, 56);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('San Angelo', 'TX', 661, 66, 39, 66, 75, 99, 31, 98, 54, 54);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('San Antonio', 'TX', 641, 66, 41, 51, 77, 67, 39, 66, 53, 57);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('San Diego', 'CA', 825, 67, 42, 55, 65, 61, 45, 48, 51, 60);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Savannah', 'GA', 507, 73, 46, 60, 64, 70, 51, 54, 64, 62);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Shreveport', 'LA', 612, 71, 50, 67, 71, 73, 51, 59, 63, 52);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Sioux City', 'IA', 624, 75, 55, 69, 73, 70, 54, 50, 55, 55);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Spokane', 'WA', 881, 68, 37, 67, 73, 62, 54, 53, 64, 66);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Springfield', 'MO', 619, 72, 45, 69, 74, 73, 48, 59, 71, 68);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('St. Joseph', 'MO', 638, 82, 64, 77, 71, 91, 31, 68, 65, 72);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('St. Louis', 'MO', 609, 75, 34, 59, 68, 72, 39, 71, 60, 58);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Syracuse', 'NY', 555, 82, 41, 69, 71, 64, 58, 49, 62, 67);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Toledo', 'OH', 547, 76, 49, 69, 76, 67, 59, 74, 66, 64);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Topeka', 'KS', 605, 69, 35, 64, 63, 70, 47, 52, 61, 66);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Tulsa', 'OK', 671, 63, 38, 57, 64, 62, 33, 50, 58, 53);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Washington', 'DC', 511, 66, 30, 46, 60, 52, 38, 47, 43, 59);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Wilmington', 'NC', 550, 77, 51, 60, 71, 66, 53, 75, 73, 66);
INSERT INTO ribcot (CityName, State, geocode, cancer, cardiovascular, depression, diabetes, diarrhea, obesity, rehab, stroke, vaccine) VALUES ('Youngstown', 'OH', 536, 82, 33, 68, 69, 83, 50, 64, 60, 59);
