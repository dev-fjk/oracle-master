-- ||で列を結合可能(文字列結合のイメージでOK)
-- DISTINCT 重複行を削除する
SELECT
    EMPNO || ENAME || JOB
FROM
    EMP;

SELECT
    EMPNO || ENAME || 'さん' AS 名前
FROM
    EMP;

SELECT
    EMPNO || ENAME || 'さん' "名前"
FROM
    EMP;

SELECT
    DEPTNO
FROM
    EMP;

SELECT DISTINCT
    DEPTNO
FROM
    EMP;

SELECT DISTINCT
    JOB
FROM
    EMP;

SELECT DISTINCT
    DEPTNO,
    JOB
FROM
    EMP;

-- NULLも含まれる列
-- NULLはNULLで1レコードのみに集約されて出力される。
SELECT DISTINCT
    COMM
FROM
    EMP;