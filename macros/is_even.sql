{% test is_even(model, column_name) %}

with validation as (

    select
        {{ column_name }} as city

    from {{ model }}

), 

validation_errors as (

    select
        city

    from validation
    -- if this is true, then even_field is actually odd!
    where city = 'jalgaon'

)

select *
from validation_errors

{% endtest %}