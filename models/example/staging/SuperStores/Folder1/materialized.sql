{{config(materialized='table')}}

with cte2 as (
   select distinct region From superstore
)
select * From cte2