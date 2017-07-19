--문제1
select first_name, salary
from employees
where salary < (select avg(salary)
                from employees)
order by salary desc;   

--문제2
select first_name, salary, department_id
from employees
where (department_id, salary) in (select department_id, max(salary)
                                 from employees
                                 group by department_id)
order by salary desc;

--문제3
select j.job_title, sum(e.salary)
from jobs j, employees e
where j.job_id = e.job_id
group by job_title
order by sum(e.salary) desc;

--문제4
select a.employee_id, a.last_name, a.salary 
from employees a, (select department_id, avg(salary) avgs 
            from employees 
            group by department_id) b 
where a.department_id = b.department_id
    and a.salary > b.avgs; 