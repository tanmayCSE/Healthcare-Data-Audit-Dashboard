SELECT 
  ehr."Patient Name", 
  ehr."Provider Name", 
  ehr."Date of Service"::DATE AS ehr_date, 
  db.from_date_range AS db_date
FROM ehr_data AS ehr
JOIN db_data AS db
ON 
  ehr."Patient Name" = db."Patient Name" 
  AND ehr."Provider Name" = db."Provider Name"
  AND ABS(ehr."Date of Service"::DATE - db.from_date_range) <= 3;
