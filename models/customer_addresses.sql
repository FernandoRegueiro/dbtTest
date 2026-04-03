with customer_addresses as (

    select 
        c.customer_id,
        c.store_id,
        c.first_name,
        c.last_name,
        c.email,
        c.active,
        a.address,
        a.address2,
        a.postal_code
    from {{ ref('stg_customer') }} c
    inner join {{ ref('stg_address') }} a on a.address_id = c.address_id

)
select * from customer_addresses