SELECT 
    "Patient Name",
    "Date of Service",
    "CPT Code",
    COUNT(*) AS duplicate_count
FROM 
    ehr_data
GROUP BY 
    "Patient Name",
    "Date of Service",
    "CPT Code"
HAVING 
    COUNT(*) > 1
ORDER BY 
    duplicate_count DESC;
