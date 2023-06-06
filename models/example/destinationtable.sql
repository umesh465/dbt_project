-- {{ config(materialized="incremental") }}

-- select *
-- from sourcettable
-- where order_ingestion_datetime > (select max(order_ingestion_datetime) from {{ this }})

-- {{ config(materialized="incremental") }}

-- select *
-- from sourcettable
-- where TO_DATE(order_ingestion_datetime) = current_date()

-- If you want to insert data from today and yesterday, you can write

{{ config(materialized="incremental") }}

select * from sourcettable
where TO_DATE(order_ingestion_datetime) in(current_date(),DATEADD(day,-1,current_date()))


