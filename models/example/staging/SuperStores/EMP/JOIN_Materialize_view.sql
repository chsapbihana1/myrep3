{{config(materialized ='table')}}
with 
cte3 as (select * From {{ref("EMP")}} ),
cte4 as (select * From {{ref("DEPT")}})
select dname, SUM(sal) From cte3 inner join  cte4 on 
cte3.DEPTNO = cte4.DDEPTNO
group by dname
 