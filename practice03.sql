--문제1
select e.employee_id 직원아이디
    ,e.first_name 이름
    ,d.department_name 부서명
    ,m.first_name 매니저이름
from employees e, employees m, departments d
where e.department_id = d.department_id
    and e.manager_id = m.employee_id;

--문제2
select region_name 지역이름
    ,country_name 나라이름
from regions r, countries c
where r.region_id = c.region_id
order by region_name, country_name;

--문제3
select d.department_id 부서번호
    ,d.department_name 부서이름
    ,e.first_name 매니저이름
    ,l.city 도시
    ,c.country_name 나라
    ,r.region_name 지역
from departments d, employees e, locations l, countries c, regions r
where e.employee_id = d.manager_id
    and d.location_id = l.location_id
    and l.country_id = c.country_id
    and c.region_id = r.region_id;

--문제4
select e.employee_id 
    ,e.first_name| |last_name
    ,e.job_id
    ,jh.job_id
from employees e, job_history jh, jobs j
where jh.job_id = j.job_id
    and j.job_id = e.job_id
    and j.job_title = 'Public Accountant';

--문제5
select employee_id
    , first_name
    , last_name
    , department_name
from employees e, departments d
where e.department_id = d.department_id
order by e.last_name;

--문제6
select e.employee_id
    ,e.first_name
from employees e, employees m
where m.employee_id = e.manager_id
    and e.hire_date<m.hire_date;
