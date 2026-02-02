-- Lists every unit and flags whether a cleaner is assigned

SELECT
    U.UNITID,
    U.STREET,
    U.CITY,
    U.STATE,
    U.CLEANERID,
    CASE 
        WHEN U.CLEANERID IS NULL THEN 'NEEDS CLEANER'
        ELSE 'ASSIGNED'
    END AS CleanerStatus
FROM UNIT U
ORDER BY CleanerStatus DESC, U.UNITID;
