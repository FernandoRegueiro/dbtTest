with customers AS (
    
    select * from {{ source('public', 'customer') }}

)
select * from customers