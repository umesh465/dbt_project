{{ config(
    materialized='incremental'
    , incremental_strategy='merge'
    , unique_key='order_id'
)}}

select *
from sourcettable
{% if is_incremental() %}
    where extract(date from order_ingestion_datetime) in ({{ var('today_and_last_week') | join(',') }})
{% endif %}