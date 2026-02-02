-- Summarizes workload per cleaner based on units, bookings, and guest volume

SELECT
    c.CLEANERID,
    COUNT(DISTINCT u.UNITID) AS Units_Assigned,
    COUNT(r.STARTDATE) AS Num_Bookings,
    COALESCE(SUM(r.NUMGUESTS), 0) AS Total_Guests
FROM CLEANER c
JOIN UNIT u
    ON c.CLEANERID = u.CLEANERID
LEFT JOIN RENTS r
    ON u.UNITID = r.UNITID
GROUP BY c.CLEANERID
ORDER BY Num_Bookings DESC, Total_Guests DESC;
