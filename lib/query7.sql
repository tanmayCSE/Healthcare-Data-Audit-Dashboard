SELECT 
  ehr."Provider Name", 
  COUNT(*) AS missing_encounters
FROM ehr_data AS ehr
LEFT JOIN db_data AS db
ON ehr."Patient Name" = db."Patient Name"
AND ehr."Provider Name" = db."Provider Name"
AND ehr."Date of Service"::DATE = db.from_date_range
WHERE db."Patient Name" IS NULL
GROUP BY ehr."Provider Name"
ORDER BY missing_encounters DESC;