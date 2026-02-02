-- Identifies renters who have booked more than one unit (repeat customers)

SELECT
    u.UNITID,
    r.RENTERID
FROM UNIT u
JOIN RENTS r
    ON u.UNITID = r.UNITID
WHERE r.RENTERID IN (
    SELECT RENTERID
    FROM RENTS
    GROUP BY RENTERID
    HAVING COUNT(DISTINCT UNITID) >= 2
)
ORDER BY r.RENTERID;
