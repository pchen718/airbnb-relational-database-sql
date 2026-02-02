-- Lists all completed bookings with renter and unit details

SELECT
    r.FIRSTNAME,
    r.LASTNAME,
    u.STREET,
    u.CITY,
    t.STARTDATE,
    t.ENDDATE,
    t.NUMGUESTS
FROM RENTER r
JOIN RENTS t 
    ON r.RENTERID = t.RENTERID 
JOIN UNIT u 
    ON t.UNITID = u.UNITID     
ORDER BY t.STARTDATE DESC;
