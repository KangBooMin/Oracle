--문제1
select max(salary) 최대급여, min(salary) 최저급여
from employees;

--문제2
select max(hire_date)
from employees;

--문제3
select department_id 부서
    ,round(avg(nvl(salary,0)),1) 평균급여
    ,max(salary) 최대급여
    ,min(salary) 최저급여
from employees
group by department_id
order by avg(salary), max(salary), min(salary) asc;

--문제4
select job_id 업무
    ,round(avg(nvl(salary,0)),1) 평균급여
    ,max(salary) 최대급여
    ,min(salary) 최저급여
from employees
group by job_id
order by avg(salary), max(salary), min(salary) asc;

--문제5
select min(hire_date)
from employees;

--문제6
select department_id 부서
    ,round(avg(nvl(salary,0)),0) 평균급여
    ,min(salary) 최저급여
    ,round(avg(nvl(salary,0)),1)-min(salary) "평균급여-최저급여"
from employees
group by department_id
having round(avg(nvl(salary,0)),1)-min(salary)<2000
order by round(avg(nvl(salary,0)),0)-min(salary) desc;

--문제7
select job_id 업무
    ,max(salary)-min(salary) "최고급여-최저급여"
from employees
group by job_id
order by max(salary)-min(salary) desc;