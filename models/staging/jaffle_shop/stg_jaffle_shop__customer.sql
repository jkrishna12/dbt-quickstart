with 

source as (

    select * from {{ source('jaffle_shop', 'customer') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        _etl_loaded_date

    from source

)

select * from renamed