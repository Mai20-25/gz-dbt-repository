-- models/stg_raw__product.sql

with source as (

    select * from {{ source('gz_raw_data', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        cast(purchSE_PRICE as FLOAT64) as purchase_price

    from source

)

select * from renamed