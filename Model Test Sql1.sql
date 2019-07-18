/****** 1. *******/
select * from employee

	select  ((replace(emp_id,'-','$'))+REPLICATE('*',10-len(emp_id)))
 
	  as Employee_ID,
	(fname+'-'+replace(minit,'','XX')+'-'+lname) as Employee_Name,
	FORMAT(hire_date,'d'
+IIF(DAY(hire_date) IN (1,21,31),'''st'''
,IIF(DAY(hire_date) IN (2,22),'''nd'''
,IIF(DAY(hire_date) IN (3,23),'''rd''','''th''')))
+' MMMM yyyy') As [Hire date] 
	from [dbo].[employee]


/*******2. **********/


select * from authors auth
where not exists

(

select 'x' from titles t  inner join titleauthor ta 
on t.title_id=ta.title_id and ta.au_id=auth.au_id

)





/*******3******/

select e.emp_id,e.fname,e.lname,pinfo.* from employee e inner join jobs j
on e.job_id=j.job_id and j.job_desc='Marketing Manager'
inner join  pub_info pinfo on pinfo.pub_id=e.pub_id
 
 /******4****/

 select   * from authors auth inner join 
titleauthor ta on auth.au_id=ta.au_id
where exists

(

select 'x' from titles t   
where t.title_id=ta.title_id  and t.type='psychology'

)


/*********5*******/

select t.title,p.* from titles t inner join publishers p
on t.pub_id=p.pub_id where Datepart(yy,pubdate)>1991


/**********6********/

select s.stor_id,s.stor_name,t.title as title_name,sa.qty from stores s
inner join sales sa on s.stor_id=sa.stor_id inner join  titles t on
t.title_id =sa.title_id order by t.title_id


/*******7*********/

--1
select t.title  from authors auth  inner join titleauthor ta  on
ta.au_id=auth.au_id inner join titles t  
on t.title_id=ta.title_id   and auth.contract=1

--2

select  auth.au_lname+' '+auth.au_fname  as 'author name' from authors auth  inner join titleauthor ta  on
ta.au_id=auth.au_id inner join titles t  
on t.title_id=ta.title_id   and auth.contract=1

--3


select case when ((DATALENGTH(city)-DATALENGTH(REPLACE(city,' ','')))/DATALENGTH(' ') +1)  =1 then  
(upper(SUBSTRING(city,1,2))+SUBSTRING(city,3,len(city))) else dbo.fnFirsties(city)  end from publishers


--4
SELECT  
      '('+substring([phone],1,3)+')'+substring([phone],4,len(phone))
	  
  FROM [pubs].[dbo].[authors]



  /*********8*****/
    select * from    publishers pub where exists(
 
  select ti.pub_id  from titles ti where ti.pub_id=pub.pub_id 
  group by ti.pub_id having count(*)>15)


  /**********9*********/


  CREATE FUNCTION [dbo].[fn_GetAlphabetsOnly](@input VARCHAR(max))

RETURNS VARCHAR(1000)

AS

BEGIN

WHILE PATINDEX('%[^a-z]%',@input) > 0

SET @input = STUFF(@input,PATINDEX('%[^a-z]%',@input),1,'')

RETURN @input

END



 --query
SELECT replace(au_id,'-',''),dbo.fn_GetAlphabetsOnly(address)
	  
  FROM [pubs].[dbo].[authors]



/******10*******/
	SELECT *
FROM employee e
WHERE hire_date IN
    (SELECT min(hire_date)
     FROM employee
     WHERE e.job_id = job_id )
ORDER BY hire_date asc;

/*********11*****/

select  t.title, pub.pub_name  as 'author name' from publishers pub   inner join
  titles t  
on t.pub_id=pub.pub_id   and pub.country='USA'