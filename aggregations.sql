1.
SQL> SELECT MAX(salary) AS MAX_SALARY,
  2  MIN(salary) AS MIN_SALARY,
  3  SUM(salary) AS TOTAL,
  4  AVG(salary) AS AVG_SALARY
  5  FROM emp1;

MAX_SALARY MIN_SALARY      TOTAL AVG_SALARY
---------- ---------- ---------- ----------
     45000       1200      98700      19740


2.
SQL> SELECT ROUND(MAX(salary)),
  2  ROUND(MIN(salary)),
  3  ROUND(SUM(salary)),
  4  ROUND(AVG(salary))
  5  FROM emp1;

ROUND(MAX(SALARY)) ROUND(MIN(SALARY)) ROUND(SUM(SALARY)) ROUND(AVG(SALARY))
------------------ ------------------ ------------------ ------------------
             45000               1200              98700              19740


3.
SQL> SELECT MIN(salary),
  2  MAX(salary),
  3  SUM(salary),
  4  AVG(salary)
  5  FROM emp1
  6  GROUP BY job;

MIN(SALARY) MAX(SALARY) SUM(SALARY) AVG(SALARY)
----------- ----------- ----------- -----------
       1200        1800        3000        1500
      22000       22000       22000       22000
      45000       45000       45000       45000
       2500        2500        2500        2500


4.
SQL> SELECT COUNT(*)
  2  FROM emp1
  3  WHERE job = 'clerk';

  COUNT(*)
----------
         3


5.
SQL> SELECT COUNT(*) AS "NUMBER OF MANAGERS"
  2  FROM emp1
  3  WHERE job = 'manager';

NUMBER OF MANAGERS
------------------
                 2


6.
SQL> SELECT MAX(salary) - MIN(salary) AS DIFFERENCE
  2  FROM emp1;

DIFFERENCE
----------
     43800