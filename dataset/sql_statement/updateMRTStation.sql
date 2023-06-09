ALTER TABLE MRT_Station ADD COLUMN 
BusStopCode INT AFTER MRTLine;

ALTER TABLE MRT_Station ADD FOREIGN KEY (BusStopCode)
REFERENCES Bus_Stop (BusStopCode);

UPDATE MRT_Station SET BusStopCode = 54009
WHERE StnCode = "NS16";
UPDATE MRT_Station SET BusStopCode = 84009
WHERE StnCode = "EW5";
UPDATE MRT_Station SET BusStopCode = 53009
WHERE StnCode = "CC15";
UPDATE MRT_Station SET BusStopCode = 53009
WHERE StnCode = "NS17";
UPDATE MRT_Station SET BusStopCode = 22009
WHERE StnCode = "EW27";
UPDATE MRT_Station SET BusStopCode = 43009
WHERE StnCode = "NS2";
UPDATE MRT_Station SET BusStopCode = 17009
WHERE StnCode = "EW23";
UPDATE MRT_Station SET BusStopCode = 82009
WHERE StnCode = "EW7";
UPDATE MRT_Station SET BusStopCode = 14009
WHERE StnCode = "CC29";
UPDATE MRT_Station SET BusStopCode = 14009
WHERE StnCode = "NE1";
UPDATE MRT_Station SET BusStopCode = 64009
WHERE StnCode = "NE14";
UPDATE MRT_Station SET BusStopCode = 24009
WHERE StnCode = "EW29";
UPDATE MRT_Station SET BusStopCode = 28009
WHERE StnCode = "NS1";
UPDATE MRT_Station SET BusStopCode = 28009
WHERE StnCode = "EW24";
UPDATE MRT_Station SET BusStopCode = 77009
WHERE StnCode = "EW1";
UPDATE MRT_Station SET BusStopCode = 65009
WHERE StnCode = "NE17";
UPDATE MRT_Station SET BusStopCode = 65009
WHERE StnCode = "PTC";
UPDATE MRT_Station SET BusStopCode = 66009
WHERE StnCode = "CC13";
UPDATE MRT_Station SET BusStopCode = 66009
WHERE StnCode = "NE12";
UPDATE MRT_Station SET BusStopCode = 58009
WHERE StnCode = "NS11";
UPDATE MRT_Station SET BusStopCode = 67009
WHERE StnCode = "NE16";
UPDATE MRT_Station SET BusStopCode = 67009
WHERE StnCode = "STC";
UPDATE MRT_Station SET BusStopCode = 75009
WHERE StnCode = "DT32";
UPDATE MRT_Station SET BusStopCode = 75009
WHERE StnCode = "EW2";
UPDATE MRT_Station SET BusStopCode = 52009
WHERE StnCode = "NS19";
UPDATE MRT_Station SET BusStopCode = 46009
WHERE StnCode = "NS9";
UPDATE MRT_Station SET BusStopCode = 46009
WHERE StnCode = "TE2";
UPDATE MRT_Station SET BusStopCode = 55509
WHERE StnCode = "NS15";
UPDATE MRT_Station SET BusStopCode = 59009
WHERE StnCode = "NS13";
UPDATE MRT_Station SET BusStopCode = 45009
WHERE StnCode = "BP6";
UPDATE MRT_Station SET BusStopCode = 45009
WHERE StnCode = "DT1";
UPDATE MRT_Station SET BusStopCode = 44009
WHERE StnCode = "BP1";
UPDATE MRT_Station SET BusStopCode = 44009
WHERE StnCode = "NS4";
