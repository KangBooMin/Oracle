--문제1
select first_name| |last_name "이름"
    ,salary "월급"
    ,phone_number "전화번호"
    ,hire_date "입사일"
from EMPLOYEES
order by hire_date asc;

--문제2
select job_title, max_salary
from jobs
order by max_salary desc;

--문제3
select count(first_name)
from employees
where manager_id is null;

--문제4
select job_title, max_salary
from jobs
order by job_title desc, max_salary desc;

--문제5
select count(department_id)
from departments;

--문제6
select department_name
from departments
order by length(department_name) desc;

--문제7
select count(manager_id)
from departments
where manager_id is null;

--문제8
select upper(region_name)
from regions
where region_id is not null
order by region_name asc;

--문제9 
select region_name, count(region_name) 
from regions group by region_name
order by length(region_name);

--문제10
select lower(city)
from locations
order by city asc;