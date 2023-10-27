with 
cte3 as (select * From {{ref("EMP")}} ),
cte4 as (select * From {{ref("DEPT")}})
select dname,  sum(sal) From cte3 ,  cte4   
where cte3.DEPTNO = cte4.DDEPTNO
group by dname
 
 