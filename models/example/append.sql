{{ config(
    materialized='incremental'
    , incremental_strategy='append'
)}}

select *
from sourcettable
{% if is_incremental() %}
    where extract(date from order_ingestion_datetime) in ({{ var('today_and_last_week') | join(',') }})
{% endif %}