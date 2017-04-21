

--begin education-num
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [workclass],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [workclass]
select [workclass],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [workclass]

select * from
#t1 t1
full outer join #t2 t2
on t1.workclass = t2.workclass

drop table #t1
drop table #t2
--end workclass

--begin education num
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [education-num],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [education-num]
select [education-num],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [education-num]

select * from
#t1 t1
full outer join #t2 t2
on t1.[education-num] = t2.[education-num]
order by cast(t1.[education-num] as int)

drop table #t1
drop table #t2
--end education num

--begin [marital-status]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [marital-status],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [marital-status]
select [marital-status],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [marital-status]

select * from
#t1 t1
full outer join #t2 t2
on t1.[marital-status] = t2.[marital-status]
order by t1.[marital-status]

drop table #t1
drop table #t2
--end [marital-status]

--begin [occupation]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [occupation],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [occupation]
select [occupation],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [occupation]

select * from
#t1 t1
full outer join #t2 t2
on t1.[occupation] = t2.[occupation]
order by t1.[occupation]

drop table #t1
drop table #t2
--end [occupation]

--begin [relationship]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [relationship],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [relationship]
select [relationship],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [relationship]

select * from
#t1 t1
full outer join #t2 t2
on t1.[relationship] = t2.[relationship]
order by t1.[relationship]

drop table #t1
drop table #t2
--end [relationship]

--begin [race]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [race],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [race]
select [race],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [race]

select * from
#t1 t1
full outer join #t2 t2
on t1.[race] = t2.[race]
order by t1.[race]

drop table #t1
drop table #t2
--end [race]

--begin [sex]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [sex],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [sex]
select [sex],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [sex]

select * from
#t1 t1
full outer join #t2 t2
on t1.[sex] = t2.[sex]
order by t1.[sex]

drop table #t1
drop table #t2
--end [sex]

--begin [native-country]
declare @gt50 money
declare @ls50 money
select @gt50 = count(*) from adult where [income] = '>50K'
select @ls50 = count(*) from adult where [income] = '<=50K'

select [native-country],100*count(*)/@gt50 as '>50K' into #t1 from adult where [income] = '>50K' group by  [native-country]
select [native-country],100*count(*)/@ls50 as '<=50K' into #t2 from adult where [income] = '<=50K' group by  [native-country]

select * from
#t1 t1
full outer join #t2 t2
on t1.[native-country] = t2.[native-country]
order by t1.[native-country]

drop table #t1
drop table #t2
--end [native-country]