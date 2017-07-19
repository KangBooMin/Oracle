--문제1
select e.first_name||last_name, e.salary, d.department_name, e.hire_date
from employees e, departments d
where e.department_id = d.department_id
order by hire_date desc;

--문제2
select a.employee_id, a.last_name, a.salary 
from employees a, (select department_id, avg(salary) avgs 
            from employees 
            group by department_id) b 
where a.department_id = b.department_id
    and a.salary > b.avgs; 

--문제3
select employee_id, first_name, last_name, job_title, salary, j.job_id
from employees e, jobs j, (select rownum, department_id, avgs
                            from (select department_id, avg(salary) avgs
                            from employees
                            group by department_id
                            order by avg(salary) desc)
                            where rownum <=1) d
where e.department_id = d.department_id
    and e.job_id = j.job_id;

--문제4
select department_name
from departments d, (select department_id
                    from (select department_id, avg(salary) 
                    from employees
                    group by department_id
                    order by avg(salary) desc)
                    where rownum <=1) e
where e.department_id = d.department_id;

--문제5
select region_name
from departments d, locations l, countries c, regions r
    ,(select department_id
      from (select department_id, avg(salary) 
            from employees
            group by department_id
            order by avg(salary) desc)
      where rownum <=1) e
where e.department_id = d.department_id
and d.location_id = l.location_id
and l.country_id = c.country_id
and c.region_id = r.region_id;

--문제6
select job_id
from (select job_id, avg(salary) 
    from employees
    group by job_id
    order by avg(salary) desc)
where rownum <=1;