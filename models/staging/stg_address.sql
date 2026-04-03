with addresses AS (
    
    select * from {{ source('public', 'address') }}

)
select * from addresses