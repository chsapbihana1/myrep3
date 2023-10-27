{{config(materialized ='table')}}

with cte1 as (
   select * From A.PUBLIC.superstore limit 4
)
select * From cte1