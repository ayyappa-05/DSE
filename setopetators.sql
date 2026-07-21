 1. SQL> select job,
  2  sum(decode(dept_id,10,salary)) as dept10,
  3  sum(decode(dept_id,20,salary)) as dept20,
  4  sum(decode(dept_id,30,salary)) as dept30,
  5  sum(salary) as total
  6  from emp1
  7  group by job;

JOB                      DEPT10     DEPT20     DEPT30      TOTAL
-------------------- ---------- ---------- ---------- ----------
clerk                     10000                            10000
manager                              20000                 20000
salesman                                        30000      30000


 2. select department_id,' ', sum(salary) from employees group by department_id
 
UNION
 
select department_id, job_id, sum(salary) from employees group by department_id, job_id;
 
 
department_id   '   '     sum(salary)
-----------     -----     -----------
04			  100000
05	        CLERK      250000
07
12
47

3. SQL> select job,dept_id
  2  from emp1
  3  where dept_id=20
  4  UNION ALL
  5  select job,dept_id
  6  from emp1
  7  where dept_id=10
  8  UNION ALL
  9  select job,dept_id
 10  from emp1
 11  where dept_id=30;

JOB                     DEPT_ID
-------------------- ----------
manager                      20
clerk                        10
salesman                     30