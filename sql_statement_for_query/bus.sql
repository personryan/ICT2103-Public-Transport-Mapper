/*
Use to Insert new bus services
VALUES (VARCHAR(5), VARCHAR(10), VARCHAR(10))
*/
INSERT INTO Bus_Services(ServiceNo,Operator,Category) 
VALUES ('','',''),

/*
Use to Insert new bus stop
VALUES (INT, VARCHAR(50), VARCHAR(50), DOUBLE, DOUBLE)
*/
INSERT INTO Bus_Stop(BusStopCode,RoadName,Description,Latitude,Longitude)
VALUES (0,'','',0.0,0.0)

/*
Use to Insert new taxi stand
VALUES (VARCHAR(3), DOUBLE, DOUBLE, BIT(1), VARCHAR(10), VARCHAR(5), VARCHAR(90))
*/
INSERT INTO Taxi_Stand(TaxiCode,Latitude,Longitude,Bfa,Ownership,Type,Name) VALUES
('',0.0,0.0,0,'','','')

/*
Use to find bus stop based on roadname or description
Example:WHERE RoadName LIKE '%Bedok%' OR Description LIKE '%Bedok%';
*/
SELECT BusStopCode,RoadName,Description FROM bus_stop
WHERE RoadName LIKE '%%' OR Description LIKE '%%';

/*
Use to find bus stop based on bus stop code
Example:WHERE BusStopCode = '46499';
*/
SELECT BusStopCode,RoadName,Description FROM bus_stop
WHERE BusStopCode = '';
 
 /* Find bus services with their to and from
Example: WHERE BD.ServiceNo = '168';*/
SELECT BD.ServiceNo, 
BD.Direction,BD.OriginCode, CONCAT(BS2.RoadName,', ',BS2.Description) AS OriginName,
BD.DestinationCode, CONCAT(BS.RoadName,', ',BS.Description) AS DestName
FROM  bus_direction BD 
JOIN bus_stop BS 
ON BD.DestinationCode = BS.BusStopCode 
JOIN bus_stop BS2
ON BD.OriginCode = BS2.BusStopCode
WHERE BD.ServiceNo = '';

 /* 
Find bus route of SELECTED bus service
Example: WHERE BR.ServiceNo = '168';
can add AND BR.Direction = '1' or something similar if only want one route
*/
SELECT BR.ServiceNo, BR.Direction, BR.BusStopCode,
CONCAT(BS.RoadName,', ',BS.Description) AS BusStopDesc, BR.StopSequence
FROM bus_route BR 
JOIN bus_stop BS
ON BR.BusStopCode = BS.BusStopCode
WHERE BR.ServiceNo = ''
ORDER BY BR.ServiceNo,BR.Direction, BR.StopSequence;

 /* 
Find all the bus at SELECTED bus STOP with their destination
Example: WHERE BS.BusStopCode = '46069';
*/
SELECT BR.ServiceNo, BR.Direction, BD.DestinationCode,
CONCAT(BS2.RoadName,', ',BS2.Description) AS BusStopDesc
FROM bus_route BR 
JOIN bus_stop BS 
ON BR.BusStopCode = BS.BusStopCode
JOIN bus_direction BD 
ON BD.ServiceNo = BR.ServiceNo AND BD.Direction = BR.Direction
JOIN bus_stop BS2 
ON BD.DestinationCode = BS2.BusStopCode
WHERE BS.BusStopCode = '';

