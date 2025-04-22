-- models/stg_raw__sales.sql

with source as (

    select * from {{ source('gz_raw_data', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,  -- Renamed here
        revenue,
        quantity

    from source

)

select * from renamed