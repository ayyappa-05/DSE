SET SERVEROUTPUT ON;

ACCEPT P_EMPNO NUMBER PROMPT 'Enter Employee Number: '

DECLARE
    V_ENAME EMP.ENAME%TYPE;
    V_NETSAL NUMBER;
BEGIN
    SELECT ENAME, SAL + NVL(COMM,0)
    INTO V_ENAME, V_NETSAL
    FROM EMP
    WHERE EMPNO = &P_EMPNO;

    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || V_ENAME);
    DBMS_OUTPUT.PUT_LINE('Net Salary    : ' || V_NETSAL);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee Not Found');
END;
/

SET SERVEROUTPUT ON;

ACCEPT P_EMPNO NUMBER PROMPT 'Enter Employee Number: '
ACCEPT P_ENAME CHAR PROMPT 'Enter Employee Name: '
ACCEPT P_SAL NUMBER PROMPT 'Enter Salary: '

DECLARE
    V_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO V_COUNT
    FROM EMP
    WHERE EMPNO=&P_EMPNO;

    IF V_COUNT=0 THEN

        INSERT INTO EMP(EMPNO,ENAME,SAL)
        VALUES(&P_EMPNO,'&P_ENAME',&P_SAL);

        DBMS_OUTPUT.PUT_LINE('Employee Inserted Successfully');

    ELSE

        UPDATE EMP
        SET ENAME='&P_ENAME',
            SAL=&P_SAL
        WHERE EMPNO=&P_EMPNO;

        DBMS_OUTPUT.PUT_LINE('Employee Updated Successfully');

    END IF;

    COMMIT;
END;
/


SET SERVEROUTPUT ON;

ACCEPT NUM NUMBER PROMPT 'Enter Number: '

DECLARE
    N NUMBER:=&NUM;
BEGIN

    IF MOD(N,2)=0 THEN
        DBMS_OUTPUT.PUT_LINE(N||' IS EVEN');
    ELSE
        DBMS_OUTPUT.PUT_LINE(N||' IS ODD');
    END IF;

END;
/

SET SERVEROUTPUT ON;

ACCEPT P_EMPNO NUMBER PROMPT 'Enter Employee Number: '

DECLARE
    V_DEPTNO EMP.DEPTNO%TYPE;
BEGIN

    SELECT DEPTNO
    INTO V_DEPTNO
    FROM EMP
    WHERE EMPNO=&P_EMPNO;

    IF V_DEPTNO=10 THEN

        UPDATE EMP
        SET SAL=SAL+(SAL*10/100)
        WHERE EMPNO=&P_EMPNO;

    ELSIF V_DEPTNO=20 THEN

        UPDATE EMP
        SET SAL=SAL+(SAL*15/100)
        WHERE EMPNO=&P_EMPNO;

    ELSE

        UPDATE EMP
        SET SAL=SAL+NVL(COMM,0)
        WHERE EMPNO=&P_EMPNO;

    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary Updated Successfully');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee Not Found');
END;
/

CREATE TABLE MYTABLE1
(
    RESULT NUMBER
);

SET SERVEROUTPUT ON;

DECLARE
    I NUMBER:=1;
BEGIN

    WHILE I<=10 LOOP

        IF I<>6 AND I<>8 THEN
            INSERT INTO MYTABLE1
            VALUES(I);
        END IF;

        I:=I+1;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Records Inserted Successfully');

END;
/

