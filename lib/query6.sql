SELECT 
  ehr."Patient Name", 
  ehr."Provider Name", 
  ehr."Date of Service", 
  ehr."CPT Code", 
  db.expanded_cpt AS db_cpt
FROM ehr_data AS ehr
LEFT JOIN (
  SELECT 
    "Patient Name", 
    "Provider Name", 
    "from_date_range", 
    UNNEST(STRING_TO_ARRAY(REPLACE(REPLACE(cpt_codes, '{', ''), '}', ''), ',')) AS expanded_cpt
  FROM db_data
) AS db
ON ehr."Patient Name" = db."Patient Name"
AND ehr."Provider Name" = db."Provider Name"
AND ehr."Date of Service"::DATE = db."from_date_range"
AND ehr."CPT Code" = db.expanded_cpt
WHERE db.expanded_cpt IS NULL;