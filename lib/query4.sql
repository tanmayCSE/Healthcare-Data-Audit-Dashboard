SELECT DISTINCT 
  ehr."Provider Name" AS ehr_provider, 
  db."Provider Name" AS db_provider
FROM ehr_data AS ehr
FULL OUTER JOIN db_data AS db
ON ehr."Provider Name" = db."Provider Name"
WHERE db."Provider Name" IS NULL OR ehr."Provider Name" IS NULL;