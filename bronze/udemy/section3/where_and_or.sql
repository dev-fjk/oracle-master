-- andが優先され　先に評価される。
SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER'
  AND
    DEPTNO = 10;

-- andが優先され　先に評価される。
SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER'
  OR
    DEPTNO = 10;

-- 以下の場合　MANAGERじゃなくても DEPT NO が 10 or 20の場合は出力されてしまう。
SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER'
  AND
    DEPTNO = 10
  OR
    DEPTNO = 20;

SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER'
  AND
    (DEPTNO = 10 OR DEPTNO = 20);
