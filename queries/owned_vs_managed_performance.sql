-- Compares booking activity for owned vs managed units

SELECT
    u.UNITID,
    u.STREET,
    CASE 
        WHEN m.UNITID IS NOT NULL THEN 'Managed'
        ELSE 'Owned'
    END AS UnitType,
    COUNT(r.UNITID) AS TotalBookings,
    COALESCE(SUM(DATEDIFF(r.ENDDATE, r.STARTDATE)), 0) AS TotalNights
FROM UNIT u
LEFT JOIN MANAGED m 
    ON u.UNITID = m.UNITID
LEFT JOIN RENTS r 
    ON u.UNITID = r.UNITID
GROUP BY 
    u.UNITID,
    u.STREET,
    UnitType
ORDER BY 
    TotalBookings DESC,
    u.UNITID;
