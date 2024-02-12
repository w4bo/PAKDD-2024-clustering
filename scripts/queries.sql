select "sensorsNumber", count(*)
from (select distinct "refStructureName", "companyName", "fieldName", "plantNum", "plantRow", "sensorsNumber" from transcoding_field) t
group by "sensorsNumber";