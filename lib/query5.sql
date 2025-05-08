SELECT 
  "Patient Name", 
  "Provider Name", 
  "from_date_range", 
  UNNEST(STRING_TO_ARRAY(REPLACE(REPLACE(cpt_codes, '{', ''), '}', ''), ',')) AS expanded_cpt
FROM db_data;
