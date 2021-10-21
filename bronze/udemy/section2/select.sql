-- 7 演習 加算　減算
SELECT ENAME, SAL, SAL + 100
FROM EMP;

SELECT ENAME, SAL, COMM, SAL + COMM
FROM EMP;

SELECT ENAME, HIREDATE, HIREDATE - 10
FROM EMP;

SELECT ENAME, SAL, SAL * 1.05
FROM EMP;

-- Dual句 Oracle限定のダミーテーブル 演算式の処理確認などに使用する
SELECT 1 + 2 + 3 + 4 + 5, 100 / 2
FROM DUAL;

-- 基礎文法系
select count(*)
from EMP;

SELECT *
FROM EMP;

-- AS句 列別名
-- Spaceや 記号を混在させたい場合は　ダブルクォートで囲む
select EMPNO,
       ENAME         AS "従業員 名",
       JOB           AS 職業,
       MGR,
       HIREDATE,
       HIREDATE - 10 AS "入社日-10日",
       SAL,
       COMM,
       DEPTNO
FROM EMP;

select EMPNO,
       ENAME
FROM EMP;