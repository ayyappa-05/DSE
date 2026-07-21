1.
SQL> DESC emply;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EID                                                NUMBER
 ENAME                                              VARCHAR2(20)
 SALARY                                             NUMBER
 ADDRESS                                            VARCHAR2(20)
 DEPT                                               VARCHAR2(20)

SQL> SELECT *
  2  FROM emply;

       EID ENAME                    SALARY ADDRESS
---------- -------------------- ---------- --------------------
DEPT
--------------------
       201 Bharath                  18000 Guntur
IT

       202 Kiran                    25000 Vijayawada
CSE

       203 Sai                      32000 Hyderabad
ECE

       EID ENAME                    SALARY ADDRESS
---------- -------------------- ---------- --------------------
DEPT
--------------------
       204 Anil                     41000 Tirupati
MECH

       205 Naveen                   52000 Visakhapatnam
EEE

       206 Akash                    65000 Nellore
MBA


2.
SQL> DESC department;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 D_ID                                               NUMBER
 D_NAME                                             VARCHAR2(20)
 D_ADDRESS                                          VARCHAR2(20)

SQL> SELECT *
  2  FROM department;

      D_ID D_NAME               D_ADDRESS
---------- -------------------- --------------------
        11 Bharath              Guntur
        12 Kiran                Vijayawada


3.
SQL> SELECT ename, dept_id
  2  FROM emp1
  3  WHERE eid = 201;

ENAME                DEPT_ID
-------------------- -------
Bharath                    10