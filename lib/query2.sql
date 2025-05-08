SELECT DISTINCT
  ehr."Patient Name", 
  ehr."Provider Name", 
  TO_CHAR(ehr."Date of Service"::DATE, 'YYYY-MM-DD') AS formatted_date
FROM 
  ehr_data AS ehr
LEFT JOIN db_data AS db
ON 
  ehr."Patient Name" = db."Patient Name" 
  AND ehr."Provider Name" = db."Provider Name"
  AND ehr."Date of Service"::DATE = db.from_date_range
WHERE db."Patient Name" IS NULL;