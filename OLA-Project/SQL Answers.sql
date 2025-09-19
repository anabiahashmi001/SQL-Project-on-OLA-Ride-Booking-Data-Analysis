-- Retrieve all successful bookings:
-- CREATE VIEW Successful_BOOKINGS AS 
SELECT * FROM bookings 
WHERE Booking_Status = 'success';
-- Find the average ride distance for each vehicle type:
-- CREATE VIEW Ride_Distance_For_Each_Vehicle AS
SELECT Vehicle_Type, AVG(Ride_distance) AS avg_distance 
FROM bookings
GROUP BY Vehicle_Type;
-- Get the total number of cancelled rides by customers:
-- CREATE VIEW Canacelled_Rides_By_Customers AS 
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Canceled by Customer'; 
-- List the top 5 customers who booked the highest number of rides:
-- CREATE VIEW Top_5_Customers AS 
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;
-- Get the number of rides cancelled by drivers due to personal and car-related issues:
-- CREATE VIEW Canceled_Rides_by_Driver AS
SELECT COUNT(*) FROM bookings WHERE Canceled_Rides_by_Driver =  'Personal & Car related issue';
-- Find the maximum and minimum driver ratings for Prime Sedan bookings:
-- CREATE VIEW maximum_minimum_driver_ratings AS
SELECT MAX(Driver_Ratings) AS max_rating , MIN(Driver_Ratings) AS min_rating FROM bookings
WHERE Vehicle_Type = 'Prime Sedan'; 
-- Retrieve all rides where payment was made using UPI:
-- CREATE VIEW Payment_was_made_using_UPI AS
SELECT Vehicle_Type,Payment_Method FROM bookings WHERE Payment_Method = "UPI";
-- Find the average customer rating per vehicle type:
-- CREATE VIEW average_customer_rating_per_vehicle_type AS
SELECT Vehicle_Type , AVG(Customer_rating) AS avg_customer_reating FROM bookings
GROUP BY Vehicle_Type;
-- Calculate the total booking value of rides completed successfully:
-- CREATE VIEW rides_completed_successfully AS
SELECT SUM(Booking_Value) AS total_successful_value FROM bookings WHERE Booking_Status = 'Success';
-- List all incomplete rides along with the reason
-- CREATE view Incomplete_Rides_Reason AS
SELECT Booking_ID,Incomplete_Rides_Reason FROM bookings
WHERE Incomplete_Rides = 'Yes';