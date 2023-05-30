-- with source_sales as (
--     select a.id,a.name from 
--     select * from {{ source('source_student','demo')}} as a
--     INNER JOIN {{ source('source_student','demo2')}} as b on a.id = b.id
    
-- )
-- select * from source_sales
with source_sales as (
SELECT a.id, a.name
FROM {{ source("source_student", "demo") }} as a
INNER JOIN {{ source("source_student", "demo2") }} as b ON a.id = b.id

)
select *
from source_sales
