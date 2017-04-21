--truncate table adult_test
select * from adult_test where age = 0

select count(*) from adult
select count(*) from adult_test

select 'train',* from adult 
union all
select 'test',* from adult_test 
order by 1

select relationship,sex,count(*) from adult 
group by relationship,sex
order by 1,2

select occupation,count(*) from adult where [hours-per-week]>80 group by occupation


select distinct education,[education-num] from adult

select income,count(*) 
from adult 
where [education-num] = 13
and [marital-status]='married-civ-spouse'
and [native-country]='united-states'
group by income
with rollup

select count(*) from adult

select [capital-gain]
,[capital-loss]
,count(*)
from adult
where  [capital-gain]+[capital-loss]<>0
group by [capital-gain]
,[capital-loss]
order by 3 desc

select distinct income from adult


select sum(case when [capital-gain]>0 and [income] = '>50K' then 1 else 0 end) 
,sum(case when [capital-gain]>0 and [income] = '<=50K' then 1 else 0 end) 
from adult

select sum(case when [capital-gain]=0 and [income] = '>50K' then 1 else 0 end) 
,sum(case when [capital-gain]=0 and [income] = '<=50K' then 1 else 0 end) 
from adult