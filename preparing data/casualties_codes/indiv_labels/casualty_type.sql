
ALTER TABLE dbo.casualties
ALTER COLUMN casualty_type VARCHAR(60)

UPDATE UK_accidents.dbo.casualties
SET casualty_type = CASE WHEN casualty_type = 0    THEN REPLACE(casualty_type, 0  , 'Pedestrian')
                         WHEN casualty_type = 1    THEN REPLACE(casualty_type, 1  , 'Cyclist')
						 WHEN casualty_type = 2    THEN REPLACE(casualty_type, 2  , 'Motorcycle 50cc and under rider or passenger')
						 WHEN casualty_type = 3    THEN REPLACE(casualty_type, 3  , 'Motorcycle 125cc and under rider or passenger')
						 WHEN casualty_type = 4    THEN REPLACE(casualty_type, 4  , 'Motorcycle over 125cc and up to 500cc rider or  passenger')
						 WHEN casualty_type = 5    THEN REPLACE(casualty_type, 5  , 'Motorcycle over 500cc rider or passenger')
						 WHEN casualty_type = 8    THEN REPLACE(casualty_type, 8  , 'Taxi/Private hire car occupant')
						 WHEN casualty_type = 9    THEN REPLACE(casualty_type, 9  , 'Car occupant')
						 WHEN casualty_type = 10   THEN REPLACE(casualty_type, 10 , 'Minibus (8 - 16 passenger seats) occupant')
						 WHEN casualty_type = 11   THEN REPLACE(casualty_type, 11 , 'Bus or coach occupant (17 or more pass seats)')
						 WHEN casualty_type = 16   THEN REPLACE(casualty_type, 16 , 'Horse rider')
						 WHEN casualty_type = 17   THEN REPLACE(casualty_type, 17 , 'Agricultural vehicle occupant')
						 WHEN casualty_type = 18   THEN REPLACE(casualty_type, 18 , 'Tram occupant')
						 WHEN casualty_type = 19   THEN REPLACE(casualty_type, 19 , 'Van / Goods vehicle (3.5 tonnes mgw or under) occupant')
						 WHEN casualty_type = 20   THEN REPLACE(casualty_type, 20 , 'Goods vehicle (over 3.5t. and under 7.5t.) occupant')
						 WHEN casualty_type = 21   THEN REPLACE(casualty_type, 21 , 'Goods vehicle (7.5 tonnes mgw and over) occupant')
						 WHEN casualty_type = 22   THEN REPLACE(casualty_type, 22 , 'Mobility scooter rider')
						 WHEN casualty_type = 23   THEN REPLACE(casualty_type, 23 , 'Electric motorcycle rider or passenger')
						 WHEN casualty_type = 90   THEN REPLACE(casualty_type, 90 , 'Other vehicle occupant')
						 WHEN casualty_type = 97   THEN REPLACE(casualty_type, 97 , 'Motorcycle - unknown cc rider or passenger')
						 WHEN casualty_type = 98   THEN REPLACE(casualty_type, 98 , 'Goods vehicle (unknown weight) occupant')
						 WHEN casualty_type = 99   THEN REPLACE(casualty_type, 99 , 'Unknown vehicle type (self rep only)')
						 WHEN casualty_type = 103  THEN REPLACE(casualty_type, 103, 'Motorcycle - Scooter (1979-1998)')
                         WHEN casualty_type = 104  THEN REPLACE(casualty_type, 104, 'Motorcycle (1979-1998)')
						 WHEN casualty_type = 105  THEN REPLACE(casualty_type, 105, 'Motorcycle - Combination (1979-1998)')
						 WHEN casualty_type = 106  THEN REPLACE(casualty_type, 106, 'Motorcycle over 125cc (1999-2004)')
						 WHEN casualty_type = 108  THEN REPLACE(casualty_type, 108, 'Taxi (excluding private hire cars) (1979-2004)')
						 WHEN casualty_type = 109  THEN REPLACE(casualty_type, 109, 'Car (including private hire cars) (1979-2004)')
						 WHEN casualty_type = 110  THEN REPLACE(casualty_type, 110, 'Minibus/Motor caravan (1979-1998)')
						 WHEN casualty_type = 113  THEN REPLACE(casualty_type, 113, 'Goods over 3.5 tonnes (1979-1998)')
						 END