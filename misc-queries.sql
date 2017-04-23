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

select income,count(*) from adult group by income
select income,count(*) from adult_test group by income

select [native-country] from adult
union 
select [native-country] from adult_test

create table country_group (country varchar(50), group_name varchar(50))
insert into country_group values ('','Missing')
insert into country_group values ('Guatemala','Latin-Carrib')
insert into country_group values ('El-Salvador','Latin-Carrib')
insert into country_group values ('Vietnam','Asia-Poor')
insert into country_group values ('Scotland','Europe')
insert into country_group values ('Italy','Europe')
insert into country_group values ('Columbia','Latin-Carrib')
insert into country_group values ('Jamaica','Latin-Carrib')
insert into country_group values ('Germany','Europe')
insert into country_group values ('Philippines','Asia-Poor')
insert into country_group values ('Cuba','Latin-Carrib')
insert into country_group values ('England','Europe')
insert into country_group values ('Hungary','Europe')
insert into country_group values ('Ecuador','Latin-Carrib')
insert into country_group values ('Laos','Asia-Poor')
insert into country_group values ('Mexico','Latin-Carrib')
insert into country_group values ('Honduras','Latin-Carrib')
insert into country_group values ('Nicaragua','Latin-Carrib')
insert into country_group values ('China','Asia-Rich')
insert into country_group values ('Trinadad&Tobago','Latin-Carrib')
insert into country_group values ('Peru','Latin-Carrib')
insert into country_group values ('India','Asia-Rich')
insert into country_group values ('Hong','Asia-Rich')
insert into country_group values ('Greece','Europe')
insert into country_group values ('Holand-Netherlands','Europe')
insert into country_group values ('Poland','Europe')
insert into country_group values ('South','North-America')
insert into country_group values ('Canada','North-America')
insert into country_group values ('Haiti','Latin-Carrib')
insert into country_group values ('Ireland','Europe')
insert into country_group values ('Thailand','Asia-Poor')
insert into country_group values ('France','Europe')
insert into country_group values ('Japan','Asia-Rich')
insert into country_group values ('Yugoslavia','Europe')
insert into country_group values ('Dominican-Republic','Latin-Carrib')
insert into country_group values ('Puerto-Rico','Latin-Carrib')
insert into country_group values ('Outlying-US(Guam-USVI-etc)','Latin-Carrib')
insert into country_group values ('Cambodia','Asia-Poor')
insert into country_group values ('Iran','Asia-Rich')
insert into country_group values ('Portugal','Europe')
insert into country_group values ('Taiwan','Asia-Rich')
insert into country_group values ('United-States','North-America')

select group_name,count(*) 
from adult a 
inner join country_group cg
on cg.country = a.[native-country]
group by group_name
with rollup


select distinct group_name from country_group

drop view v_train_trans
go
create view v_train_trans 
as 
SELECT [age]
      ,[workclass]
      --,[fnlwgt]
      --,[education]
      ,[education-num]
      ,[marital-status]
      ,[occupation]
      ,[relationship]
      ,[race]
      ,[sex]
      ,[capital-gain]
      ,[capital-loss]
      ,[hours-per-week]
      ,country_group.group_name as [native-country]
      ,[income]
	  ,'train' as type
  FROM [dbo].[adult]
  inner join country_group
  on country_group.country = [adult].[native-country]
  union all
  SELECT [age]
      ,[workclass]
      --,[fnlwgt]
      --,[education]
      ,[education-num]
      ,[marital-status]
      ,[occupation]
      ,[relationship]
      ,[race]
      ,[sex]
      ,[capital-gain]
      ,[capital-loss]
      ,[hours-per-week]
      ,country_group.group_name as [native-country]
      ,[income]
	  ,'test' as type
  FROM [dbo].[adult_test]
  inner join country_group
  on country_group.country = [adult_test].[native-country]
GO

set nocount on
select [age]
      ,[workclass]
      ,[education-num]
      ,[marital-status]
      ,[occupation]
      ,[relationship]
      ,[race]
      ,[sex]
      ,[capital-gain]
      ,[capital-loss]
      ,[hours-per-week]
      ,[native-country]
      ,[income] 
from v_train_trans
where type = 'train'


update adult_test set income = '<=50K' where income = '<=50K.'
update adult_test set income = '>50K' where income = '>50K.'



--begin [native-country]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [native-country],100*count(*)/@gt50 as '>50K' into #t1 from adult_test where [income] = '>50K' group by  [native-country]
select [native-country],100*count(*)/@ls50 as '<=50K' into #t2 from adult_test where [income] = '<=50K' group by  [native-country]

select * from
#t1 t1
full outer join #t2 t2
on t1.[native-country] = t2.[native-country]
order by t1.[native-country]

drop table #t1
drop table #t2
--end [native-country]
